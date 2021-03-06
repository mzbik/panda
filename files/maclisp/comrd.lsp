;;; -*- LISP -*-
;;; COMRD: A library that implements a completing reader.
;;; Written by KMP some time ago, (obviously before # readmacro
;;; and defmacro were in use in maclisp), moved to LIBDOC by GJC
;;; as this is of general use as a command reader for
;;; interactive programs.
;;; The simplest and most common call will be
;;; (completing-read "prompt-> " '(foo bar baz bomb))

(herald comrd)

(DECLARE (SPECIAL COMPLETING-READER-OBJECT-HEADER)
	 (*LEXPR *COMPLETING-READ-OPTIONS
		 *COMPLETING-READ-PROMPT
		 *COMPLETING-READ-INSTREAM
		 *COMPLETING-READ-OUTSTREAM
		 *COMPLETING-READ-AMBIGUITY-ERROR
		 *COMPLETING-READ-NULL-ERROR
		 *COMPLETING-READ-COMPLETION-CHARS
		 *COMPLETING-READ-RETURN-CHARS
		 *COMPLETING-READ-CASE-CONVERT
		 *COMPLETING-READ-LAST-CASE
		 *COMPLETING-READ-OVERRUBOUT-RETURN
		 *COMPLETING-READ-CHARS-READ))

(SSTATUS TTYINT 23. NIL) ; Turn off ^W as a tty interrupt
(SSTATUS TTYINT 21. NIL) ; Turn off ^U as a tty interrupt

(EVAL-WHEN (EVAL COMPILE)
  (OR (GET 'TTY 'VERSION)
      (LOAD (CASEQ (STATUS OPSYS)
	      ((ITS) '((DSK LIBLSP) TTY))
	      (T '((LISP)TTY))))))

(DEFUN LAMBDA MACRO (FORM) (LIST 'FUNCTION FORM))

;;; *COMPLETING-READ and *COMPLETING-READ1
;;;
;;; *COMPLETING-READ prints a newline and a prompt.
;;; *COMPLETING-READ1 starts in cold (this is good for if completion
;;;   has been done and user rubs back out into the read)
;;;
;;; Args are:
;;;
;;;  PROMPT: What to type out as a prompt if anything.
;;;  CHARS-PENDING: What characters have already been read (won't echo).
;;;  INSTREAM: Where to read more chars from.
;;;  OUTSTREAM: Where to do type-out to.
;;;  AMBIGUITY-ERROR: If T, then beep instead of return if result is ambiguous.
;;;  NULL-ERROR: If T, then beep instead of return if result is null.
;;;  COMPLETION-CHARS: List of fixnums for chars that show completion.
;;;  RETURN-CHARS: List of fixnums for chars that return value(s).
;;;  CASE-CONVERT: If T, then lowercase stuff input gets canonicalized.
;;;  OVER-RUBOUT-RETURN-FLAG: Should form return if over-rubout?
;;;			      If non-NIL returns OVER-RUBOUT for too many
;;;			      rubouts, WORD-RUBOUT for ^W, and LINE-RUBOUT 
;;;			      for ^U.
;;;
;;; Returns a list whose CAR is the list of characters read and the
;;; CDR of which is the set of still-possible completions at the end of the
;;; read.

(DEFUN *COMPLETING-READ (PROMPT OPTIONS INSTREAM OUTSTREAM
				AMBIGUITY-ERROR NULL-ERROR
				COMPLETION-CHARS RETURN-CHARS
				CASE-CONVERT OVER-RUBOUT-RETURN-FLAG)
       (TERPRI OUTSTREAM)
       (PRINC PROMPT OUTSTREAM)
       (*COMPLETING-READ1 PROMPT OPTIONS () INSTREAM OUTSTREAM
			  AMBIGUITY-ERROR NULL-ERROR
			  COMPLETION-CHARS RETURN-CHARS
			  CASE-CONVERT OVER-RUBOUT-RETURN-FLAG))

(DEFUN *COMPLETING-READ1 (PROMPT OPTIONS CHARS-PENDING INSTREAM OUTSTREAM
				 AMBIGUITY-ERROR NULL-ERROR
				 COMPLETION-CHARS RETURN-CHARS
				 CASE-CONVERT OVER-RUBOUT-RETURN-FLAG)
       (LET ((COMPLETION-OBJECT (*COMPLETING-READ-OBJECT
				 OPTIONS
				 PROMPT
				 INSTREAM
				 OUTSTREAM
				 AMBIGUITY-ERROR
				 NULL-ERROR
				 COMPLETION-CHARS
				 RETURN-CHARS
				 CASE-CONVERT
				 OVER-RUBOUT-RETURN-FLAG)))
	    (MAPC (LAMBDA (X) (*COMPLETING-READ-PUSH-COMPLETION
			       X
			       COMPLETION-OBJECT))
		  CHARS-PENDING)
	    (*CATCH 'COMPLETING-READ-EXIT
		    (DO-WITH-TTY-OFF
		     (DO ()
			 (NIL)
			 (*COMPLETING-READ-TYI COMPLETION-OBJECT))))))

;;; (COMPLETING-READ <prompt> <options>)
;;; I/O default is to/from tty
;;; ambiguous or null response acceptable
;;; return or space causes return
;;; altmode causes completion
;;; no initial character
;;;
;;; Sample:  (COMPLETING-READ '> '(THIS THAT THOSE))
;;;

(DEFUN COMPLETING-READ (PROMPT OPTIONS)
       (CDR (*COMPLETING-READ PROMPT OPTIONS TYI TYO
			      T T
			      '(27.) '(13. 32.)
			      T NIL)))

(DEFUN *COMPLETING-READ-SOFT-TYI (COMPLETION CHAR)
       (LET ((OUTSTREAM (*COMPLETING-READ-OUTSTREAM COMPLETION)))
	    (TYO CHAR OUTSTREAM)
	    (*COMPLETING-READ-PUSH-COMPLETION CHAR COMPLETION)))

(DEFUN *COMPLETING-READ-CASE-FUNCTION (CHAR)
       (COND ((AND (> CHAR 96.) (< CHAR 123.))
	      '*COMPLETING-READ-LOWERCASIFY)
	     (T
	      '*COMPLETING-READ-UPPERCASIFY)))

(DEFUN *COMPLETING-READ-TYI (COMPLETION)
       (LET ((INSTREAM         (*COMPLETING-READ-INSTREAM COMPLETION))
	     (OUTSTREAM        (*COMPLETING-READ-OUTSTREAM COMPLETION)))
	    (LET ((CHAR (TYI INSTREAM)))
		 (COND ((= CHAR 12.)
			(CURSORPOS 'C OUTSTREAM)
			(*COMPLETING-READ-REDISPLAY-LINE COMPLETION))
		       ((= CHAR 18.)
			(*COMPLETING-READ-REDISPLAY-LINE COMPLETION))
		       ((MEMBER CHAR '(63. 2120.))
			(*COMPLETING-READ-DISPLAY-OPTIONS COMPLETION)
			(*COMPLETING-READ-REDISPLAY-LINE COMPLETION))
		       ((MEMBER CHAR (*COMPLETING-READ-COMPLETION-CHARS
				      COMPLETION))
			(*COMPLETING-READ-ATTEMPT-COMPLETION COMPLETION))
		       ((MEMBER CHAR (*COMPLETING-READ-RETURN-CHARS
				      COMPLETION))
			(*COMPLETING-READ-RETURN COMPLETION CHAR))
		       ((= CHAR 23.)
			(PRINC '|/| TYO)
			(COND
			 ((*COMPLETING-READ-OVERRUBOUT-RETURN COMPLETION)
			  (*THROW 'COMPLETING-READ-EXIT 'WORD-RUBOUT))
			 (T
			  (*COMPLETING-READ-RESET-COMPLETION COMPLETION)
			  (*COMPLETING-READ-REDISPLAY-LINE COMPLETION))))
		       ((= CHAR 21.)
			(PRINC '|/| TYO)
			(COND
			 ((*COMPLETING-READ-OVERRUBOUT-RETURN COMPLETION)
			  (*THROW 'COMPLETING-READ-EXIT 'LINE-RUBOUT))
			 (T
			  (*COMPLETING-READ-RESET-COMPLETION COMPLETION)
			  (*COMPLETING-READ-REDISPLAY-LINE COMPLETION))))
		       ((= CHAR 127.)
			(LET ((CHAR
			       (*COMPLETING-READ-POP-COMPLETION COMPLETION)))
			     (COND (CHAR
				    (COND ((MEMQ 'RUBOUT
						 (STATUS FILEM OUTSTREAM))
					   (RUBOUT CHAR OUTSTREAM))
					  (T
					   (TYO 92. OUTSTREAM)
					   (TYO CHAR OUTSTREAM))))
				   ((*COMPLETING-READ-OVERRUBOUT-RETURN
				     COMPLETION)
				    (*THROW 'COMPLETING-READ-EXIT
					    'OVER-RUBOUT)))))
		       (T
			(TYO CHAR (*COMPLETING-READ-OUTSTREAM COMPLETION))
			(*COMPLETING-READ-LAST-CASE
			 COMPLETION
			 (*COMPLETING-READ-CASE-FUNCTION CHAR))
			(*COMPLETING-READ-PUSH-COMPLETION CHAR COMPLETION))))))

(DEFUN *COMPLETING-READ-REDISPLAY-LINE (COMPLETION)
       (LET ((OUTSTREAM (*COMPLETING-READ-OUTSTREAM COMPLETION)))
	    (CURSORPOS 'A OUTSTREAM)
	    (PRINC (*COMPLETING-READ-PROMPT COMPLETION) OUTSTREAM)
	    (DO ((L (REVERSE (*COMPLETING-READ-CHARS-READ COMPLETION))
		    (CDR L))
		 (CASE-FUN (*COMPLETING-READ-LAST-CASE COMPLETION)))
		((NULL L))
		(TYO (FUNCALL CASE-FUN (CAR L)) OUTSTREAM))))

(DEFUN *COMPLETING-READ-RETURN (COMPLETION CHAR)
       (LET ((OPTIONS (CAR (*COMPLETING-READ-OPTIONS COMPLETION)))
	     (NUMBER-OF-CHARS)
	     (CHARS))
	    (COND ((OR (AND (NULL OPTIONS)
			    (NOT (*COMPLETING-READ-NULL-ERROR COMPLETION)))
		       (= (LENGTH OPTIONS) 1.)
		       (NOT (*COMPLETING-READ-AMBIGUITY-ERROR COMPLETION)))
		   (COND ((AND (NOT (= CHAR 13.))
			       (= (LENGTH OPTIONS) 1.))
			  (*COMPLETING-READ-SHOW-COMPLETION COMPLETION)))
		   (TYO CHAR (*COMPLETING-READ-OUTSTREAM COMPLETION))
		   (*THROW 'COMPLETING-READ-EXIT
			   (CONS (CONS
				  CHAR
				  (*COMPLETING-READ-CHARS-READ COMPLETION))
				 OPTIONS))))
	    (SETQ NUMBER-OF-CHARS
		  (LENGTH (SETQ CHARS
				(*COMPLETING-READ-CHARS-READ COMPLETION))))
	    (MAPC (LAMBDA (X)
			  (COND ((= (FLATC X) NUMBER-OF-CHARS)
				 (TYO CHAR
				      (*COMPLETING-READ-OUTSTREAM COMPLETION))
				 (*THROW 'COMPLETING-READ-EXIT
					 (LIST (CONS CHAR CHARS) X)))))
		  OPTIONS)
	    (TYO 7. (*COMPLETING-READ-OUTSTREAM COMPLETION))
	    (*COMPLETING-READ-ATTEMPT-COMPLETION COMPLETION)))

(DEFUN *COMPLETING-READ-DISPLAY-OPTIONS (COMPLETION)
       (LET ((OUTSTREAM (*COMPLETING-READ-OUTSTREAM COMPLETION))
	     (OPTIONS (CAR (*COMPLETING-READ-OPTIONS COMPLETION))))
	    (CURSORPOS 'A OUTSTREAM)
	    (COND ((NOT OPTIONS)
		   (PRINC '|No options match.| OUTSTREAM))
		  ((= (LENGTH OPTIONS) 1.)
		   (PRINC '|Unambiguous match: | OUTSTREAM)
		   (PRINC (CAR OPTIONS) OUTSTREAM))
		  (T
		   (PRINC '|Options are: | OUTSTREAM)
		   (PRINC (CAR OPTIONS) OUTSTREAM)
		   (DO ((L (CDR OPTIONS) (CDR L)))
		       ((NULL L))
		       (PRINC '|, | OUTSTREAM)
		       (COND ((> (+ (FLATC (CAR L)) (CHARPOS OUTSTREAM)) 67.)
			      (TERPRI OUTSTREAM)
			      (TYO 9. OUTSTREAM)))
		       (PRINC (CAR L) OUTSTREAM))))))

(DEFUN *COMPLETING-READ-ATTEMPT-COMPLETION (COMPLETION)
       (LET ((OUTSTREAM       (*COMPLETING-READ-OUTSTREAM  COMPLETION))
	     (OPTIONS    (CAR (*COMPLETING-READ-OPTIONS    COMPLETION)))
	     (LEN (1+ (LENGTH (*COMPLETING-READ-CHARS-READ COMPLETION)))))
	    (COND ((NULL OPTIONS)
		   (TYO 7. OUTSTREAM))
		  (T
		   (DO ((I LEN (1+ I))
			(CASE-FUN (*COMPLETING-READ-LAST-CASE COMPLETION))
			(END (FLATC (CAR OPTIONS))))
		       ((OR (> I END)
			    (NOT (*COMPLETING-READ-MATCH-ALL OPTIONS I)))
			(COND ((= I LEN)
			       (TYO 7. OUTSTREAM))))
		       (*COMPLETING-READ-SOFT-TYI
			COMPLETION
			(FUNCALL CASE-FUN (GETCHARN (CAR OPTIONS) I))))))))
							    
(DEFUN *COMPLETING-READ-SHOW-COMPLETION (COMPLETION)
       (LET ((OPTION (CAAR (*COMPLETING-READ-OPTIONS COMPLETION)))
	     (LEN (1+ (LENGTH (*COMPLETING-READ-CHARS-READ COMPLETION)))))
	    (DO ((I LEN (1+ I))
		 (CASE-FUN (*COMPLETING-READ-LAST-CASE COMPLETION))
		 (END (FLATC OPTION)))
		((> I END))
		(*COMPLETING-READ-SOFT-TYI
		 COMPLETION
		 (FUNCALL CASE-FUN (GETCHARN OPTION I))))))

(DEFUN *COMPLETING-READ-MATCH-ALL (OPTIONS I)
       (DO ((C (GETCHARN (CAR OPTIONS) I))
	    (O (CDR OPTIONS) (CDR O)))
	   ((NULL O) T)
	   (COND ((NOT (= C (GETCHARN (CAR O) I)))
		  (RETURN NIL)))))

(EVAL-WHEN (EVAL LOAD)
	(SETQ COMPLETING-READER-OBJECT-HEADER
	      (MAKNAM '(/# C O M P L E T I O N))))

(DEFUN *COMPLETING-READ-OBJECT? (X)
       (AND (NOT (ATOM X))
	    (EQ (CAR X) COMPLETING-READER-OBJECT-HEADER)))

(DEFUN *COMPLETING-READ-OBJECT (OPTIONS PROMPT INSTREAM OUTSTREAM
					AMBIGUITY-ERROR NULL-ERROR
					COMPLETION-CHARS RETURN-CHARS
					CASE-CONVERT OVER-RUBOUT-RETURN-FLAG)
       (HUNK COMPLETING-READER-OBJECT-HEADER
	     (NCONS OPTIONS) ; Options stack
	     PROMPT          ; How to prompt
	     INSTREAM        ; Where to get input from
	     OUTSTREAM       ; Where to output echo
	     AMBIGUITY-ERROR ; Is ambiguity an error?
	     NULL-ERROR      ; Is null choice an error?
	     COMPLETION-CHARS; Chars that complete 
	     RETURN-CHARS    ; Chars that cause a return
	     CASE-CONVERT    ; Should lowercase chars convert?
	     (LAMBDA (X) X)  ; What case to do completions in 
	     OVER-RUBOUT-RETURN-FLAG   ; Return if over-rubout occurs?
	     ()              ; Stack of chars read
	     ))

(DEFUN *COMPLETING-READ-OPTIONS X
       (COND ((= X 1.) (CXR 2. (ARG 1.)))
	     (T (RPLACX 2. (ARG 1.) (ARG 2.)))))

(DEFUN *COMPLETING-READ-PROMPT X
       (COND ((= X 1.) (CXR 3. (ARG 1.)))
	     (T (RPLACX 3. (ARG 1.) (ARG 2.)))))

(DEFUN *COMPLETING-READ-INSTREAM X
       (COND ((= X 1.) (CXR 4. (ARG 1.)))
	     (T (RPLACX 4. (ARG 1.) (ARG 2.)))))

(DEFUN *COMPLETING-READ-OUTSTREAM X
       (COND ((= X 1.) (CXR 5. (ARG 1.)))
	     (T (RPLACX 5. (ARG 1.) (ARG 2.)))))

(DEFUN *COMPLETING-READ-AMBIGUITY-ERROR X
       (COND ((= X 1.) (CXR 6. (ARG 1.)))
	     (T (RPLACX 6. (ARG 1.) (ARG 2.)))))

(DEFUN *COMPLETING-READ-NULL-ERROR X
       (COND ((= X 1.) (CXR 7. (ARG 1.)))
	     (T (RPLACX 7. (ARG 1.) (ARG 2.)))))

(DEFUN *COMPLETING-READ-COMPLETION-CHARS X
       (COND ((= X 1.) (CXR 8. (ARG 1.)))
	     (T (RPLACX 8. (ARG 1.) (ARG 2.)))))

(DEFUN *COMPLETING-READ-RETURN-CHARS X
       (COND ((= X 1.) (CXR 9. (ARG 1.)))
	     (T (RPLACX 9. (ARG 1.) (ARG 2.)))))

(DEFUN *COMPLETING-READ-CASE-CONVERT X
       (COND ((= X 1.) (CXR 10. (ARG 1.)))
	     (T (RPLACX 10. (ARG 1.) (ARG 2.)))))

(DEFUN *COMPLETING-READ-LAST-CASE X
       (COND ((= X 1.) (CXR 11. (ARG 1.)))
	     (T (RPLACX 11. (ARG 1.) (ARG 2.)))))

(DEFUN *COMPLETING-READ-OVERRUBOUT-RETURN X
       (COND ((= X 1.) (CXR 12. (ARG 1.)))
	     (T (RPLACX 12. (ARG 1.) (ARG 2.)))))

(DEFUN *COMPLETING-READ-CHARS-READ X
       (COND ((= X 1.) (CXR 0. (ARG 1.)))
	     (T (RPLACX 0. (ARG 1.) (ARG 2.)))))

(DEFUN *COMPLETING-READ-RESET-COMPLETION (OBJECT)
       (*COMPLETING-READ-OPTIONS    OBJECT
				    (LAST (*COMPLETING-READ-OPTIONS OBJECT)))
       (*COMPLETING-READ-CHARS-READ OBJECT ()))

(DEFUN *COMPLETING-READ-PUSH-COMPLETION (CHAR OBJECT)
       (LET ((OPTS  (*COMPLETING-READ-OPTIONS    OBJECT))
	     (CHARS (*COMPLETING-READ-CHARS-READ OBJECT)))
	    (COND ((*COMPLETING-READ-CASE-CONVERT OBJECT)
		   (SETQ CHAR (*COMPLETING-READ-UPPERCASIFY CHAR))))
	    (*COMPLETING-READ-OPTIONS OBJECT
				      (CONS
				       (*COMPLETING-READ-PROCESS-OPTIONS
					CHAR
					(CAR OPTS)
					(1+ (LENGTH CHARS)))
				       OPTS))
	    (*COMPLETING-READ-CHARS-READ OBJECT (CONS CHAR CHARS))))

(DEFUN *COMPLETING-READ-UPPERCASIFY (X)
       (COND ((AND (> X 96.) (< X 123.)) (- X 32.))
	     (T X)))

(DEFUN *COMPLETING-READ-LOWERCASIFY (X)
       (COND ((AND (> X 64.) (< X 91.)) (+ X 32.))
	     (T X)))

(DEFUN *COMPLETING-READ-POP-COMPLETION (OBJECT)
       (LET ((CHARS (*COMPLETING-READ-CHARS-READ OBJECT)))
	    (COND (CHARS
		   (*COMPLETING-READ-OPTIONS
		    OBJECT
		    (CDR (*COMPLETING-READ-OPTIONS OBJECT)))
		   (*COMPLETING-READ-CHARS-READ OBJECT (CDR CHARS))
		   (CAR CHARS))
		  (T
		   NIL))))

(DEFUN *COMPLETING-READ-PROCESS-OPTIONS (CHAR OPTIONS N)
       (DO ((L OPTIONS (CDR L))
	    (NEW-L ()))
	   ((NULL L) (NREVERSE NEW-L))
	   (COND ((= (GETCHARN (CAR L) N) CHAR)
		  (PUSH (CAR L) NEW-L)))))

;;; (COMPLETING-READ-LINE (<prompt1> <option1[1]> <option1[2]> ...)
;;;			  (<prompt2> <option2[1]> <option2[2]> ...) ...)
;;; Prints <prompt1> and reads words on a single line returning NIL if
;;; over-rubout and (<option1-choice> <option2-choice> ... <optionN-choice>)
;;; if sucessful. <prompt2> ... <promptN> are only used if the user types
;;; <CR> to terminate the option before that. If he types <space> instead
;;; he will not be prompted. Ambiguous or null responses are not allowed.

(DEFUN (COMPLETING-READ-LINE MACRO) (X)
       `(*COMPLETING-READ-LINE1 ',(CDR X)))

(DEFUN *COMPLETING-READ-LINE1 (PROMPT-ALIST)
       (CURSORPOS 'A TYO)
       (*CATCH 'COMPLETING-READ-LINE-EXIT
	       (*COMPLETING-READ-LINE1-AUX (CAAR PROMPT-ALIST)
					   PROMPT-ALIST
					   NIL
					   T)))

(DEFUN *COMPLETING-READ-LINE1-AUX (PROMPT PROMPT-ALIST VALUES PROMPTFLAG)
       (COND ((NULL PROMPT-ALIST)
	      (*THROW 'COMPLETING-READ-LINE-EXIT
		      (NREVERSE VALUES)))
	     (T
	      (COND (PROMPTFLAG (PRINC (CAAR PROMPT-ALIST) TYO)))
	      (DO ((VAL)
		   (CHARS NIL))
		  (NIL)
		  (SETQ VAL
			(*COMPLETING-READ1 PROMPT		; Prompt
					   (CDAR PROMPT-ALIST)  ; Options
					   CHARS		; Chars read
					   TYI			; Instream
					   TYO			; Outstream
					   T			; Ambiguity 
					   T			; Null 
					   '(27.)		; Completion
					   '(32. 13.)		; Return chars
					   T			; Case
					   T))			; Over-rubout
		  (COND ((EQ VAL 'OVER-RUBOUT)
			 (RETURN NIL))
			((EQ VAL 'LINE-RUBOUT)
			 (*THROW 'COMPLETING-READ-LINE-EXIT NIL))
			((EQ VAL 'WORD-RUBOUT)
			 (CURSORPOS 'A TYO)
			 (PRINC PROMPT TYO)
			 (RETURN NIL)))
		  (SETQ CHARS (REVERSE (CAR VAL)))
		  (*COMPLETING-READ-LINE1-AUX
		   (MAKNAM (NCONC (EXPLODEN PROMPT) CHARS))
		   (CDR PROMPT-ALIST)
		   (CONS (CADR VAL) VALUES)
		   (= (CAAR VAL) 13.))
		  (SETQ CHARS (REVERSE (CDAR VAL)))
		  (COND ((= (CAAR VAL) 13.)
			 (CURSORPOS 'A TYO)
			 (PRINC PROMPT TYO)
			 (MAPC (LAMBDA (X) (TYO X TYO)) CHARS))
			(T
			 (COND ((MEMQ 'RUBOUT (STATUS FILEM TYO))
				(CURSORPOS 'X TYO))
			       (T
				(PRINC '|\ | TYO)))))))))

(SSTATUS FEATURE COMPLETING-READER-PACKAGE)
