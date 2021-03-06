;;;  BITS    				-*-Mode:Lisp;Package:SI;Lowercase:T-*-
;;;  **************************************************************************
;;;  *** MACLISP ******** BITString Support ***********************************
;;;  **************************************************************************
;;;  ******** (c) Copyright 1981 Massachusetts Institute of Technology ********
;;;  **************************************************************************

(herald BITS /44)

(include ((lisp) subload lsp))

(eval-when (eval compile)
  (subload UMLMAC)
   ;; Remember, EXTMAC down-loads CERROR
  (subload EXTMAC)
  (subload DEFSETF)
  (subload LOOP)
  (setq defmacro-for-compiling 'T defmacro-displace-call MACROEXPANDED)
  (setq *:bits-per-word 36. *:bits-per-byte 7.)
  (macro SI:BITS-ARRAY (x)
      ;; XREF 0 of a BITS is a Maclisp fixnum array
     `(SI:XREF ,(cadr x) 0))
  (macro SI:BITS-SIZE (x)
      ;; XREF 1 of a BITS is the BITS-LENGTH of the BITS.
     `(SI:XREF ,(cadr x) 1))

 )


(eval-when (eval load compile)
    (subload EXTEND)
    (cond ((status FEATURE COMPLR)
	   (*lexpr BITS-FILL BITS-REPLACE)
	   (fixnum (NIBBLE NOTYPE FIXNUM FIXNUM))
	   (fixnum (NIBBLE-2C NOTYPE FIXNUM FIXNUM))))
)


(define-loop-path (bits bit)
		  si:loop-sequence-elements-path
		  (of from to below above downto in by)
		  bit bits-length bits fixnum)


(defclass* BITS BITS-CLASS SEQUENCE-CLASS)
(defvar PROTECTED-BITSTRING-ARRAYS () )

(def-or-autoloadable FLUSH-MACROMEMOS DEFMAX)
(def-or-autoloadable TO-BIT SUBSEQ)



;;;; Basic BITS stuff

(defbothmacro BITSP (x) `(EQ (PTR-TYPEP ,x) 'BITS))

(defun BITP (x)
  (if (and (fixnump x) (or (= x 0) (= x 1))) *:TRUTH))

(defbothmacro BIT1P (x i) `(= (BIT ,x ,i) 1))

(defun BIT (seq index)
  (when *RSET 
	(let ((cnt 1))
	  (check-subsequence (seq index cnt) 'BITS 'BIT)))
  (load-byte (arraycall FIXNUM 
			(si:bits-array seq)
			(// index #.*:bits-per-word))
	     (\ index #.*:bits-per-word)
	     1))

(defsetf BIT ((() seq index) bitval) ()
  `(RPLACBIT ,seq ,index ,bitval))


(defun RPLACBIT (seq index bitval)
  (when *RSET 
	(let ((cnt 1))
	     (check-subsequence (seq index cnt) 'BITS 'RPLACBIT)
	     (check-type bitval #'FIXNUMP 'RPLACBIT)))
  (let ((b-arr (si:bits-array seq))
	(arr-i (// index #.*:bits-per-word)))
    (store (arraycall FIXNUM b-arr arr-i)
	   (deposit-byte (arraycall FIXNUM b-arr arr-i)
			 (\ index #.*:bits-per-word)
			 1 
			 bitval))
  seq))

(defun MAKE-BITS (n)
   (let ((nwords 0))
     (declare (fixnum nwords))
     (if *RSET (check-type n #'SI:NON-NEG-FIXNUMP 'MAKE-BITS)) 
     (setq nwords (// (+ n #.(1- *:bits-per-word)) #.*:bits-per-word))
     (if (< nwords 1) (setq nwords 1))	;well, let a 0-length bits go thru
     (si:extend BITS-CLASS (array () FIXNUM nwords) n)))



(defcomplrmac BITS-LENGTH (seq) 
    ;; Well, the problem is that si:bits-size isn't around at load time
   (subst seq 'SEQ '#%(SI:BITS-SIZE seq)))

(defun BITS-LENGTH (seq)
  (when *RSET (check-type seq #'BITSP 'BITS-LENGTH))
  #%(si:bits-size seq))

(defsetf BITS-LENGTH ((() bits) length) ()
  `(SET-BITS-LENGTH ,bits ,length))


(defun SET-BITS-LENGTH (seq count)
  (when *RSET 
	(let ((start 0))
	  (check-subsequence (seq start count) 'BITS 'SET-BITS-LENGTH)))
  (setf #%(si:bits-size seq) count)
  seq)



;;;; NIBBLE and SET-NIBBLE

(defun SI:NIBBLE-COUNTP (count) 
  (and (fixnump count) (<= 0 count #.*:bits-per-word)))

(defun NIBBLE (bits index count)
   (declare (fixnum n split hicount))
   (when *RSET 
	 (check-subsequence (bits index count) 'BITS 'NIBBLE)
	 (check-type count #'SI:NIBBLE-COUNTP 'NIBBLE))
   (let ((split count)
	 (wordno (// index #.*:bits-per-word)) 
	 (bitno (\ index #.*:bits-per-word))
	 (hicount 0)
	 (n 0)
	 (b-arr (si:bits-array bits))
	 fl )
     (and (> (+ bitno count) #.*:bits-per-word)
	  (setq fl 'T 
		split (- #.*:bits-per-word bitno)	;bits this wd
		hicount (- count split)))		;bits next wd
     (setq n (load-byte (arraycall FIXNUM b-arr wordno) bitno split))
     (if fl (setq n (logior (lsh (load-byte 
				   (arraycall FIXNUM b-arr (1+ wordno))
				   0 
				   hicount)
				 split)	     ;shift past last wd's bits
			    n)))
     n))

(defun NIBBLE-2C (bits index count)
  (let ((n (- #.*:bits-per-word count)))
    (declare (fixnum n))
    ;;Extract the nibble, lsh it so its sign bit is in PDP10 sign bit,
    ;;and ash (with sign extension) to propagate that sign.
    (ash (lsh (nibble bits index count)		;let NIBBLE do error checking
	      n)
	 (- n))))

(defsetf NIBBLE ((() bits index count) byte) ()
  `(SET-NIBBLE ,bits ,index ,count ,byte))

;set-nibble-2c is identical to set-nibble, unless we really wanted to put
;in some error checking that the truncated bits are merely sign extension
;of the kept bits, in other words, that we're not truncating significant bits.

(defsetf NIBBLE-2C ((() bits index count) byte) ()
  `(SET-NIBBLE ,bits ,index ,count ,byte))


(defun SET-NIBBLE (bits index count n)
   (declare (fixnum wordno bitno split lsh-n hicount))
   (when *RSET
	 (check-subsequence (bits index count) 'BITS 'SET-NIBBLE)
	 (check-type n #'FIXNUMP 'SET-NIBBLE))
   (let ((split count)
	 (lsh-n n)
	 (wordno (// index #.*:bits-per-word)) 
	 (bitno (\ index #.*:bits-per-word))
	 (hicount 0)
	 (b-arr (si:bits-array bits))
	 fl )
     (and (> (+ bitno count) #.*:bits-per-word)
	   ;; If the field extends past the end of this word
	  (setq fl 'T 
		split (- #.*:bits-per-word bitno)	;number of bits this wd
		hicount (- count split)			;number of bits next wd
		lsh-n (lsh n (- split))))		;adjust N for next word
     (store (arraycall FIXNUM b-arr wordno)
	    (deposit-byte (arraycall FIXNUM b-arr wordno)
			  bitno 
			  split 
			  n))
     (if fl (store (arraycall FIXNUM b-arr (1+ wordno))
		   (deposit-byte (arraycall FIXNUM b-arr (1+ wordno))
				 0 
				 hicount 
				 lsh-n)))
     bits))


;;;; BITS-REPLACE and BITS-FILL

(defun BITS-REPLACE (bs1 bs2 &optional (i1 0) (i2 0) (cnt () cntp))
   (declare (fixnum ix1 ix2 n l1 l2 n1 n2))
   (when *RSET 
	 (let ((cnt1 cnt) (cnt2 cnt))
	   (check-subsequence (bs1 i1 cnt1) 'BITS 'BITS-REPLACE 'T cntp)
	   (check-subsequence (bs2 i2 cnt2) 'BITS 'BITS-REPLACE 'T cntp)
	   (cond (cntp (if (or (not (= cnt cnt1)) (not (= cnt cnt2)))
			   (setq cnt (if (< cnt1 cnt2) cnt1 cnt2))))
		 ('T (setq cnt (if (< cnt1 cnt2) cnt1 cnt2)
			   cntp 'T)))))
   (prog (l1 l2 n1 n2)
     START-OUT
	 (setq n1 (- (setq l1 (bits-length bs1)) i1)
	       n2 (- (setq l2 (bits-length bs2)) i2))
	 (cond ((null cntp) (setq cnt (cond ((< n1 n2) n1) (n2))))
	       ((or (not (fixnump cnt)) (< cnt 0) (> cnt n1) (> cnt n2))
		(setq cnt (error '|Bad repetition-count argument|
				 cnt 
				 'WRNG-TYPE-ARG)
		      cntp 'T)
		(go START-OUT)))
     LOOP
	 (cond ((not (> cnt #.*:bits-per-word))
		(set-nibble bs1 i1 cnt (nibble bs2 i2 cnt))
		(return bs1)))
	 (set-nibble bs1 i1 #.*:bits-per-word 
			    (nibble bs2 i2 #.*:bits-per-word))
	 (setq cnt (- cnt #.*:bits-per-word) 
	       i1 (+ i1 #.*:bits-per-word) 
	       i2 (+ i2 #.*:bits-per-word))
	 (go LOOP)))


(defun BITS-FILL (bs item &optional (i 0) (cnt () cntp))
   (declare (fixnum worditem w r j))
   (when *RSET 
	 (check-subsequence (bs i cnt) 'BITS 'BITS-FILL () cntp)
	 (setq cntp 'T)
	 (check-type item #'BITP 'BITS-FILL)) 
   (let ((worditem (cond ((= item 0) 0) 
			 (-1)))
	 (r (- (* (// (+ i #.(1- *:bits-per-word)) 	;Rounding up
		      #.*:bits-per-word) 		; to a multiple
		  #.*:bits-per-word) 			; of #.*:bits-per-word
	       i))
	 (*RSET))
     (if (> r cnt) (setq r cnt))
     (unless (= r 0)				;Fills out the remainder
	     (set-nibble bs i r worditem)	; of the first word
	     (setq cnt (- cnt r) i (+ i r)))
     (do ((w (// cnt #.*:bits-per-word) (1- w))	;Then fill word-by-word
	  (j i (+ j #.*:bits-per-word)))
	 ((zerop w)
	  (when (not (zerop (setq r (\ cnt #.*:bits-per-word))))
		(set-nibble bs j r worditem)))	;Remainder of last word
	(set-nibble bs j #.*:bits-per-word worditem))
     bs))


;;;; Defsharps,


(declare (special /#-MACRO-DATALIST)
	 (setq USE-STRT7 'T))
(setq-if-unbound /#-MACRO-DATALIST () )



(defun |#-MACRO-/"| (c)	 		;#"..." For BITS's in hexadecimal form
   (/#-bs-reader c 4 '/"))

;; Open-codings of SETSYNTAX-SHARP-MACRO
(push '(#/" T MACRO . |#-MACRO-/"|) /#-MACRO-DATALIST)

;; This fun is called only by the defsharp function for #B"..."
(defun /#-/#B-reader (lbb)
   (prog (str c char bb)
	 (declare (fixnum c bb))
	 (setq c 0 bb (^ 2 lbb))
	 (tyi)			 	;toss out first /"
      A	(setq c (setq char (tyi)))
         ;; Here's an open-coding of DIGIT-WEIGHT
	(cond ((and (<= #/0 c) (<= c #/9))
	       (setq c (- c #/0)))
	      ((and (<= #/A c) (<= c #/z))
	       (setq c (- c (- #/A 10.))))
	      ((and (<= #/a c) (<= c #/z))
	       (setq c (- c (- #/a 10.))))
	      ('T (and (not (= c #/")) 
		       (error "#/" string does not end with /" "))
		  (return (replace (make-bits (length str)) (nreverse str)))))
	(or (< c bb) 
	    (error "Digit too big for #/" " (ascii char))) 
	(do ((i4 lbb (1- i4)))
	    ((= i4 0) )
	  (push (boole 1 c 1) str)
	  (setq c (lsh c -1)))
	(go A)))


(def-or-autoloadable /#-bs-reader SHARPM)


;;;; Some Methods for BITS's

;Print at most PRINLENGTH bytes, if PRINLENGTH is nonnull.
;; This could stand much improvement!!

(DEFMETHOD* (:PRINT-SELF BITS-CLASS) (OB STREAM () ()
				   &AUX ABBREV (NBITS (BITS-LENGTH OB)))
    (COND ((AND PRINLENGTH (> NBITS (* PRINLENGTH #.*:BITS-PER-BYTE)))
	   (SETQ NBITS (* PRINLENGTH #.*:BITS-PER-BYTE) ABBREV 'T)))
    (SETQ STREAM (SI:NORMALIZE-STREAM STREAM))
    (PRINC '|#B/"| STREAM)
    (DO ((I 0 (1+ I)))
	((NOT (< I NBITS)))
	(DECLARE (FIXNUM MX I))
	(IF (= (BIT OB I) 0) 
	    (PRINC '|0| STREAM)
	    (PRINC '|1| STREAM)))
    (AND ABBREV (PRINC  '|...| STREAM))
    (PRINC '|/"| STREAM))


(DEFMETHOD* (EQUAL BITS-CLASS) (OBJ OTHER-OBJ)
    (COND ((NOT (BITSP OBJ)) 
	   (ERROR '|First OBJ not a BITS? - EQUAL->BITS-CLASS| OBJ))
	  ((NOT (BITSP OTHER-OBJ)) () )
	  ((LET ((LN1 (BITS-LENGTH OBJ)) (LN2 (BITS-LENGTH OTHER-OBJ)))
		(DECLARE (FIXNUM LN1 LN2 I))
		(COND ((NOT (= LN1 LN2)) () )
		      ('T (SETQ LN2 #.*:bits-per-word)
			  (DO ((I 0 (+ I #.*:bits-per-word))) 
			      ((NOT (< I LN1)) 'T)
			    (AND (> (+ I #.*:bits-per-word) LN1)
				 (SETQ LN2 (- LN1 I)))
			    (OR (= (NIBBLE OBJ I LN2) (NIBBLE OTHER-OBJ I LN2))
				(RETURN () )))))))))

(DEFMETHOD* (SXHASH BITS-CLASS) (OBJ)
   (DO ((LN1 (BITS-LENGTH OBJ))
	(I 0 (+ I #.*:bits-per-word))
	(LN2 #.*:bits-per-word)
	(HN #.(SXHASH 'BITS)))
       ((NOT (< I LN1)) HN)
     (AND (> (+ I #.*:bits-per-word) LN1) (SETQ LN2 (- LN1 I)))
     (SETQ HN (LOGXOR (NIBBLE OBJ I LN2) (ROT HN 1)))))

(DEFMETHOD* (PURCOPY BITS-CLASS) (OBJ)
    (PUSH (SI:BITS-ARRAY OBJ) PROTECTED-BITSTRING-ARRAYS)
    (PURCOPY->OBJECT-CLASS OBJ 'PURCOPY))


(defmethod* (USERATOMS-HOOK BITS-CLASS) (frob)
  (ncons (macroexpand
	   `(SI:EXTEND BITS-CLASS
		      ,(if (plusp (bits-length frob))
			   (let (((atyp adim) (arraydims (si:bits-array frob)))
				 (listed (listarray (si:bits-array frob))))
				`(FILLARRAY (ARRAY () ,atyp ,adim) ',listed)))
		      ,(bits-length frob)))))



