;;; THIS FILE CONTAINS FUNCTIONS WHICH IMPLEMENT LOGICAL OPERATIONS
;;; ON LISP INTEGERS AS IF THEY WERE SEMI-INFINITE BIT VECTORS IN
;;; TWO'S COMPLEMENT NOTATION.  THAT IS, 0 IS THE BIT VECTOR OF NO
;;; BITS; AND -1 IS THE BIT VECTOR OF ALL 1'S.
;;; THE MAIN FUNCTIONS THAT HAVE BEEN TESTED ARE:
;;; 1) (LNOT A) -- LOGICAL COMPLEMENT OF BIT VECTOR A;
;;; 2) (LAND A B) -- LOGICAL AND OF BIT VECTORS A, B;
;;; 3) (LOR A B) -- LOGICAL OR OF BIT VECTORS A, B;
;;; 4) (LCOM A B) -- LOGICAL COMPLEMENT (A-B) OF A, B;
;;; 5) (LXOR A B) -- LOGICAL XOR (EXCLUSIVE OR) OF A, B;
;;; 6) (LEFTSHIFT A N) -- (FLOOR (TIMES A (EXPT 2 N)));
;;; 7) (PINTERSECTP A B) -- (NOT (ZEROP (LAND A B))) A,B GE 0;
;;; 8) (LELEMENT N A) -- (NOT (ZEROP (LAND A (EXPT 2 N))));
;;; 9) (LREDUCE A L) -- SELECT THOSE ITEMS FROM LIST L WHOSE
;;;			CORRESPONDING BIT IN A IS ON.  SORT OF
;;;			LIKE MAPPING LELEMENT DOWN L.  LREDUCE
;;;			USES CONS, NOT RPLACD.
;;;
;;; THESE FUNCTIONS ARE ALL "SUBR"S; USE THE "REDUCE" FUNCTION
;;; A LA APL TO HANDLE ARBITRARY NUMBERS OF ARGUMENTS.

;;; MAKE MACROS AVAILABLE AT RUN TIME;
;;; DON'T COMPLAIN ABOUT OPEN CODED ARITHMETIC.

(DECLARE (MACROS T) (MUZZLED T))

