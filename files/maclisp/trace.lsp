;;  -*-LISP-*-
;;  ************************************************************
;;  **** MACLISP **** LISP FUNCTION TRACING PACKAGE (TRACE) ****
;;  ************************************************************
;;  * (C) COPYRIGHT 1981 MASSACHUSETTS INSTITUTE OF TECHNOLOGY *
;;  ***** THIS IS A READ-ONLY FILE!  (ALL WRITES RESERVED) *****
;;  ************************************************************

;; Trace package now works in both Multics and PDP-10 lisp.

;; REVISIONS:
;;  45		(Rick Grossman, 12/74)
;;	Replace the trac1 template with compilable code.
;;	Flush trprint in favor of new trace-printer.
;;	Make trace, remtrace, untrace compilable.
;;	Improve trace-edsub so that this will work:
;;	 (trace y (x wherein y)), and similarly untrace.
;;	 Note that (trace (y wherein z) (x wherein y))
;;	 still partially loses.
;;	Have untrace return only the list of actually
;;	 previously traced functions.
;;  46		(Rick Grossman, 1/75)
;;	Add trace-indenter as default print function.
;;	Fix bug:  (.. value ..) also printed the arg.
;;	Put "break" condition within scope of the "cond" one.
;;	Fix bug:  (trace (foo cond bar1 value)) lost
;;	 because trace*g4 was referenced in "value"
;;	 but never set.
;;	Fix bug:  If FEXPR or MACRO is an atom, loses.
;;	Clean up some of the duplicate trace-1 code.
;;	Add TRACE-OK-FLAG to prevent tracing calls by trace.
;;	Flush definition of PLIST.
;;	Change ADD1 to 1+.
;;	Replace MIN with open-compilable COND.
;;	Flush excess consing in trace-indenter call.
;;  50		(JONL, 1/75)
;;	Try to merge Moons hackery with Grossman's latest stuff
;; 	Add function BREAK-IN
;;	Fix bug in TRACE-INDENTER s.t. if TRACE-INDENTATION
;;	 ever goes to zero, then simply skip indentation.
;;  51		(JONL, 2/75)
;;	Use the PRIN1 variable in TRACE-INDENTER.
;;  52		(GROSS, 2/75)
;;	Lambda-bind TRACE-INDENTATION (and use a gensym name).
;;  53		(MOON Feb. 25, 1975)
;;	Take break out from control of cond, dammit!!
;;	This is the only way to break on condition without
;;	printing a lot of garbage; also it's a documented feature.
;;  54		(Gls May 7, 1975)
;;	Flush occurrences of IOG function for newio.
;;  55		(MACRAK, 26 Aug 1975)
;;	Change || to \\ in entry and exit to avoid seeing 
;;	/|/|.  Set mapex to ().  Some cosmetics.

