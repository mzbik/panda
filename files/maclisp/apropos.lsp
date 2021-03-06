; -*-LISP-*-
; Find all atoms in the current obarray whose PNAME's contain a given string.
; TWAs (truly worthless atoms) are ignored unless value of APROPOS is non-null.
; Example:  (APROPOS 'CHAR) returns
;    (CHARPOS GETCHAR GETCHARN)

(DECLARE (SPECIAL APROPOS))

(OR (BOUNDP 'APROPOS) (SETQ APROPOS () ))

(DEFUN APROPOS (ARG)
  (DECLARE (FIXNUM I FIRSTI MAXFIRSTI NEXTFIRSTI CN))
  (PROG (MATCHL LARG ANSL)
      A (COND ((NOT (SYMBOLP ARG))
	       (SETQ ARG (ERROR '|Non-symbol - APROPOS| ARG 'WRNG-TYPE-ARG))
	       (GO A)))
	(SETQ MATCHL (EXPLODEN ARG) LARG (LENGTH MATCHL))
	(MAPATOMS 
	 '(LAMBDA (SYM)
	   (COND ((OR APROPOS (BOUNDP SYM) (PLIST SYM))				;Test if not TWA
		  (DO ((FIRSTI 1 NEXTFIRSTI)					;First index for scanning
		       (MAXFIRSTI (- (FLATC SYM) LARG -1))
		       (NEXTFIRSTI 0)
		       (CN 0))
		      ((> FIRSTI  MAXFIRSTI)  () )
		    (SETQ NEXTFIRSTI (1+ FIRSTI))
		    (COND ((NOT (= (CAR MATCHL) (GETCHARN SYM FIRSTI))))
			  ((DO ((I (1+ FIRSTI) (1+ I))				;Found 1st char match
				(NFI-FL)
				(L (CDR MATCHL) (CDR L)))
			       ((NULL L) 'T)
			     (SETQ CN (GETCHARN SYM I))
			     (AND (NULL NFI-FL)					;Accellerator for FIRSTI
				  (= (CAR MATCHL) CN) 
				  (SETQ NEXTFIRSTI I NFI-FL T))
			     (AND (NOT (= (CAR L) CN)) (RETURN () )))
			   (PUSH SYM ANSL)
			   (RETURN 'T))))))))
	(RETURN ANSL)))

(DEFUN APROPOS-SORTED (ATOM)
       (SORT (APROPOS ATOM) (FUNCTION ALPHALESSP)))