(DEFUN BBOOLE NIL (PRINT '(BBOOLE PACKAGE LOADED)))

(DEFUN LET MACRO (FORM) 
       (CONS (CONS 'LAMBDA (CONS (CADR FORM) (CDDDR FORM)))
	     (CADDR FORM))) 

(DEFUN REDUCE (FN L)
       ;;; REDUCE THE LIST "L" USING THE BINARY FUNCTION "FN" A LA APL.
       (COND ((NULL L) (AND (ATOM FN) (GET FN 'IDENTITY)))
	     ((ATOM L) L)
	     ((NULL (CDR L)) (CAR L))
	     ((FUNCALL FN (CAR L) (REDUCE FN (CDR L))))))

(DEFPROP LAND -1 IDENTITY)

(DEFPROP LOR 0 IDENTITY)

(DEFPROP LXOR 0 IDENTITY)

(DEFPROP LCOM 0 IDENTITY)

(DEFUN & MACRO (A) 
       ;;; "AND" FOR FIXNUMS
       (APPEND '(BOOLE 1.) (CDR A))) 

(DEFUN V MACRO (A) 
       ;;; "OR" FOR FIXNUMS
       (APPEND '(BOOLE 7.) (CDR A))) 

(DEFUN _ MACRO (A) 
       ;;; "COMPLEMENT" FOR FIXNUMS
       (APPEND '(BOOLE 4.) (CDR A)))

(DECLARE (FIXNUM M N Q R))

(DEFUN MOD (M N)
       ;;; IMPLEMENTS "MOD" FUNCTION ON PAGE 38 OF "FUNDAMENTAL ALGORITHMS"
       ;;; BY D. E. KNUTH.
       ;;; LISP'S "REMAINDER" GIVES THE WRONG ANSWER IN THE 1ST
       ;;; & 3RD QUADRANTS.
       (COND ;;; FIRST CHECK FOR N=0.
	     ((ZEROP N) M)
	     ;;; GET LISP'S REMAINDER AND CORRECT, IF NECESSARY.
	     ((LET (R)((REMAINDER M N))
		   (COND ;;; R=0 OK.
			 ((ZEROP R) R)
			 ;;; NOW WE HAVE M, N, R ALL NOT 0.
			 ((PLUSP N)
			  (COND ((PLUSP M)
				 ;;; (SIGN M) = (SIGN N), OK.
				 R)
				(;;; M<0, N>0, R<0.
				 (PLUS R N))))
			 ((PLUSP M)
			  ;;; M>0, N<0, R>0.
			  (PLUS R N))
			 (;;; M<0, N<0, R<0, (SIGN M) = (SIGN N), OK.
			  R))))))

(DEFUN QUOT (M N)
       ;;; (QUOT M N) = (FLOOR (QUOTIENT (FLOAT M) (FLOAT N)))
       (COND ((MINUSP M)
	      (COND ((MINUSP N) (QUOTIENT M N))
		    ((QUOTIENT (DIFFERENCE M N -1) N))))
	     ((MINUSP N) (QUOTIENT (DIFFERENCE M N 1) N))
	     ((QUOTIENT M N))))

'(DEFUN QUOT (M N)
       ;;; THIS FUNCTION FIXES LISP'S "QUOTIENT" IN THE 1ST AND
       ;;; 3RD QUADRANTS.
       (LET (Q R)
	    ((QUOTIENT M N) (REMAINDER M N))
	    (COND ((ZEROP R) Q)
		  ((PLUSP M) (COND ((PLUSP N) Q)
				   ((SUB1 Q))))
		  ((PLUSP N) (SUB1 Q))
		  (Q))))

(DECLARE (NOTYPE M N Q R))

'(DEFUN QUOT MACRO (L)
       ;;; LISP'S QUOTIENT GIVES THE WRONG ANSWER IN THE 1ST
       ;;; AND 3RD QUADRANTS.
       (SUBLIS (LIST (CONS 'X (CADR L)) (CONS 'Y (CADDR L)))
	       '(FIX (QUOTIENT (FLOAT X) (FLOAT Y)))))

(DEFUN CHECKLIS (NL) 
       ;;; DELETE ZEROS FROM END OF A LIST OF FIXNUMS.
       (COND ((NULL (CDR NL)) T)
	     ((CHECKLIS (CDR NL))
	      (COND ((EQUAL '(0.) (CDR NL))
		     (RPLACD NL NIL)))))) 

(VALRET '//:VP/ ) 

;;; GET SYMBOLS FROM DDT.


(LAP CONSBIGNUM SUBR)
	(JRST 0 BNCONS)
NIL 
 

;;; GIVEN A LIST OF POSITIVE FIXNUMS, WHOSE LAST ELEMENT IS NOT ZERO,
;;; CREATE A BIGNUM WHOSE BIG DIGITS ARE THE FIXNUMS IN REVERSE ORDER. 

(DEFUN LNOT (N) 
       ;;; THE LOGICAL "NOT" OF AN INTEGER N IS -N-1.
       (DIFFERENCE -1 N)) 

(DEFUN LNOT MACRO (A) 
       ;;; THE LOGICAL "NOT" OF AN INTEGER N IS -N-1.
       (LIST 'DIFFERENCE -1 (CADR A))) 

(DECLARE (FIXNUM L N))

(DEFUN BLSH (M N) 
       ;;; BLSH(M N) = (FLOOR (TIMES M (EXPT 2. N)))
       (COND ((MINUSP N) (BRSH M (MINUS N)))
	     ((TIMES M (EXPT 2. N))))) 

(DEFUN BRSH (M N) 
       ;;; BRSH(M N) = (FLOOR (TIMES M (EXPT 2. (MINUS N))))
       (COND ((MINUSP N) (BLSH M (MINUS N)))
	     ((MINUSP M) (LNOT (BRSH (LNOT M) N)))
	     ((QUOTIENT M (EXPT 2. N))))) 

(DEFUN LEFTSHIFT (M N)
       ;;; LEFTSHIFT SEMI-INFINITE BIT VECTOR BY AMOUNT N.
       (COND ((MINUSP N) (RIGHTSHIFT M (MINUS N)))
	     ((TIMES M (EXPT 2. N)))))

(DEFUN RIGHTSHIFT (M N)
       ;;; RIGHTSHIFT SEMI-INFINITE BIT VECTOR BY AMOUNT N.
       (COND ((MINUSP N) (LEFTSHIFT M (MINUS N)))
	     ((MINUSP M) (LNOT (RIGHTSHIFT (LNOT M) N)))
	     ((LET (L)((HAULONG M))
		   (COND ((< N L) (HAIPART M (- L N)))
			 (0.))))))

(DECLARE (NOTYPE L N))

(DEFUN SWR MACRO (A) 
       ;;; "SWR" = SWITCH ROWS IN "BOOLE"-TYPE 2X2 MATRIX
       ;;; SWR(ABCD) = BADC.
       (SUBST (CADR A)
	      'ABCD
	      '(V (LSH (& 5. ABCD) 1.) (LSH (& 10. ABCD) -1.)))) 

(DEFUN SWC MACRO (A) 
       ;;; "SWC" = SWITCH COLUMNS IN "BOOLE"-TYPE 2X2 MATRIX
       ;;; SWC(ABCD) = CDAB.
       (SUBST (CADR A)
	      'ABCD
	      '(V (LSH (& 3. ABCD) 2.) (LSH (& 12. ABCD) -2.)))) 

(DEFUN BBOOLEAN (C A B) 
       ;;; COMPUTES GENERAL BOOLEAN FUNCTION OF TWO LISTS OF
       ;;; POSITIVE FIXNUMS, NOT NECESSARILY OF THE SAME LENGTH.
       ;;; RETURNS EITHER A LIST OF POSITIVE FIXNUMS, OR A SINGLE FIXNUM.
(PROG (AA BB) 
 (COND ((NULL (OR A B)) (RETURN 0.)))
 (SETQ AA (OR A (LIST 0.)) BB (OR B (LIST 0.)))
 (RETURN ((LAMBDA (W Z)
	     (COND ((ATOM Z)
		    (COND ((ZEROP Z) W) ((LIST W Z))))
		   ((CONS W Z))))
	  (BOOLE C (CAR AA) (CAR BB))
	  (BBOOLEAN C (CDR AA) (CDR BB))))))

(DEFUN PBOOLEAN (C X Y) 
       ;;; COMPUTES A BOOLEAN FUNCTION OF TWO NON-NEGATIVE
       ;;; INTEGER ARGUMENTS.  THE FUNCTION APPLIED TO (0, 0) MUST 
       ;;; RETURN 0.
       (COND ((BIGP X)
	      (COND ((BIGP Y)
		     (CONSBIGNUMBER (BBOOLEAN C (CDR X) (CDR Y))))
		    ((CONSBIGNUMBER (BBOOLEAN C (CDR X) (LIST Y))))))
	     ((COND ((BIGP Y)
		     (CONSBIGNUMBER (BBOOLEAN C (LIST X) (CDR Y))))
		    ((BOOLE C X Y)))))) 

(DEFUN BOOLEA (C A B) 
       ;;; computes the general boolean function of two integer arguments.
       (COND ((MINUSP A)
	      (COND ((MINUSP B)
		     (COND ((ZEROP (& 1. C))
			    (PBOOLEAN C (LNOT A) (LNOT B)))
			   ((LNOT (PBOOLEAN (_ 15. C)
					    (LNOT A)
					    (LNOT B))))))
		    ((COND ((ZEROP (& 4. C))
			    (PBOOLEAN (SWR C) (LNOT A) B))
			   ((LNOT (PBOOLEAN (_ 15. (SWR C))
					    (LNOT A)
					    B)))))))
	     ((COND ((MINUSP B)
		     (COND ((ZEROP (& 2. C))
			    (PBOOLEAN (SWC C) A (LNOT B)))
			   ((LNOT (PBOOLEAN (_ 15. (SWC C))
					    A
					    (LNOT B))))))
		    ((COND ((ZEROP (& 8. C)) (PBOOLEAN C A B))
			   ((LNOT (PBOOLEAN (_ 15. C) A B))))))))) 

(DEFUN BAND (X Y)
       ;;; COMPUTES THE BOOLEAN AND OF TWO LISTS OF
       ;;; POSITIVE FIXNUMS; POSSIBLY OF DIFFERING LENGTHS.
       (COND ((NULL X) 0.)
	     ((NULL Y) 0.)
	     ((LET (W Z)
		   ((& (CAR X) (CAR Y)) (BAND (CDR X) (CDR Y)))
		   (COND ((ATOM Z) (COND ((ZEROP Z) W) ((LIST W Z))))
			 ((CONS W Z)))))))

(DEFUN BINTERSECTP (L1 L2)
       ;;; TESTS WHETHER THE TWO LISTS OF POSITIVE FIXNUMS HAVE
       ;;; ANY BITS IN COMMON.
       (COND ((NULL L1) NIL)
	     ((NULL L2) NIL)
	     ((OR (NOT (ZEROP (& (CAR L1) (CAR L2))))
		  (BINTERSECTP (CDR L1) (CDR L2))))))

(DEFUN BOR (X Y) 
       (COND ((NULL X) Y)
	     ((NULL Y) X)
	     ((CONS (V (CAR X) (CAR Y)) (BOR (CDR X) (CDR Y)))))) 

(DEFUN BLCOM (X Y) 
       (COND ((NULL X) 0.)
	     ((NULL Y) X)
	     ((LET (W Z)
		   ((_ (CAR X) (CAR Y)) (BLCOM (CDR X) (CDR Y)))
		   (COND ((ATOM Z) (COND ((ZEROP Z) W) ((LIST W Z))))
			 ((CONS W Z))))))) 

(DEFUN BXOR (A B) 
       ;;; COMPUTES THE LOGICAL XOR OF TWO LISTS OF POSITIVE FIXNUMS
       (COND (A (COND (B (LET (W Z)
			      ((BOOLE 6. (CAR A) (CAR B))
			       (BXOR (CDR A) (CDR B)))
			      (COND ((ATOM Z)
				     (COND ((ZEROP Z) W)
					   ((LIST W Z))))
				    ((CONS W Z)))))
		      (A)))
	     ((OR B 0.)))) 

(DEFUN PLAND (X Y) 
       ;;; COMPUTES THE LOGICAL AND OF TWO POSITIVE INTEGERS
       (COND ((BIGP X)
	      (COND ((BIGP Y) (CONSBIGNUMBER (BAND (CDR X) (CDR Y))))
		    ((& (CADR X) Y))))
	     ((COND ((BIGP Y) (& X (CADR Y))) ((& X Y)))))) 

(DEFUN PINTERSECTP (X Y)
       ;;; COMPUTES WHETHER TWO POSITIVE INTEGERS HAVE ANY BITS IN COMMON.
       (COND ((BIGP X)
	      (COND ((BIGP Y) (BINTERSECTP (CDR X) (CDR Y)))
		    ((NOT (ZEROP (& (CADR X) Y))))))
	     ((COND ((BIGP Y) (NOT (ZEROP (& X (CADR Y)))))
		    ((NOT (ZEROP (& X Y))))))))

(DEFUN PLOR (X Y) 
       ;;; COMPUTES THE LOGICAL OR OF TWO POSITIVE INTEGERS
       (COND ((BIGP X)
	      (COND ((BIGP Y) (CONSBIGNUM (BOR (CDR X) (CDR Y))))
		    ((CONSBIGNUM (CONS (V (CADR X) Y) (CDDR X))))))
	     ((COND ((BIGP Y)
		     (CONSBIGNUM (CONS (V X (CADR Y)) (CDDR Y))))
		    ((V X Y)))))) 

(DEFUN PLCOM (X Y) 
       ;;; COMPUTES THE LOGICAL COMPLEMENT OF TWO POSITIVE INTEGERS
       (COND ((BIGP X)
	      (COND ((BIGP Y) (CONSBIGNUMBER (BLCOM (CDR X) (CDR Y))))
		    ((CONSBIGNUM (CONS (_ (CADR X) Y) (CDDR X))))))
	     ((COND ((BIGP Y) (_ X (CADR Y))) ((_ X Y)))))) 

(DEFUN PLXOR (X Y) 
       ;;; COMPUTES THE LOGICAL XOR OF TWO POSITIVE INTEGERS
       (COND ((BIGP X)
	      (COND ((BIGP Y) (CONSBIGNUMBER (BXOR (CDR X) (CDR Y))))
		    ((CONSBIGNUM (CONS (BOOLE 6. (CADR X) Y)
				       (CDDR X))))))
	     ((COND ((BIGP Y)
		     (CONSBIGNUM (CONS (BOOLE 6. X (CADR Y))
				       (CDDR Y))))
		    ((BOOLE 6. X Y)))))) 

(DEFUN CONSBIGNUMBER (X) 
       (COND ((ATOM X) X) ((NULL (CDR X)) (CAR X)) ((CONSBIGNUM X)))) 

(DEFUN LAND (A B) 
       ;;; DOES LOGICAL AND OF TWO INTEGERS, POSITIVE OR NEGATIVE
       (COND ((EQ A B) A)
	     ((MINUSP A)
	      (COND ((MINUSP B) (LNOT (PLOR (LNOT A) (LNOT B))))
		    ((PLCOM B (LNOT A)))))
	     ((COND ((MINUSP B) (PLCOM A (LNOT B))) ((PLAND A B)))))) 

(DEFUN LOR (A B) 
       ;;; DOES LOGICAL OR OF TWO INTEGERS, POSITIVE OR NEGATIVE
       (COND ((EQ A B) A)
	     ((MINUSP A)
	      (COND ((MINUSP B) (LNOT (PLAND (LNOT A) (LNOT B))))
		    ((LNOT (PLCOM (LNOT A) B)))))
	     ((COND ((MINUSP B) (LNOT (PLCOM (LNOT B) A)))
		    ((PLOR A B)))))) 

(DEFUN LCOM (A B) 
       ;;; DOES LOGICAL COMPLEMENT OF TWO INTEGERS, POSITIVE OR NEGATIVE
       (COND ((EQ A B) 0.)
	     ((MINUSP A)
	      (COND ((MINUSP B) (PLCOM (LNOT B) (LNOT A)))
		    ((LNOT (PLOR (LNOT A) B)))))
	     ((COND ((MINUSP B) (PLAND A (LNOT B))) ((PLCOM A B)))))) 

(DEFUN LXOR (A B) 
       (COND ((EQ A B) A)
	     ((MINUSP A)
	      (COND ((MINUSP B) (PLXOR (LNOT A) (LNOT B)))
		    ((LNOT (PLXOR (LNOT A) B)))))
	     ((COND ((MINUSP B) (LNOT (PLXOR A (LNOT B))))
		    ((PLXOR A B)))))) 

(DEFUN LREDUCE (N L)
       ;;; LOGICALLY REDUCE A LIST VIA A BIT VECTOR A LA APL.
       (COND ((ZEROP N) NIL)
	     ((= N -1) L)
	     ((PLUSP N) (PREDUCE N L))
	     ((NPREDUCE N L))))

(DEFUN PREDUCE (N L)
       ;;; LOGICALLY REDUCE A LIST VIA A POSITIVE BIT VECTOR.
       (COND ((BIGP N) (BREDUCE (CDR N) L))
	     ((FREDUCE N L))))

(DECLARE (SPECIAL LN) (FIXNUM C N))

(DEFUN BREDUCE (LN L)
       ;;; LOGICALLY REDUCE A LIST VIA A LIST OF POSITIVE FIXNUMS.
       (COND ((NULL LN) NIL)
	     ((NULL L) NIL)
	     ((BFREDUCE 35. (CAR LN) L))))

(DEFUN BFREDUCE (C N L)
       (COND ((NULL L) NIL)
	     ((ZEROP C) (BREDUCE (CDR LN) L))
	     ((ODDP N) (CONS (CAR L)
			     (BFREDUCE (1- C)
				       (LSH N -1)
				       (CDR L))))
	     ((BFREDUCE (1- C) (LSH N -1) (CDR L)))))

(DEFUN FREDUCE (N L)
       ;;; LOGICALLY REDUCE A LIST VIA A POSITIVE FIXNUM BIT VECTOR.
       (COND ((ZEROP N) NIL)
	     ((ODDP N) (CONS (CAR L) (FREDUCE (LSH N -1) (CDR L))))
	     ((FREDUCE (LSH N -1) (CDR L)))))

(DEFUN LELEMENT (N L)
       ;;; TEST IF THE N'TH BIT IS ON IN THE BIGNUM L.
       (COND ((MINUSP N) (ERR 'N<0-LELEMENT))
	     ;;; IF L NEG, SEE IF N MISSING IN L COMPLEMENT.
	     ((MINUSP L) (NOT (LELEMENT N (LNOT L))))
	     ;;; IF L A BIGNUM, RUN DOWN LIST OF FIXNUMS.
	     ((BIGP L) (BELEMENT N (CDR L)))
	     ;;; CHECK IF BIT ON IN SHIFTED FIXNUM.
	     ((ODDP (LSH L (MINUS N))))))

(DEFUN BELEMENT (N L)
       ;;; TEST IF THE N'TH BIT IS ON IN THE LIST OF FIXNUMS L.
       (COND ((NULL L) NIL)
	     ;;; IF BIT IS IN CURRENT WORD, CHECK IT.
	     ((< N 35.) (ODDP (LSH (CAR L) (MINUS N))))
	     ;;; OTHERWISE, TRY NEXT WORD.
	     ((BELEMENT (- N 35.) (CDR L)))))

