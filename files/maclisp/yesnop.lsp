;;; DEFVSY    				-*-Mode:Lisp;Package:SI;Lowercase:T-*-
;;; **************************************************************************
;;; *** NIL **** NIL/MACLISP/LISPM Functions for Asking for a Yes/No Answer **
;;; **************************************************************************
;;; ******** (c) Copyright 1981 Massachusetts Institute of Technology ********
;;; **************************************************************************

(herald YESNOP /44)

#-NIL (include ((lisp) subload lsp))

#-NIL 
(eval-when (eval compile)
  (subload SHARPCONDITIONALS)
  )

#+(or NIL LISPM)
(globalize "Y-OR-N-P" "YES-OR-NO-P")

(defvar QUERY-IO (if (boundp 'STANDARD-OUTPUT) STANDARD-OUTPUT 'T)
  "Just so it won't be undefined.  Also, announce SPECIAL.")

;;Following subload sets up QUERY-IO as a SFA in MacLISP
#M (subload QUERIO)

#+(local MacLISP)
 (eval-when (compile)
     (*lexpr STRING-TRIM) 
     (mapc '(lambda (x) (putprop x 'T 'SKIP-WARNING))
	   '(Y-OR-N-P YES-OR-NO-P)))

(defvar SI:YESNOP-FORMATTER 
	#+MacLISP #'?FORMAT 
	#-MacLISP #'FORMAT 
  "Function to call for obtaining a correct FORMAT facility.")


(eval-when (eval compile)
(defmacro argv-length (argv)
  #M argv 
  #N `(VECTOR-LENGTH ,argv) 
  #Q `(LENGTH ,argv)
)
(defmacro argv-ref (a i)
  #N `(VREF ,a ,i)
  #M `(ARG (1+ ,i))
  #Q `(NTH ,i ,a)
  )
(defmacro argv-rest (argv i)
  #M `(LISTIFY (- ,i ,argv)) 
  #N `(TO-LIST ,argv 2)
  #Q `(CDDR ,ARGV)
  )
)



(defun Y-OR-N-P    #+MacLISP w #-MacLISP (&rest w) 
  (si:do-a-yesnop 'Y-OR-N-P    w))

(defun YES-OR-NO-P #+MacLISP w #-MacLISP (&rest w) 
  (si:do-a-yesnop 'YES-OR-NO-P w))

#M (defvar SI:YESNOP-NO "No")
#M (defvar SI:YESNOP-YES "Yes")

(defun SI:DO-A-YESNOP (fullp argv)
    "Does the prompt and TYI or READLINE for Yes-OR-No-P"
   #M (subload-function FORMAT)
   (let ((stream QUERY-IO) 
	 (prompt '||)
	 (n (argv-length argv))
	 istream ostream 
	 streamp  promptp frobs)
      ;;(&optional (stream QUERY-IO streamp) (prompt '|| promptp) &restl frobs)
     (cond ((> n 0) 
	     (setq stream (argv-ref argv 0) streamp 'T)
	     (cond ((> n 1)
		     (setq stream (argv-ref argv 1) streamp 'T)
		     (setq frobs (if (= n 2) 
				     () 
				     (argv-rest argv 2)))))))
     (cond ((and streamp 			;Allow (y-or-n-p "&Foodp")
		 (not 				; ie., reverse-order args
		   #M (or (memq stream '(() T))
			  (sfap stream)
			  (filep stream))
		   #N (streamp stream)
		   #Q (si:io-stream-p stream)
		  ))
	    (and promptp (setq frobs (cons prompt frobs)))
	    (setq prompt stream
		  stream QUERY-IO)))
     (setq istream (setq ostream stream))
     #M (let (options)
	  (if (symbolp ostream) (setq ostream TYO istream TYI))
	  (setq options (car (status FILEMODE ostream)))
	  (if (not (memq 'TTY options))
	      (error "Stream doesn't have TTY option" stream))
	  (if (not (memq 'OUT options))
	      (setq ostream (status TTYCONS istream)))
	  (if (not (memq 'IN options)) 
	      (setq istream (status TTYCONS ostream))))
     (cond ((eq fullp 'Y-OR-N-P)
	     (do ((char -1)) 
		 (() )			;DO repeatedly
	       (declare (fixnum char))
		;; LISPM does FRESH-LINE, we let it be in FORMAT str
	        ;;  (cursorpos 'A stream) 
	       (lexpr-funcall SI:YESNOP-FORMATTER ostream prompt frobs)
	       (princ '| (Y or N) | ostream)
	       (setq char (tyi istream))
	       (cond ((or (= char #/N) (= char #/n))
		      (princ '|  (No)| ostream)
		      (return () ))
		     ((or (= char #/Y) (= char #/y))
		      (princ '|  (Yes)| ostream)
		      (return 'T)))))
	   ( (do ((line))
		 (() )			;DO repeatedly
	       (declare (fixnum len))
	       (lexpr-funcall SI:YESNOP-FORMATTER ostream prompt frobs)
	       (princ '| (Yes or No) | ostream)
	       (setq line (readline istream -1))
	       (if #M (status feature STRING) #N 'T  #Q 'T 
		     (progn 
		      #M (cond 
			   ((not (stringp SI:YESNOP-NO))
			     (setq SI:YESNOP-NO (to-string SI:YESNOP-NO)
				   SI:YESNOP-YES (to-string SI:YESNOP-YES))))
		      (setq line (string-trim '(#\SPACE #\RUBOUT #\BS #\TAB) 
					      (to-string line)))
		      (if (string-equal line #+MacLISP SI:YESNOP-NO 
					     #-MacLISP "No") 
			  (return () ))
		      (if (string-equal line #+MacLISP SI:YESNOP-YES 
					     #-MacLISP "Yes")
			  (return *:TRUTH)))
		   #M (progn 
		        (setq line (delete #\SPACE (exploden line)))
			(cond ((null line))
			      ((or (= (car line) #/N) (= (car line) #/n))
			        (pop line)
				(and line 
				     (or (= (car line) #/O) (= (car line) #/o))
				     (null (cdr line))
				     (return () )))
			      ((or (= (car line) #/Y) (= (car line) #/y))
			        (pop line)
				(and (or (= (car line) #/E) (= (car line) #/e))
				     (prog2 (pop line) 'T)
				     (or (= (car line) #/S) (= (car line) #/s))
				     (null (cdr line))
				     (return 'T)))))))))))


