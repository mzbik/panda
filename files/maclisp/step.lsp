

;;;			LISP Stepping Package
;;;
;;; <comments and problems accepted>              Charles Rich, TS-824
;;;						  x3-6032
;;;					          AI: RICH
;;;
;;; For complete instructions see .INFO.;STEP INFO
;;;
;;; Rewritten 11/03/76
;;;
;;;
;;; User Interface Function
;;;
;;;		Valid Forms:				set EVALHOOK*
;;;				(STEP)			NIL
;;;				(STEP T)		T
;;;				(STEP NIL)		NIL
;;;				(STEP FOO1 FOO2 ...)	(FOO1 FOO2)
;;;			

(declare (special evalhook evalhook* evalhook# prinlevel prinlength)
         (fixnum i indent)
         (setq macros nil)
         (SETQ NEWIO NIL))

;; should be compiled with RICH;UTIL >

(DEFUN STEP FEXPR (ARG) 
       (COND ((OR (NULL ARG) (CAR ARG))
	      (SETQ *RSET T)					       ;must be on for hook to work
	      (SETQ EVALHOOK# 0.)				       ;initialize depth count

              	      (SETQ EVALHOOK NIL)				       ;for safety
	      (SETQ EVALHOOK*
		    (COND ((NULL ARG) NIL)
                          ((EQ (CAR ARG) T))
                          (ARG)))
	      (SETQ EVALHOOK 'EVALHOOK*))		               ;turn system hook to my function
	     (T (SETQ EVALHOOK* NIL)))) 



(macrodef PRINT* ()
          ;; print with indentation
          (do ((i 1 (1+ i))
               (indent (* 2 evalhook#))
               (prinlevel 3)
               (prinlength 5))
              ((> i indent)(cond (prin1 (funcall prin1 form))
                                 (t (prin1 form))))
              (tyo 32.)))

;;;
;;; LISP evaluator comes here whenever EVALHOOK is Non-NIL and points here
;;; It expects me to do the evaluation and return the value.
;;;

(defun EVALHOOK* (form)
       ;; returns evaluation of form
       (cond (evalhook*
              ;; see if selective feature kicks in here
              (and (not (atom form))
                   (not (eq evalhook* t))
                   (memq (car form) evalhook*)
                   (setq evalhook* t))
              (cond ((eq evalhook* t)
                     ;; print out form before evaluation
                     (terpri)
                     (print*)
                     (cond ((atom form)
                            (cond ((not (or (numberp form)(null form)(eq form t)))
                                   (princ '| = |)
                                   ((lambda (prinlevel prinlength)
                                            (setq form (evalhook form nil))
                                            (cond (prin1 (funcall prin1 form))
                                                  (t (prin1 form))))
                                    3 5))))
                           (t ; s-expression
                            (prog (cmd hookfn)
                        cmdlp  (setq cmd (tyi tyi))
                               ;; uppercase alphabetics
                               (cond ((alpha? cmd)(setq cmd (boole 2 32. cmd))))
                               ;; dispatch on command character
                               (cond ((7bit cmd 32.)	;<sp> continue, but suppress
                                      (cond ((eq (car (getl (car form)  ;macro expansion
                                                            '(expr fexpr lexpr subr fsubr lsubr macro)))
                                                 'macro)
                                             ;; do macro expansion
                                             (setq form (funcall (get (car form) 'macro)
                                                                 form))
                                             (terpri)
                                             (print*)
                                             (go cmdlp))
                                            (t (setq hookfn 'evalhook*))))
                                     ((7bit cmd 80.)	; "P" print in full
                                      (prog (prinlevel prinlength)
                                            (cond (prin1 (terpri)(funcall prin1 form))
                                                  (t (print form))))
                                      (go cmdlp))
                                     ((or (7bit cmd 9.)(7bit cmd 13.)) ;<tab> or <cr>
                                      (setq evalhook* nil	       ;stop everything
                                            hookfn nil))
                                     ((7bit cmd 127.)		;<rubout> no deeper
                                      (setq hookfn nil))
                                     ((7bit cmd 77.)	; "M" continue including macro expansion
                                      (setq hookfn 'evalhook*))
                                     ((7bit cmd 66.)	; "B" give breakpoint
                                      (break step)
                                      (print* form)
                                      (go cmdlp))
                                     (t (tyo 7.)(go cmdlp)))
                               ;; evaluate form
                               (let ((evalhook# (1+ evalhook#)))
                                    (setq form (evalhook form hookfn)))
                               ;; print out evaluated form
                               (cond ((and evalhook* (not (zerop evalhook#)))
                                      (terpri) (print*))))))
                     ;;return evaluated form
                     form)
                    (t  (evalhook form 'evalhook*))))   ; keep looking
             (t (evalhook form 'evalhook*))))			; skip out quick
             
                                     
                                             