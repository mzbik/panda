
;;; -*-LISP-*-

;;; Purpose:  to permit long names, like CADADADADDDR, to be easily
;;;    macro-defined into appropriate sequences of CARs and CDRs.
;;; Use: (DEF-CARCDR CADADADADDDR CADADADDDDDR ... )
;;;	where the names must have at least 5 A/D's.

;;; Produces a format internal to the compiler when being expanded
;;;    for optimal compilation.  For interpretation, produces a
;;;    LAMBDA form with a composition of initial carcdr functions
;;;    of up to 4 deep, which should be (already) defined primitively.



(DEFMACRO DEF-CARCDR L 
    `(PROGN 'COMPILE 
	    ,@(mapcar '(lambda (x) `(DEFPROP ,x C*R MACRO)) l)))

(DEFUN C*R (X)
   (DECLARE (SPECIAL CARCDR))		;Gets the complr's CARCDR variable
   (LET (((NAME ARG1 . L) X))
	(AND L (ERROR '|Extra args in call to C*R macro| X 'WRNG-NO-ARGS))
	(AND (OR (< (LENGTH (SETQ L (EXPLODEC NAME))) 7)
		 (NOT (EQ (CAR L) 'C))
		 (NOT (EQ (CAR (SETQ L (NREVERSE (CDR L)))) 'R))
		 (DO L (SETQ L (NREVERSE (CDR L))) (CDR L) (NULL L)
		     (AND (NOT (MEMQ (CAR L) '(A D))) (RETURN 'T))))
	     (ERROR '|Invalid name for C*R macro| X 'WRNG-TYPE-ARG))
	`(,(COND ((EQ COMPILER-STATE 'COMPILE) `(,carcdr ,@(nreverse l)))
		 (`(LAMBDA (X) ,(|c*r-expander/|| l 'X))))
	  ,arg1)))

(DEFUN |c*r-expander/|| (L ARG) 
  (COND ((< (LENGTH L) 5) `(,(implode (nconc (list 'C) l '(R))) ,arg))
	((LET* ((/3TAIL (NTHCDR 3 L)) (/4TAIL (CDR /3TAIL)))
	       (RPLACD /3TAIL () )
	       (|c*r-expander/|| L (|c*r-expander/|| /4TAIL ARG))))))