;; 57		(JONL   JAN 22, 76)
;;	fixed parens error in trace-indenter, and flushed the 
;;	superfluous (BOUNDP 'PRIN1)

;; 59      (JONL  FEB 3, 76)
;;      added LSUBR to list of properties to be removed by remtrace
;;      gave names to some quoted lambda expressions that were being mapped
;;;            so that remtrace could remove them.

;; 60	(Macrakis, 29 March '78)
;;	Added Macroval.  (Trace (Mac Macroval)) lets you see the value
;;	returned after the form returned by the macro is evaluated.  Useful
;;	when you want to consider the macro a function.  (Trace Mac (Mac
;;	Macroval)) lets you see both parts.  Also cleaned up some trivia.

;; 63  	   (JONL  Oct 20, '78)
;;	Add ADD1 to the TRACE*COPIES list, and use ADD1 in place 1+.
;; 64	   (jonl Nov 1, '78) Print loading message on MSGFILES 
;; 65   (JONL Jan 9, '79)  Fixed bug in tracing of autoloadables.
;; 66   (JONL Feb 13, '80) installed use of # conditionals, and MACAID
;; 			   style HERALDing.
;; 67   (JONL Jan 29, '81) flushed "(STATUS FEATURE MACAID)" and
;; 	    changed some "NIL"'s into "()".

;; Note:  When adding new functions to this file,
;;	  be sure to put their names in the list in REMTRACE.


(declare 
 (setq mapex () )	;why waste space?
 (setq defmacro-for-compiling () defmacro-displace-call () )
 (special trace-olduuo traced-stuff
  trace*g1 trace*g2 trace*g4 trace*g5
  trace*copies trace*subr-args trace-printer trace-ok-flag
  trace-indent-incr trace-indent-max)
 (fixnum ng)
 (*fexpr trace untrace remtrace) ) 


(herald TRACE /67)

(and (fboundp 'remtrace) (remtrace)) 

(setq-if-unbound trace-printer 'trace-indenter)
(setq trace-olduuo nouuo traced-stuff () trace-ok-flag 't) 
;; The flag  trace-ok-flag  is bound () inside all trace fns.


(setq
 trace*subr-args
 (list (gensym) (gensym) (gensym) (gensym) (gensym))
 trace*g1 (gensym) trace*g2 (gensym)
 trace*g4 (gensym) trace*g5 (gensym) )

;; Initial indentation.
(set trace*g5 0)



;; Define remtrace first in case the loading does not finish.

(defun remtrace fexpr (l) 
 (prog (trace-ok-flag y) 
  (errset (untrace) ()) 
  (mapc '(lambda (x) 		;this map will be expanded anyway
          (do ()
              ((null (setq y (getl x '(expr fexpr subr fsubr lsubr)))))
            (remprop x (car y))))
        '(trace trace-2 untrace remtrace untrace-1 trace-edsub
          trace-indenter break-in break-in-1)) 
  (nouuo trace-olduuo) 
  (sstatus nofeature trace) 
  (gctwa)))  


(defun untrace fexpr (l) 
 (prog (trace-ok-flag) 
  (cond
   (l (setq l (mapcan 'untrace-1 l)))  
   ((setq l (mapcan 'untrace-1 (trace))) 
    (and traced-stuff (progn (print 'lossage) (print (trace)))))) 
  (and (null traced-stuff) (nouuo trace-olduuo)) 
  (return l)))   


(defun untrace-1 (x) 
  (prog (y ret) 
    a 	(cond ((null (setq y (assoc x traced-stuff))) (return ret)) 
	      ((atom (car y)) 
		(and (eq (get (car y) (caddr y)) (cadddr y)) 
		     (remprop (car y) (caddr y)))) 
	      ('t (trace-edsub (cons (caddr y) (caar y)) 
			       (caddar y) 
			       (cadr y)))) 
	(setq traced-stuff (delq y traced-stuff)) 
	(setq ret (list x))
	(go a))) 


(defun trace-edsub (pair sym ind) (prog (y z) 
  ;; Return () if lose.
  (and (setq y (assq sym traced-stuff)) 
   (eq ind (caddr y)) 
   (setq z (getl sym (list ind))) 
   (eq (cadddr y) (cadr z)) 
   ;; We want to munge the original definition,
   ;; not the trace kludgery.
   ;; Note that this partially loses for traced macros,
   ;; since we munge the macro property, not the
   ;; trace-generated fexpr one.
   (setq sym (cdr z)) ) 
  (return
   (cond 
    ((setq y (get sym ind)) 
     (putprop sym (sublis (list pair) y) ind) ) ) ) )) 




;; Define the code to produce the trace stuff.

(defun qu* macro (x) (prog (y) 
  (or
   (and (cdr x) (null (cddr x)) (eq (caadr x) 'quote)) 
   (error 'qu*-lossage x) ) 
  (setq y (qu*1 (cadadr x))) 
  (rplaca x (car y)) (rplacd x (cdr y)) 
  (return y) )) 

(declare (eval (read))) 

(defun qu*1 (x) (prog (y) 
  (return
   (cond 
    ((atom x) (list 'quote x)) 
    ((eq (car x) 'ev) (cadr x)) 
    ('t 
     (setq y
      (cond
       ((atom (car x)) 
        (list 'cons
         (list 'quote (car x)) 
         (qu*1 (cdr x)) ) ) 
       ((eq (caar x) 'ev*) 
        (list 'append
         (cadar x) 
         (qu*1 (cdr x)) ) ) 
       ((list 'cons 
         (qu*1 (car x)) 
         (qu*1 (cdr x)) )) ) ) 
     (and (not (atom (cadr y))) (not (atom (caddr y))) 
      (eq (caadr y) 'quote) (eq (caaddr y) 'quote) 
      (setq y (list 'quote (eval y))) ) 
     (return y) ) ) ) )) 


(defun trace-1 macro (dummy) 
 '((lambda (t1 in-vals)
    (sublis trace*copies
     (qu* (quote
       (lambda (ev (cond (c) (gg) (g (car g)) (trace*g1))) 
        ((lambda
          ((ev trace*g2) (ev trace*g1) 
           (ev* (cond ((null q) (list y)))) 
           (ev* (cond (f (list trace*g4)))) 
           (ev* (cond (p (list p))))
	   (ev* (cond
	     ((eq print 'trace-indenter) (list trace*g5)) )) ) 
          (ev* (and f (list (list 'setq trace*g4 (car f))))) 
          (ev*
           (cond 
	    ((or ne (memq (car m) '(arg both))) 
	     (setq t1 (cond
               ((eq print 'trace-indenter) 
                (list print y ''enter (list 'quote y) 
                 (cond
                  ((memq (car m) '(arg both)) trace*g2)
		  ((list 'quote trace*g2)) ) 
		 (and (or n ne) (cons 'list (append ne n)))
		 trace*g5 ) ) 
               ((qu* (quote
                  ((ev print) 
                   (list (ev y) 
                    'enter
                    '(ev y) 
                    (ev*
                     (cond
                      ((memq (car m) '(arg both)) 
                       (list trace*g2) ) ) ) 
                    (ev* ne) 
                    (ev* n) ) ) ))) )) 	       
     	     (cond
              ((or f fe) 
               ;; There is a COND or ENTRYCOND
               (qu* (quote 
                 ((and
                   (ev* (and f (list trace*g4))) 
                   (ev* (and fe (list (car fe)))) 
                   (ev t1) )) )) ) 
	      ((list t1)) )) ) ) 
          (ev* (and break (list 
             (list 'break 
              y 
              break ) ))) 
          (ev
           (cond
            (q (list 'apply (list 'quote y) trace*g2)) 
	    (mac? (list 'setq trace*g1
			(list 'eval (list 'apply (list 'quote y) trace*g2))))
            ((list 'setq trace*g1
              (list 'apply (list 'quote y) trace*g2))))) 
          (ev*
           (cond
            ((and (null q) 
              (or nx (memq (car m) '(value both)))) 
             (setq t1 (cond
               ((eq print 'trace-indenter) 
                (list print y ''exit (list 'quote y) 
                 (cond
                  ((memq (car m) '(value both)) trace*g1) 
                  ((list 'quote trace*g2))) 
		 (and (or n nx) (cons 'list (append nx n)))
		 trace*g5 ) ) 
               ((qu* (quote
                  ((ev print) 
                   (list (ev y) 
                    'exit
                    '(ev y) 
                    (ev*
                     (cond
                      ((memq (car m) '(value both)) 
                       (list trace*g1)))) 
                    (ev* nx) 
                    (ev* n))))))))            
	     (cond
              ((or f fx) 
               ;; There is a COND or EXITCOND
               (qu* (quote 
                 ((and
                   (ev* (and f (list trace*g4))) 
                   (ev* (and fx (list (car fx)))) 
                   (ev t1)))))) 
	      ((list t1))))))
          (ev* (cond (mac? (list (list 'list ''quote trace*g1)))
		     ((null q) (list trace*g1))))) 
         ;; lambda args
         (ev
          (setq in-vals
		(cond
		 (c (car c)) 
		 (gg (list 'listify gg)) 
		 (g (cons 'list (car g))) 
		 ((list 'listify trace*g1)))))
         ()
         (ev* (cond ((null q) (qu* '((add1 (ev y))))))) 
         (ev* (cond (f '(() )))) 
         (ev*
          (cond
           (p
            ;; ARGPDL stuff
            (qu*
             (quote
              ((cons
                (list
                 (ev*
                  (cond ((null q) (qu* '((add1 (ev y))))))) 
                 '(ev y) 
                 (ev in-vals)) 
                (ev p))))))))
	 (ev* (cond ((eq print 'trace-indenter)
	    (list (list '+ trace*g5 'trace-indent-incr)) )))
	 ))))))
 () () )) 



;;	c is non-() for f-type, holds lambda list 
;;	 cm = (MACRO (LAMBDA ...) ...) if macro.
;;	g is non-() for expr type, (car g) is lambda list ;
;;	not c or g => l-form
;;	 gg = lexpr variable (if (), is lsubr).
;;	q if non-() means the function is go, throw, etc.,
;;	 so no return values (etc.) will be hacked.

;;	n holds list of extra quantities for typeout

;;	traced-stuff =
;;		list of currently traced stuff, typically
;;		((a 'trace 'expr newexpr) ...)
;;		(((a 'wherein b) 'expr g0003) ...)

;;	x = tracee
;;	y = new symbol for tracee
;;	m = (BOTH/ARGS/VALUE/NIL . stuff-to-print)
;;	Keyword values:
;;	 f:	COND
;;	 fe:	ENTRYCOND
;;	 fx:	EXITCOND
;;	 p:	ARGPDL
;;	 break:	BREAK
;;	 b:	(foo WHEREIN bar)
;;	 ne:	ENTRY
;;	 nx:	EXIT

;; Obscure functions:
;;	qu*	Expand a quoted list, hacking:
;;		(EV frob)	eval the frob, & use result;
;;		(EV* frob)	eval, & splice the result in.
;;
;;	trace-edsub	(pair atom ind):  Do sublis on the
;;					atom's property.
;;		This is used for WHEREIN substitution.


(defun break-in fexpr (l)  (apply 'trace (mapcar 'break-in-1 l)))

(defun break-in-1 (x)  (subst x 'x '(x break (prog2 (setq x arglist) t))))

(defun trace fexpr (l) 
 (cond
  ((null l) (mapcar 'car traced-stuff)) 
  ('t (prog2 () 
	     (mapcan 'trace-2 l) 
	     (and traced-stuff (nouuo 't) (sstatus uuolinks)))))) 

(defun trace-2 (c) 
  (prog (x y g gg n ne nx m break f fe fx b
	 p q cm sube print getl trace-ok-flag mac?) 
        (setq print trace-printer) 
        (cond 
         ((atom c) (setq x c c ())) 
         ('t 
          (setq x (car c)) 
          (setq c (cdr c)) 
          (or (atom x)
	   ;; hack list of functions
	      (return (mapcar '(lambda (x) (car (apply 'trace
						       (list (cons x c))))) 
			      x)))) )  
	(or
         (setq getl (getl x '(fexpr fsubr expr subr lsubr macro)))
	 (progn
	  (or (setq getl (get x 'autoload))  ;Function have autoload property?
	      (return (ncons (list '? x 'not 'function))))
	  (funcall autoload (cons x getl))		     ;Try autoloading to get the fun
	  (or (setq getl (getl x '(fexpr fsubr expr subr lsubr macro)))
	      (return (ncons (list '? x 'undefined 'after 'autoload))))))
        (or (atom (cadr getl)) (eq (caadr getl) 'lambda) 
         (return (ncons (list '? x 'bad (car getl) 'definition))))  
        (go y) 
     l  (setq c (cdr c)) 
     l1 (setq c (cdr c)) 
     y  (cond
         ((null c) (setq m '(both)) (go x)) 
         ((eq (car c) 'grind) 
          (setq print 'sprinter) (go l1) ) 
         ((eq (car c) 'break) 
          (setq break (cadr c)) 
          (go l) ) 
         ((eq (car c) 'cond) 
          (setq f (cdr c)) 
          (go l) ) 
         ((eq (car c) 'entrycond) 
          (setq fe (cdr c)) 
          (go l) ) 
         ((eq (car c) 'exitcond) 
          (setq fx (cdr c)) 
          (go l) ) 
         ((memq (car c) '(arg value both () nil)) 
          (setq m c)
	  (go x) ) 
         ((eq (car c) 'wherein) 
          (cond
           ((or (not (atom (cadr c))) 
             (null
              (setq y
               (getl (cadr c) '(expr fexpr macro)) ) ) ) 
            (go wherein-loss) ) )  
          (untrace-1 (setq g (list x 'wherein (cadr c)))) 
          (setq traced-stuff
           (cons
            (list g
             (car y) 
             (setq n (copysymbol x ())) ) 
            traced-stuff ) ) 
	  (setplist n (plist x))
	  (or
           (trace-edsub (cons x n)
	    (cadr c)
	    (car y))
	   ;; This can lose if the EXPR, FEXPR, or MACRO found
	   ;; above is really a tracing frob!  Hence:
	   (go wherein-loss) )
          (setq b g) 
          (setq x n) 
          (go l) ) 
         ((eq (car c) 'argpdl) 
          (cond
           ((and (setq p (cadr c)) (eq (typep p) 'symbol)) 
            (set p ()) 
            (go l) ) 
           ((return (ncons (list '? 'argpdl p)))) ) ) 
         ((eq (car c) 'entry) 
          (setq ne (cons ''\\ (cadr c))) 
          (go l) ) 
	 ((eq (car c) 'macroval) (setq mac? t) (go l))
         ((eq (car c) 'exit) 
          (setq nx (cons ''\\ (cadr c))) 
          (go l) ) 
         ((return (ncons (list '? (car c))))) ) 
     wherein-loss (return (ncons (list '? 'wherein (cadr c))))
     x  (untrace-1 x) 
        (cond
         ((setq q (memq x '(go return err throw))) 
          (cond
           ((eq (car m) 'value) 
            (setq m (cons () (cdr m))) ) 
           ((eq (car m) 'both) 
            (setq m (cons 'arg (cdr m))) ) ) ) ) 
        ;; copy atom in way that works in any lisp.
        (set (setplist (setq y (copysymbol x ())) ()) 0) 
        ;; transfer property list to new trace atom
        (setplist y (nconc (plist y) (plist x))) 
        ;;
        (setq c
         (cond
          ((memq (car getl) '(fexpr macro)) 
           (cond
            ((atom (cadr getl)) (list trace*g1)) 
            ((cadr (cadr getl))	) ) )  
          ((eq (car getl) 'fsubr) (list trace*g1)) ) ) 
        (setq cm (cond ((eq (car getl) 'macro) getl))) 
        (setq g
         (cond
          ((eq (car getl) 'expr) 
           (cond
            ((atom (setq g (cadr getl))) ()) 
            ((null (cadr g)) (cdr g)) 
            ((atom (cadr g)) 
             (setq gg (cadr g)) 
             () ) 
            ('t (cdr g)) ) ) 
          ((eq (car getl) 'subr) 
           (cond
            ((setq g (args x)) 
	     (setq g (cond ((> (cdr g) 5)
			    (do ((ng (- (cdr g) 5) (1- ng)) 
			         (l trace*subr-args (cons (gensym) l)))
			         ((zerop ng) l)))
	                   ((do ((ng (- 5 (cdr g)) (1- ng)) 
				 (l trace*subr-args (cdr l))) 
	                        ((zerop ng) l)))))
	     (list g)))))) 
	(and
	 ;; For fns called by TRACE itself, suppress tracing.
	 (or (memq x
           '(*append *delq *nconc args assoc assq boundp cons
             copysymbol fixp gctwa get getl last memq apply
             ncons nreverse plist princ print putprop remprop
             setplist sstatus status sublis terpri typep xcons
             trace-indenter sprinter delq error gensym nouuo
	     prin1 ) ) 
          (eq x prin1) ) 
	 (setq f (list
           (cond
            (f (list 'and 'trace-ok-flag (car f))) 
            ('trace-ok-flag)))))
        (setq sube
         (list (cons 'recurlev y)
	       (cons 'arglist trace*g2)))
	(setq n
         (cond
          ((cdr m) 
           (cons ''// (sublis sube (cdr m))) ) ) ) 
        (setq ne (sublis sube (list ne f fe break))) 
        (setq nx 
         (sublis 
          (cons (cons 'fnvalue trace*g1) sube) 
          (list nx  fx) ) ) 
        (setq 
         f (cadr ne) fe (caddr ne) 
         break (cadddr ne) ne (car ne) ) 
        (setq fx (cadr nx) nx (car nx)) 
        (setplist
         x
         (cons
          (cond
           (cm
            (setplist y 
             (cons 'fexpr (cons (cadr cm) (plist y))) ) 
            'macro ) 
           (c 'fexpr) 
           ('t 'expr) ) 
          (cons (trace-1) (plist x)) ) )  
        (return
         (ncons (cond (b) 
	              ('t (setq traced-stuff
				(cons (list x 'trace (car (plist x))
					    (cadr (plist x))) 
				      traced-stuff)) 
	                 x))))))


(declare (fixnum indentation trace-indent-incr trace-indent-max
		 n recurlev ) ) 

(defun trace-indenter (recurlev type fn arg stuff indentation) 
 (prog (trace-ok-flag) 
   (setq indentation (- indentation trace-indent-incr))
  (terpri) 
  (do ((n 
       (cond
	((< indentation 0) 0) 
	((< indentation trace-indent-max) indentation) 
	(trace-indent-max) ) 
       (1- n)))
      ((zerop n)) 
      (princ '/ )) 
  (princ '/() (prin1 recurlev) (princ '/ ) (prin1 type) 
  (princ '/ ) (prin1 fn) 
  (cond ((not (eq arg trace*g2)) 
	 (princ '/ ) 
	 (cond (prin1 (funcall prin1 arg))
	       ((prin1 arg))) )) 
  (do ((l stuff (cdr l))) 
      ((null l))
      (princ '/ ) 
      (cond (prin1 (funcall prin1 (car l)))
	    ((prin1 (car l)))) )
  (princ '/)/ )))    


(setq 	trace-indent-incr 2. 
	trace-indent-max 16. 
	trace*copies (mapcar '(lambda (x) (cons x (copysymbol x t))) 
			     '(trace-indenter print quote cond list 
				and setq break apply listify add1))) 

(sstatus feature trace) 
