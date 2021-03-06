;;; -*-LISP-*- 

;;; This function acts like READLINE, except instead of returning
;;;  a "compressed" symbol, it "reads" each s-expression in the
;;;  line, and returns a list of these s-expressions.
;;; Arguments: 0 to 2, just like READLINE, an optional EOF value, 
;;;  and an optional input file.  Default is () for EOF value, and
;;;  TYI for input file.

(herald LINEREAD /2)

(declare (setq defmacro-for-compiling () defmacro-displace-call () ))
(defmacro SQUIDIFY (x) 
       (COND ((MEMQ COMPILER-STATE '(COMPILE MAKLAP DECLARE))
	     `(,squid (LIST ',x)))
	     (`(QUOTE ,(list x)))) )
       

(defun LINEREAD n  
 (and (> n 2) (error '|Too many args - LINEREAD| (listify n)))
 (LET ((OLD-CR-SYNTAX (STATUS SYNTAX 13.)) 
       (OLD-TTYREAD (STATUS TTYREAD))
       (UNIQUE (SQUIDIFY LINEREAD))
       FILE EOFFL EOFVAL 
       TTYFL OLD-ITS-TTYVARS TEM)
      (SETQ FILE (COND ((= N 0) TYI)
		       ((COND ((FILEP (SETQ TEM (ARG 1))))
			      ((MEMQ TEM '(T NIL)) 
			       (SETQ TEM TYI)
			       'T))
			(AND (> N 1) (SETQ EOFFL 'T EOFVAL (ARG 2)))
			TEM)
		       ((= N 1)
			(SETQ EOFFL 'T EOFVAL (ARG 1))
			TYI)
		       ((COND ((FILEP (SETQ TEM (ARG 2))))
			      ((MEMQ TEM '(T NIL)) 
			       (SETQ TEM TYI)
			       'T))
			(SETQ EOFFL 'T EOFVAL (ARG 1))
			TEM)))
      (COND ((AND (STATUS FEATURE ITS)
		  (MEMQ 'TTY (CAR (STATUS FILEMODE FILE))))
	     (SETQ TTYFL 'T)
	     (SETQ OLD-ITS-TTYVARS (STATUS TTY))))
      (UNWIND-PROTECT 
       (PROG (LIST-OF-FORMS START-CHAR)
	     (SETSYNTAX 13. 197472. ())		;Make <cr> both a "Force-feed" 
			   ;601540		; and a "single" char object.
	     (SSTATUS TTYREAD ())
	     (COND (TTYFL 
		     ;TURN OFF ITS ACTIVATION CHARS EXCEPT FOR <bs> and <cr>
		    (SSTATUS TTY (BOOLE 6 34087042. (CAR OLD-ITS-TTYVARS))
					 ;000202020202
				 (BOOLE 7 (BOOLE 6 2181570560. 
						  ;020202020000
						   (CADR OLD-ITS-TTYVARS))
					  8320.))
					 ;000000020200
		    )) 
	   LP   (SETQ START-CHAR (TYIPEEK 'T FILE))
		(SETQ TEM (COND ((= START-CHAR 13.) 
				 (TYI FILE)		;Flush worthless <cr>
				 (RETURN (NREVERSE LIST-OF-FORMS)))
				((= START-CHAR 41.)
				 (PROG2 (SETSYNTAX 13. OLD-CR-SYNTAX () )
					(READ UNIQUE FILE)
					(SETSYNTAX 13. 197472. ())
							;601540
					))
				((READ UNIQUE FILE))))
		(AND (EQ TEM UNIQUE) (RETURN (AND EOFFL EOFVAL)))
		(PUSH TEM LIST-OF-FORMS)
		(GO LP))
       (AND OLD-TTYREAD (SSTATUS TTYREAD T))
       (SETSYNTAX 13. OLD-CR-SYNTAX ())
       (COND (TTYFL (SSTATUS TTY (CAR OLD-ITS-TTYVARS) (CADR OLD-ITS-TTYVARS))
		    (SSTATUS TTYREAD T))))))

