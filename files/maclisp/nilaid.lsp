;;;   NILAID	-*-MODE:LISP;PACKAGE:SI-*- 		  -*-LISP-*-
;;;   **************************************************************
;;;   ***** MACLISP ******* Aid to MACLISP for NIL-like Code *******
;;;   **************************************************************
;;;   ** (C) COPYRIGHT 1981 MASSACHUSETTS INSTITUTE OF TECHNOLOGY **
;;;   ****** THIS IS A READ-ONLY FILE! (ALL WRITES RESERVED) *******
;;;   **************************************************************

;;; Support routines which help MACLISP/LISPM to run NIL-like code.
;;; To read this file in on LISPM, do (PACKAGE-DECLARE * SYSTEM 100)
;;; Current features translated, and limitations:
;;;   A sequence of length "n" is translated into a hunk of size "n+2"
;;; 	  where the 1st element is the symbolic data type. (0th for CLASSes).
;;;	  On LISPM, they translate into ART-Qs of 1 dimension.


(herald NILAID /172)

(include ((lisp) subload lsp))

 ;; By loading all this stuff into the "SOBARRAY", and then re-INITIALIZEing 
 ;;  at the end of this file, we can insure that all new names will appear on 
 ;;  both obarrays in the compiler.
(eval-when (eval load)
   (cond ((status FEATURE COMPLR)
	   (setq OBARRAY SOBARRAY READTABLE SREADTABLE))
	 ((not (memq (fboundp 'SPECIAL) '(MACRO FSUBR))) 
	   (macro SPECIAL (x) ''SPECIAL)))
     ;;This doesn't exist in maclisp - just ignore it for now.  2-Feb-80 JonL
   (defun (GLOBALIZE macro) (x) x ''GLOBALIZE)
   (subload NALET)
   (sstatus uuoli)	 	;Foo. Foo.	
   )





(eval-when (compile) 
	   (setq DEFMACRO-CHECK-ARGS () 
		 DEFMACRO-DISPLACE-CALL ()  
		 DEFMACRO-FOR-COMPILING () ))

(defmacro FMOVEQQ (a b &optional (fl 'SUBR)) 
   #Q `(FSET ',a (FSYMEVAL ',b))
   #M `(PUTPROP ',a (GET ',b ',fl) ',fl)
 )

(defmacro FFGET (a &optional (fl 'SUBR))
   #Q `(FSYMEVAL ',a)
   #M `(GET ',a ',fl)
   )

(fmoveqq LIST-LENGTH LENGTH)
(fmoveqq MACLISP-INTERN INTERN)

#M 
(eval-when (eval compile load)
     ;; Have to "hide" some symbols so that the COMPLR wont think that it
     ;;  "knows" all about them.
    (cond ((status feature COMPLR)
	   (setq |old-losing-symbols| () )
	   ((lambda (obarray y)
		(mapc '(lambda (x)
			 (push x |old-losing-symbols|)	;gc protection ???
			 (setq obarray sobarray)
			 (remob x)
			 (setq obarray cobarray)
			 (remob x)
			 (setq y (copysymbol x () ))
			 (and (get x 'SUBR) (putprop y (get x 'SUBR) 'SUBR))
			 (and (get x 'LSUBR) (putprop y (get x 'SUBR) 'LSUBR))
			 (intern y)
			 (setq obarray sobarray)
			 (intern y))
		      '(INTERN LENGTH)))
	    sobarray () )))
)


;;;; DECLAREs and LOADs 

(declare (special  NILAID:INCHBACK  |general-POSQer|  |general-FILLer| 
		   /#-MACRO-DATALIST )
	 (*lexpr STRING-SUBSEQ))


(eval-when (eval compile load)
    (cond ((status feature COMPLR)
	   (*lexpr |general-POSQer| |general-FILLer| BPOSQ BSKIPQ SKIPQ  
		   LIST-POSQ VECTOR-POSQ BITS-POSQ POSQ 
		   LIST-FILL VECTOR-FILL STRING-FILL STRING-FILL-N BITS-FILL 
		   INCH INCHPEEK OUCH OUSTR 
		   NIL-INTERN INTERN SYMBOLCONC REPLACE)
	   (*expr LENGTH LIST-LENGTH NIL-LENGTH MACLISP-INTERN 
		  MAKE-VECTOR MAKE-STRING STRING-PNGET STRING-GET-PNAME 
		  |no-funp/||  |side-effectsp/|| )
	   (fixnum (LENGTH) (NIL-LENGTH) (LIST-LENGTH))
	   (fixnum PRINLEVEL PRINLENGTH)
	   (fixnum (SI:FULLADD fixnum fixnum fixnum) 
		   (SI:FULLSUB fixnum fixnum fixnum)
		   (SI:FULLMUL fixnum fixnum fixnum)
		   (SI:FULLDIV fixnum fixnum fixnum))
	   (special *:TRUTH 
		    +INTERNAL-INTERRUPT-BOUND-VARIABLES 
		    SI:CONSTANTS-TABLE)))
)


(eval-when (eval compile load)
   (let  (#-LISPM (DEFAULTF '((LISP) * FASL)) 
	  #-LISPM (STANDARD-OUTPUT TYO)
	  *RSET FASLOAD)
	(mapc '(lambda (x) 
		 (COND ((get x 'VERSION))
		       ((probef x) (load x))
		       ('T  ;compiler turns off MSGFILES!
			  (terpri STANDARD-OUTPUT)
			  (princ '|WARNING!  File | STANDARD-OUTPUT)
			  (prin1 x STANDARD-OUTPUT)
			  (princ '| is missing.  Features will lose!| STANDARD-OUTPUT))))
	      (append 
	        '(DEFMAX MACAID DEFMACRO MLMAC UMLMAC BACKQ 
		   SHARPM SHARPConditionals)
	       #-LISPM 
		'(MLSUB FORMAT CERROR FUNCEL) 
		'(EXTEND EXTMAC SUBSEQ VECTOR BITS STRING SETF  
		  LSETS DRAMMP) 
	       #-LISPM 
	        '(YESNOP)
		(cond ((null COMPILER-state)
		       '(NADEFVST))
		      ((eq COMPILER-state 'TOPLEVEL)
		         ;; DEFVST must come before DEFSETF, since latter has
		         ;;  some compiled STRUCTS in it.
		       '(EXTHUK NADEFVST DEFSETF))
		      ('(DEFVST DEFSETF))) 
	       #+LISPM 
	        '(NALOOP DEFSETF) 
	       ))
	#-LISPM (progn (remprop 'LOOP 'AUTOLOAD)
		       (def-or-autoloadable LOOP NALOOP)
		       (def-or-autoloadable DEFSETF DEFSETF)
		       (def-or-autoloadable DEBUG DEBUG)
		       (def-or-autoloadable SFA-UNCLAIMED-MESSAGE EXTSFA))
	)
   #M (setsyntax '/. (boole 4 (status syntax /.) 1_17.) () )
   (setq  SI:CONSTANTS-TABLE () )
   )



;;;; MACROs for temporary use


(defmacro si:output-fixnum (&REST x) `(OUT ,. x))

(defmacro si:output-byte (&REST x) `(TYO ,. x))


#M 
  (progn 'compile 
     (defmacro DEFLEXPRMACRO (name fun first-arg args-prop &aux g)
	(si:gen-local-var g "DEFLEXPRMACRO")
	`(PROGN 'COMPILE 
		(AND (STATUS FEATURE COMPLR) 
		     (EVAL '(DEFMACRO ,name (&REST W)
				`(,',fun ,',first-arg ,. W)))) 
		(DEFUN ,name ,g 
		   ,g 
		   (|*lexpr-funcall-2| ',name ,fun ,first-arg ,args-prop))))

     (defmacro lexpr-fcl-helper (n) 
	       (do ((i 1 (1+ i)) (w () ))
		   ((> i n) `(LSUBRCALL T FUN FIRST-ARG ,. (nreverse w)))
		 (push `(ARG ,i) w)))
     (defun |*lexpr-funcall-2| (name fun first-arg args-prop) 
	 ;Function for passing the buck
	(let ((n (arg () )))
	     (and (or (< n (car args-prop)) (> n (cdr args-prop)))
		  (error '|Wrong number args to function| name))
	     (caseq n 
		    (1  (lexpr-fcl-helper 1))
		    (2  (lexpr-fcl-helper 2))
		    (3  (lexpr-fcl-helper 3))
		    (4  (lexpr-fcl-helper 4))
		    (5  (lexpr-fcl-helper 5))
		    (6  (lexpr-fcl-helper 6)))))

     )	;end of #M 

#Q 
 (defmacro DEFLEXPRMACRO (name fun first-arg args-prop &aux g)
	(si:gen-local-var g "DEFLEXPRMACRO")
	`(DEFUN ,name (&REST ,g)
		(LEXPR-FUNCALL ,fun ,first-arg ,g)))

(eval-when (compile) 
	   (setq DEFMACRO-CHECK-ARGS 'T 
		 DEFMACRO-DISPLACE-CALL 'T  
		 DEFMACRO-FOR-COMPILING 'T))


;;;; Set up of value for *:TRUTH

(defclass* TRUTH TRUTH-CLASS CONSTANT-CLASS TYPEP CONSTANT)

(defmethod* (:PRINT-SELF TRUTH-CLASS) (() stream () ())
   (princ '|#T| stream))
(defmethod* (FLATSIZE TRUTH-CLASS) (() () () ()) 2)
(defmethod* (DESCRIBE TRUTH-CLASS) (() &optional (stream standard-output) () )
   (terpri stream)
   (princ '|#T is the 'truth' constant| stream))
(defmethod* (USERATOMS-HOOK TRUTH-CLASS) (() ) (list '*:TRUTH))
(setq *:TRUTH (purcopy (si:make-extend 1 TRUTH-CLASS)))


#M (fmoveqq FSET-CAREFULLY FSET)

;;;; NIL-type defsharps for MacLISP


(defsharp /! SPLICING (() ) 		;#!...!, for symbolic CONSTANTs
   (/#-flush-chars-not-set #/! 'T))

(defsharp /= (c)
    ;#=~A converts character object "~A" into its "ascii" value
    ;#=n  converts number n into character with that value
   c
   (error '|# syntax not yet implemented| '=))

(defsharp /I SPLICING (()) 
   (error '|# syntax is not yet defined| 'I))

(defsharp /L SPLICING  (())			;#Lfoo= assigns "foo" as label
   (/#-flush-chars-not-set '(#/= #/#) 'T))	;#Lfoo# references prior "foo"

(defsharp /[  SPLICING (())			;#[...] for ARRAYs
   (/#-flush-chars-not-set #/] 'T))
(defsharp /{  SPLICING (())			;#{...} for random CLASSes
   (/#-flush-chars-not-set #/} 'T))
	  
;;;; =$, <$ etc

(defbothmacro =$ (a b) `(= ,a ,b))

(defmacro (gen-$ defmacro-for-compiling () defmacro-displace-call () )
	  (&rest l &aux x$)
   `(PROGN 'COMPILE 
	   ,.(mapcar 
	       #'(lambda (x) 
		    (setq x$ (symbolconc x '$))
		     ;; puts on the "$" at the end
		    `(DEFUN ,x$ NARGS (SI:<=>-AUX NARGS ',x)))
	       l)))

(gen-$ < > <= >=)

(setq SI:<=>-AUX *:TRUTH)


(defun SI:CIRCULARITY-ERROR (fun arglist)
   (cerror #T () ':INCONSISTENT-ARGUMENTS 
	   "~1G~S called with an argument that may be circular~ 
             (argument addresses are ~S).~@
	     Supply an integer as an increased depth limit, if you want." 
	   arglist fun (mapcar #'MAKNUM arglist)))


;;;; SI:SYMBOL-CONS, MAKE-SYMBOL, GET-PNAME, SI:SYMBOL-PACKAGE-PREFIX, 
;; 	and FILL-DIGITS-INTO-STRING


(defun SI:SYMBOL-CONS (str)
   (if *RSET (check-type str #'STRINGP 'SI:SYMBOL-CONS))
   (pnput (string-pnget str 7) () ))

;;This is essentially the same definitions as in NILSRC;ZRF >, except for
;; the "package" argument.
(defun MAKE-SYMBOL (x &optional (ini-value () valuep) 
				(ini-function () functionp) 
				(plist () ) 
				(package () packagep))
  (setq x (si:symbol-cons (to-string x)))
  (when *RSET 
	(if x (check-type plist #'PAIRP 'MAKE-SYMBOL)))
  (setplist x plist)
  (if packagep (setq x (maclisp-intern x)))
  (if valuep (set x ini-value))
  (if functionp (fset x ini-function)))


(defun NILAID-GET-PNAME (x &aux pkg) 
   (multiple-value (pkg x) (nilaid-pkg-pname x 'T () ))
   x)

(defun SI:SYMBOL-PACKAGE-PREFIX (x &optional shortp &aux pkg)
   (multiple-value (pkg x) (nilaid-pkg-pname x () shortp))
   pkg)

(defun NILAID-PKG-PNAME (x pnamep shortp)
   (let* ((str (string-get-pname x))
	  (*RSET)
	  (i (string-posq-n #/: str)))
     (cond ((null i) (values () str)) 
	   ((let ((key (string-upcase (string-subseq str 0 i))))
	      (setq key (caseq (string-length key)
			   (0 "")
			   (1 (if (not (string-mismatchq key "*")) key))
			   (2 (cond ((string-mismatchq key "SI") () )
				    (shortp key)
				    ("SYSTEM-INTERNALS"))) 
			   (4 (if (not (string-mismatchq key "USER")) key)) 
			   (6 (if (not (string-mismatchq key "GLOBAL")) key))
			   (16. (cond ((string-mismatchq key "SYSTEM-INTERNALS") () )
				      (shortp "SI")
				      (key)))))
	      (if (and key pnamep) (setq str (string-subseq str (1+ i))))
	      (values key str))))))


;;Code just 'lifted' out of NILSRC;EARLY >
(defun FILL-DIGITS-INTO-STRING 
       (str q &optional (i 0) (cnt () cntp) (radix 10.))
    ;;Converts the number 'q' into digits base 10. fills them into the
    ;;  indicated subsequence of 'str'
   (when *RSET 
	 (check-type q #'FIXNUMP 'FILL-DIGITS-INTO-STRING)
	 (check-subsequence (str i cnt) 
			    'STRING 'FILL-DIGITS-INTO-STRING 'T cntp)
	 (setq cntp 'T))
   (if (not cntp) (setq cnt (- (string-length str) i)))
   (do ((k (+ cnt i -1) (1- k))
	(r 0))
       ((< k i) 
	 (if (not (= q 0)) (ferror () "Huh? - FILL-DIGITS-INTO-STRING"))
	 str)
     (declare (fixnum k))
     (setq r (\ q radix) q (// q radix))
     (rplachar-n str k (+ r (if (< r 10.) #/0 (- #/A 10.))))))


;;;; SI:FULLADD etc

#+PDP10 
(eval-when (eval compile load)
    ;; 30. bits per fixnum is right for the VAX!
   (setq *:BITS-PER-FIXNUM 36.)
)


#+PDP10 
(lap-a-list '((lap SI:FULLADD SUBR)
		(args SI:FULLADD (() . 3))
		      (push p (% 0 0 fix1))
		      (movei ar1 '0)	;assume no overflow
		      (jfcl 8 (* 1))
		      (move tt 0 a)
		      (add tt 0 b)
		  CARRY-AND-SNIFF-OVERFLOW 
		      (add tt 0 c)	;should only be -1, 0 or +1
		      (jfcl 8 TGXA)
		  TG1 (movem ar1 (special *:ar2))
		      (movei ar1 '1)
		      (movem ar1 (special *:arn))  ;1 extra return value
		      (popj p)
		  TGXA (tlce tt #o400000)	   ;overflow -- reset sign bit
			(skipa ar1 (% 0 0 '1))	   ; and produce 'carry'
			 (movei ar1 '-1)
		      (jrst 0 TG1)

	      (entry SI:FULLSUB SUBR)
		(args SI:FULLSUB (() . 3))
		      (push p (% 0 0 fix1))
		      (movei ar1 '0)	  ;assume no borrow
		      (move tt 0 a)
		      (jfcl 8 (* 1))
		      (sub tt 0 b)
		      (jrst 0 CARRY-AND-SNIFF-OVERFLOW)

	      (entry SI:FULLMUL SUBR)
		(args SI:FULLMUL (() . 3))
		      (push p (% 0 0 fix1))
		      (move tt 0 a)
		      (mul tt 0 b)
		      (jfcl 8 (* 1))
		      (add (tt 1) 0 c)
		      (jfcl 8 TGOM)
		      (jumpge (tt 1) (* 3))
		       (camn tt (% -1))	;If hi word merely is extending the
			(setz tt)	; sign bit of the low word, then 0 it.
		  TG2 (jsp t fix1a)	  ;high word
		      (movem a (special *:ar2))
		      (movei a '1)
		      (movem a (special *:arn))
		      (move tt (tt 1))
		      (popj p)
		  TGOM (jumpl (tt 1) (* 3))
		        (camn tt (% -1));If hi word merely is extending the
			 (setz tt)	; sign bit of the low word, then 0 it.
		       (tlce (tt 1) #o400000)
		        (aosa 0 tt)
			 (sos 0 tt)
		       (jrst 0 TG2)

	      (entry SI:FULLDIV SUBR)
		(args SI:FULLdiv (() . 3))
		      (push p (% 0 0 fix1))
		      (move (tt 2) 0 a)
		      (move (tt 1) 0 b)
		      (div (tt 1) 0 c)
		      (move tt (tt 2))
		      (jrst 0 TG2)
		      () ))



#-PDP10 
(eval-when (eval compile load)
    ;; 30. bits per fixnum is right for the VAX!
   (setq *:BITS-PER-FIXNUM 30.)
    ;; A value to use as a 'base' for bignum digits in the emulated NIL
   (setq SI:FULL-NON-NEG-FIXNUMP (expt 2 (1- *:bits-per-fixnum))) 
    ;; Negative of 'base' for bignum digits
   (setq SI:FULL-FIXNUMP (minus SI:FULL-NON-NEG-FIXNUMP))
)

#+PDP10 
(eval-when (eval compile)
    ;; Just in order to be able to read this stuff!
   (setq SI:FULL-NON-NEG-FIXNUMP 1 SI:FULL-FIXNUMP -1)
)

#-PDP10 
(progn 'COMPILE 


(declare (special *:BITS-PER-FIXNUM SI:FULL-NON-NEG-FIXNUMP SI:FULL-FIXNUMP))

;;Tentatively, these values should be such that three "full-fixnums" added
;; can't overflow a regular fixnum.

(defun SI:FULLADD (x y cry)
   (si:fulladd-sub x y cry 'SI:FULLADD))
(defun SI:FULLSUB (x y cry)
   (si:fulladd-sub x y cry 'SI:FULLSUB))
(defun SI:FULLADD-SUB (x y cry opname)
   (when *RSET 
	 (multiple-value (x y cry) (SI:FULLCHECK x y cry opname))
	 (check-type CRY #'SI:CRY-BITP opname))
   (setq x (cond ((eq opname 'SI:FULLADD) (plus x y cry))
		 ('T (difference x y cry))))
   (psetq x (remainder x #.SI:FULL-NON-NEG-FIXNUMP) 
	  y (quotient x #.SI:FULL-NON-NEG-FIXNUMP))
   (if (< x 0) (setq x (+ x #.SI:FULL-NON-NEG-FIXNUMP)))
   (values x y))

(defun SI:FULLMUL (x y cry)
   (when *RSET (multiple-value (x y cry) (si:fullcheck x y cry 'SI:FULLMUL)))  
   (setq x (times x y))
   (if (not (= cry 0)) (setq x (plus x cry)))
   (setq y (quotient x SI:FULL-NON-NEG-FIXNUMP) 
	 x (remainder x SI:FULL-NON-NEG-FIXNUMP))
    ;; "y" here holds the "high-order" digit.
   (values x y))
(defun SI:FULLDIV (lo hi divsr)
   (when *RSET (multiple-value (lo hi divsr) 
			       (si:fullcheck lo hi divsr 'SI:FULLDIV)))  
   (unless (= hi 0)
	   (setq lo (plus (times hi SI:FULL-NON-NEG-FIXNUMP) lo)))
   (setq hi (remainder lo divsr) lo (quotient lo divsr))
    ;; "lo" here holds the quotient value, and "hi" the remainder
   (values lo hi))

(defun SI:FULLCHECK (x y z opname)
   (check-type x #'SI:FULL-FIXNUMP opname)
   (check-type y #'SI:FULL-FIXNUMP opname)
   (check-type z #'SI:FULL-FIXNUMP opname)
   (values x y z))


(defun SI:FULL-FIXNUMP (x) 
   (and (fixnump x)
	(< x #.SI:FULL-NON-NEG-FIXNUMP)
	(>= x #.SI:FULL-FIXNUMP)))

(defun SI:CRY-BITP (x) 
    ;; a "carry" bit can only be 0, 1, or -1
   (and (fixnump x)
	(or (= x 0) (= x 1) (= x -1))))


)

;;;; SEQUENCEP, and NIL versions of LENGTH and SET-LENGTH 

(defun SEQUENCEP (x)
   (cond ((or (null x) 		;Well, why not?  maybe its the NULL sequence?
	      (memq (type-of x) '(PAIR VECTOR STRING BITS)))
	  *:TRUTH)
	  ;; Could be extended someday?
	 ('T () )))

(defun si:MAKE-SEQUENCE (n class &optional initialization (i 0 ip) 
				 &aux result type)
  (cond (*RSET 
	  (check-type n #'SI:NON-NEG-FIXNUMP 'si:MAKE-SEQUENCE)
	  (check-type i #'SI:NON-NEG-FIXNUMP 'si:MAKE-SEQUENCE)
	  (or (and (classp class) 
		   (or (eq (setq type (si:class-typep class)) 'EXTEND)
		       (memq type '(PAIR VECTOR STRING BITS))))
	      (error "Bad class arg to si:MAKE-SEQUENCE" class)))
	('T (setq type (si:class-typep class))))
  (setq result 
	(caseq type 
	       (PAIR (make-list n))
	       (EXTEND (si:make-extend n class))
	       (VECTOR (make-vector n))
	       (STRING (make-string n))
	       (BITS (make-bits n))))
  (and initialization (replace result initialization i))
  result)


(defun NIL-LENGTH (x)
   (cond ((null x) 0)
	 ('T (typecaseq X
		(PAIR 	(list-length X))
		(STRING (string-length X))
		(VECTOR (vector-length X))
		(BITS 	(bits-length X))
		(EXTEND (send x 'LENGTH))
		(T 	(check-type x #'SEQUENCEP 'NIL-LENGTH)
			(nil-length x))))))

(defun SET-LENGTH (v newln)
   (DECLARE (FIXNUM LN))
   (LET (LOSEP)
	(TYPECASEQ (AND (EQ (TYPEP NEWLN) 'FIXNUM)
			(>= NEWLN 0)
			V )
	  (PAIR (COND ((NOT (> NEWLN 0)) (SETQ LOSEP T))
		      ((LET ((LN (LIST-LENGTH V)))
			    (COND ((= LN NEWLN))
				  ((< LN NEWLN) 
				   (NCONC V (MAKE-LIST (- NEWLN LN))))
				  ('T (RPLACD (NTHCDR (1- NEWLN) V) () )))))))
	  (VECTOR 
	   (COND ((> NEWLN (VECTOR-LENGTH V)) (SETQ LOSEP T))
		 ('T 
		   #M (DO I (1- (HUNKSIZE V)) (1- I) (< I (+ NEWLN 2))
			 ;########## KLUDGE!  
			 (RPLACX I V (MUNKAM 262143.) ))
		   #Q (ADJUST-ARRAY-SIZE V (1+ NEWLN))
		   )))
	  (STRING 
	   (COND ((> NEWLN (STRING-LENGTH V)) (SETQ LOSEP T))
		 ('T (SET-STRING-LENGTH V NEWLN))))
	  (BITS (COND ((> NEWLN (BITS-LENGTH V)) (SETQ LOSEP T))
		      ('T (SET-BITS-LENGTH V NEWLN))))
	  (T (SETQ LOSEP 'T)))
	(COND ((NOT LOSEP) V)
	      ((ERROR (LIST V NEWLN) '|You Lose - SET-LENGTH|)))))




;;;; Replacers and POSQers

(defmacro LIST-REPLACE (&rest w) `(REPLACE ,.w))
(defmacro VECTOR-REPLACE (&rest w) `(REPLACE ,.w))

(defun |general-POSQer| (foo x str &optional (i 0 ip) (cnt () cntp))
     (declare (fixnum ii len))
     (let (((fwp skp chkp) foo)
	   (ors *RSET) 
	   (*RSET *RSET)
	   typ (len 0))
       (when ors 
	     (check-subsequence (str i cnt) () 'POSQ ip cntp fwp)
	     (setq cntp 'T))
       (typecaseq str
		  (STRING  (setq len (string-length str) typ 'STRING))
		  (PAIR    (setq len (list-length str) typ 'LIST))
		  (VECTOR  (setq len (vector-length str) typ 'VECTOR))
		  (BITS    (setq len (bits-length str) typ 'BITS)
			   (setq x (= (to-bit x) 1)))
		  (T 	    (cond ((null str) (setq len 0 typ 'LIST))
				  ((setq typ () )))))
       (or ors 
	   (cond ((not fwp) 
		  (or ip (setq i (1- len)))
		  (or cntp (setq cnt i))) 
		 ((not cntp) (setq cnt (- len i)))))
       (cond 
	 ((= len 0) () )
	 ((eq typ 'STRING) 
	   (cond (skp (cond (fwp (string-skipq x str i cnt))
			    ((string-bskipq x str i cnt))))
		 (fwp (string-posq x str i cnt))
		 ('T  (string-bposq x str i cnt))))
	 ('T (if (eq typ 'LIST) 
		 (setq str (cond ((not fwp) 
				  (nreverse (replace (make-list cnt) 
						     str 
						     0 
						     (- i cnt -1) 
						     cnt)))
				 ('T (nthcdr i str)))))
	     (do ((ii i (1+ ii)) item)
		 ((cond ((< cnt 0))
			(fwp (>= ii len))
			('T (< ii 0)))
		  () )
	       (caseq typ 
		      (LIST   (pop str item))
		      (VECTOR (setq item (vref str ii)))
		      (BITS   (setq item (bit1p str ii))))
	       (if (cond ((eq x item) (not skp))
			 ('T          skp))
		   (return ii))
	       (setq cnt (1- cnt)))))))

(defvar |general-POSQer| (ffget |general-POSQer| LSUBR))

(deflexprmacro LIST-POSQ  |general-POSQer| '(T () LIST) '(2 . 4))
(deflexprmacro VECTOR-POSQ  |general-POSQer| '(T () VECTOR) '(2 . 4))
(deflexprmacro BITS-POSQ  |general-POSQer| '(T () BITS) '(2 . 4))

(deflexprmacro POSQ  |general-POSQer| '(T () ()) '(2 . 4))
(deflexprmacro BPOSQ  |general-POSQer| '(() () ()) '(2 . 4))
(deflexprmacro SKIPQ  |general-POSQer| '(T T ()) '(2 . 4))
(deflexprmacro BSKIPQ  |general-POSQer| '(() T ()) '(2 . 4))



;;;; FILL

(defun |general-FILLer| (type s item &OPTIONAL (i 0) (cnt () cntp) )
   (when *RSET 
	 (check-subsequence (s i cnt) type 'FILL 'T cntp)
	 (setq cntp 'T))
   (typecaseq s 
	(PAIR (or cntp (setq cnt (- (list-length s) i)))
	      (do ((l (nthcdr i s) (cdr l))) 
		  ((< cnt 1)) 
		(rplaca l item)
		(setq cnt (1- cnt))))
	(VECTOR (or cntp (setq cnt (- (vector-length s) i)))
		(do () ((< cnt 1)) 
		   (vset s i item)
		   (setq cnt (1- cnt) i (1+ i))))
	(STRING (or cntp (setq cnt (- (string-length s) i)))
		(string-fill-n s (to-character-n item) i cnt))
	(BITS   (or cntp (setq cnt (- (bits-length s) i)))
		(bits-fill s (to-bit item) i cnt))
	(T (or cntp (setq cnt (- (nil-length s) i)))
	   (do () ((< cnt 1)) 
	     (setelt s i item)
	     (setq cnt (1- cnt)))))
   s )

(defvar |general-FILLer| (ffget |general-FILLer| LSUBR))

(deflexprmacro LIST-FILL  |general-FILLer| 'LIST '(2 . 4))
(deflexprmacro VECTOR-FILL  |general-FILLer| 'VECTOR '(2 . 4))
;;BITS-FILL should be in the BITS file now
(deflexprmacro FILL  |general-FILLer| '() '(2 . 4))


;;;; ELT and SETELT


(defun ELT (v i)
   (if *RSET (check-subsequence (v i () ) () 'ELT))
   (typecaseq v
	(PAIR (nth i v))
	(VECTOR (vref v i))
	(STRING (char v i))
	(BITS (bit v i))
	(EXTEND (send v 'ELT i))))

(defsetf ELT ((() frob index) value) () 
   `(SETELT ,frob ,index ,value))


(defun SETELT (v i x)
   (if *RSET (check-subsequence (v i () ) () 'ELT))
   (typecaseq v
	(PAIR (rplaca (nthcdr i v) x))
	(VECTOR (vset v i x))
	(STRING (rplachar v i x))
	(BITS (rplacbit v i x))
	(EXTEND (si:xset v i x))))


(defun *:NPTR-TYPEP (z) (get (ptr-typep z) 'PTRTYPEN))


;;;; I/O Functions

(and (not (boundp 'NILAID:INCHBACK)) (setq NILAID:INCHBACK () ))

(defun INCH  (&optional (strm () strmp))
   (cond (NILAID:INCHBACK (pop NILAID:INCHBACK))
	 ((*:fixnum-to-character (cond (strmp (tyi strm)) ((tyi)))))))

(defun INCHPEEK (&optional (strm () strmp))
   (cond (NILAID:INCHBACK (car NILAID:INCHBACK))
	 ((or (null strmp) (eq strm 'T))
	  (setq strm (*:fixnum-to-character (tyi)))
	  (push strm NILAID:INCHBACK)
	  strm)
	 ('T (*:fixnum-to-character (tyipeek -1 strm)))))

(defun PUTBACK (type buf-or-item stream) 
  (and (or (not (eq type 'SINGLE)) 
	   (and (not (eq stream 'T)) (not (eq stream TYI))))
       (error '|bad args - PUTBACK|))
  (push buf-or-item NILAID:INCHBACK))


(defun OUCH (char &OPTIONAL (stream OUTFILES))
     (si:output-byte (*:character-to-fixnum char) stream)
      ;Someday, try writing the STREAM-OUTBUFFER-OP, keyed on the predicate
      ; (or (memq stream '(() T)) (eq stream TYO))
     )

(defun OUSTR (str &optional (stream OUTFILES) (start 0) (cnt () cntp)
		  &aux      (endi (string-length str)))
   (declare (fixnum i n))
   (if (and cntp (< (+ start cnt) endi))
       (setq endi (+ start cnt)))
   (do ((i start (1+ i)))
       ((>= i endi) () )
      (si:output-byte (*:character-to-fixnum (char str i)) stream)))


;;;; NIL-INTERN, NILAID:EDIT-INTERRUPT etc.


(defun NIL-INTERN (x &optional (y OBARRAY))
   (cond ((symbolp x))
	 ((stringp x) #M (setq x (pnput (string-pnget x 7) () )) )
	 ((error '|Bad arg to NIL's INTERN| x)))
   (cond ((eq y OBARRAY) (maclisp-intern x))
	 (((lambda (OBARRAY) (maclisp-intern x)) y))))

(defun NILAID:EDIT-INTERRUPT (chnl char)
	  (setq TTY-RETURN 'NILAID:TTY-RETURN-FROM-EDIT)
	  (LISPT-EDIT-INTERRUPT chnl char))
(defun NILAID:TTY-RETURN-FROM-EDIT (chnl)
	  (setq TTY-RETURN () )
	  (TTY-RETURN-HANDLER chnl))



;;;;  Setup Actions

(eval-when (load)
	  (fmoveqq STRING-GET-PNAME  GET-PNAME)
	  (fmoveqq GET-PNAME  NILAID-GET-PNAME)
    #M 	  (nointerrupt 'T)
	  (fmoveqq LENGTH NIL-LENGTH)
    #M 	  (remprop 'INTERN 'SUBR)
	  (fmoveqq INTERN NIL-INTERN LSUBR)
    #M 	  (args 'INTERN '(1 . 2))
    #M 	  (nointerrupt () ) 
    )

;; Copied more-or-less out of VM;TYPES >
(setq *:PTR-TYPEP-TABLE 
      (to-vector '(FIXNUM FIXNUM FIXNUM FIXNUM FIXNUM FIXNUM FIXNUM FIXNUM 
		   PAIR SYMBOL SUBR VECTOR-S VECTOR () MODULE GC-FORWARDING 
		   CONSTANT CHARACTER () () () SMALL-FLONUM () MSUBR FLONUM 
		   STRING BITS FLONUM-S EXTEND () () () ) ))
(defprop FIXNUM 0 PTRTYPEN)
(do ((i (1- (vector-length *:PTR-TYPEP-TABLE)) (1- i))
     (x))
    ((< i 8) () )
  (and (setq x (vref *:PTR-TYPEP-TABLE i))
       (putprop x i 'PTRTYPEN)))


(mapc '(lambda (x) (putprop x 't '|side-effectsp/||))
      '(BITSP FIXNUMP FLONUMP <$ <=$ =$ >=$ >$ ))


(cond ((status feature COMPLR)
	  (setq IOBARRAY SOBARRAY IREADTABLE (ARRAY () READTABLE SREADTABLE))
	  (let ((READTABLE IREADTABLE)) (sstatus macro /& () )) 
	  (let ((x USERATOMS-HOOKS))
	       (INITIALIZE MACRO SPECIAL *EXPR *FEXPR *LEXPR 
			   NUMVAR NUMFUN *ARRAY)
	       (setq USERATOMS-HOOKS x))
	  (cond ((status feature SHARABLE)
		 (defun nac:dump () 
		   (pure-suspend () `((|()|) NACDMP ,(get 'NILAID 'VERSION)))
		   (sstatus GCTIM 0)
		   (ANNOUNCE-&-LOAD-INIT-FILE 
		      'COMPLR 
		      () 
		      `((|()|) NACFIX ,(get 'nilaid 'version)))
		   (MAKLAP)))))
	 ('T (setq /@define (get 'COMMENT 'FSUBR))
	     (mapc '(lambda (x) (putprop x /@define 'FSUBR))
		   '(/@DEFINE SPECIAL UNSPECIAL FIXNUM FLONUM NOTYPE))))

(defmacro LAMBDA (&rest bvl-body) `(FUNCTION (LAMBDA ,. bvl-body)))

#M (declare (own-symbol DESETQ LET* LET))
;;; FOO, these three macros are under a losing conditional in LET file	
;;;  because they will be special forms in the real NIL system
      (DEFMACRO DESETQ (&REST L) (DESETQ-expander-1 L))
      (DEFMACRO LET* (&REST L) (LET*-expander-1 L))
      (DEFMACRO LET (&REST L) (LET-expander-1 L))


;;;;  Redefinitions for < and >

(defun < nargs (si:<=>-aux nargs '<))
(args '< '(2 . 510.))
(defun > nargs (si:<=>-aux nargs '>))
(args '> '(2 . 510.))



(sstatus FEATURE NIL)
(sstatus FEATURE NILAID)

