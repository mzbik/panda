;;;   EXTEND			-*-Mode:Lisp;Package:SI;Lowercase:T-*-
;;;   ****************************************************************
;;;   *** MacLISP ******** EXTENDed datatype scheme ******************
;;;   ****************************************************************
;;;   ** (c) Copyright 1981 Massachusetts Institute of Technology ****
;;;   ****************************************************************

(herald EXTEND /288)

;;; In MACLISP, the term "EXTEND" refers to data objects not natively
;;;  supported by Maclisp which are implemented using HUNKs according
;;;  to the (STATUS USRHUNK) feature);  primarily, it is the NIL data
;;;  types and class sytems which is being supported.

(eval-when (eval compile) 
   (load '((lisp) subload))   ;; Remember, EXTMAC down-loads CERROR
   (subload EXTMAC)
)


(eval-when (eval load compile)
  (subload SENDI)
  (let ((x (get 'EXTSTR 'VERSION)))
    (cond ((or (null x) (alphalessp x "91"))
	    (remprop 'EXTSTR 'VERSION)
	    (let ((FASLOAD () ))
	      (load (autoload-filename EXTSTR))))))
  (subload EXTBAS)	;Defines SI:XREF, SI:XSET, etc.  Also loads EXTHUK.
  (cond ((status FEATURE COMPLR) 
	 (*lexpr SEND  SEND-AS  LEXPR-SEND  LEXPR-SEND-AS 
		 Y-OR-N-P  YES-OR-NO-P  SI:LOST-MESSAGE-HANDLER)
	 (fixnum (SI:HASH-Q-EXTEND))))
)


;;; SI:EXTSTR-SETUP-CLASSES is set up by EXTMAC, and includes things
;;;  like CLASS-CLASS  OBJECT-CLASS STRUCT=INFO-CLASS STRUCT-CLASS VECTOR-CLASS
(declare #.`(SPECIAL ,.si:extstr-setup-classes)
	    (special SI:SKELETAL-CLASSES))


;; There should be no user-level macro definitions in this file
(declare (setq DEFMACRO-FOR-COMPILING () DEFMACRO-DISPLACE-CALL () )
	 (setq USE-STRT7 'T MACROS () ))

;; These are just to stop silly warning msgs about redefining.
(declare (own-symbol PTR-TYPEP))
;; This is to prevent COMPLR from trying to autoload in this function
;;  when a usage of it appears in the file (due to DEFCLASS*'s or
;;  to DEFMETHOD*'s)
(declare (own-symbol FIND-METHOD ADD-METHOD SI:DEFCLASS*-1))



;;;; Defvars, and some Typical EXTEND functions


(defvar *:TRUTH 'T)		   ;In MACLISP, provide for necessary stuff

(defvar STANDARD-OUTPUT T)

;; Just to be sure that error output can go somewhere.  A more substantial
;;   definition is in the QUERIO file
(defvar ERROR-OUTPUT 'T)

;; Just to be sure that it isn't unbound.  The real setup of this var
;;  is in the SHARPM file.
(defvar /#-MACRO-DATALIST () )

(defun |#-MACRO-T| (())			;#T is "truthity", not false
   *:TRUTH)

;; An open-coding of SETSYNTAX-SHARP-MACRO
(push '(#/T () MACRO . |#-MACRO-/T|) /#-MACRO-DATALIST)

(defun PTR-TYPEP (x)
   (cond ((null x) 'CONSTANT)
	 ((not (hunkp x)) 
	   (if (eq (setq x (typep x)) 'LIST) 
	       'PAIR 
	       x))
	 ((extendp x)
	    ;;Note how this implies that extends must be hunks
	   (let ((type (type-of x)))
	     (if  (or (memq type '(VECTOR STRING BITS CHARACTER CONSTANT))
		      (memq type '(SUBR VECTOR-S FLONUM-S SMALL-FLONUM)))
		  type 
		  'EXTEND)))
	 ('T 'HUNK)))

(declare (own-symbol EQ-FOR-EQUAL?))

(defvar TARGET-FEATURES 'LOCAL 
  "So it won't be unbound, nor NIL.")

(defun EQ-FOR-EQUAL? (x &aux (type (typep x)))
  (cond ((eq type 'SYMBOL))
	((memq type '(LIST FLONUM BIGNUM)) () )
	((and (eq type  'FIXNUM)	 
	      (not (eq TARGET-FEATURES 'NIL)))
	  ;;FIXNUM type is not 'eq-for-equal?' in MacLISP, due to Pdlnums,
	  ;; but watch out for cross-compilation!!
	 () )
	((memq (type-of x) '(SYMBOL CONSTANT CHARACTER SMALL-FLONUM))
	 *:TRUTH)))


;;;; SI:DEFCLASS*-1 (must be in early, for use by later mungeables)

;;; Some old dumps may have a losing SI:DEFCLASS*-2
(eval-when (eval compile load)
  (if (equal (args 'SI:DEFCLASS*-2) '(4 . 5))
      (args 'SI:DEFCLASS*-2 '(4 . 511.)))
)


(defun SI:DEFCLASS*-1 (typep class-var supr &optional (class-name typep)
			     source-file &aux class)
  (if (cond 
       ((null (setq class (get class-name 'CLASS))))
       ('T ;;Be sure it's complete
	 (cond (SI:SKELETAL-CLASSES 
		 (mapc #'SI:INITIALIZE-CLASS SI:SKELETAL-CLASSES) 
		 (setq SI:SKELETAL-CLASSES () )))
	 (format 
	   MSGFILES
	   "~&;Re-defining class ~S ~:[~;(previously from file ~1G~A)~]~@
	    ~:[~;(in file ~2G~A)~]"
	   class-name (get (si:class-plist class) ':SOURCE-FILE) source-file)
	 (y-or-n-p "~&;Overwrite the existing class?")))
      (setq class (si:defclass*-2 class-name 
				  typep 
				  class-var 
				  supr 
				  source-file 
				  class)))
  class)


;; SI:INITIALIZE-CLASS sets the slots in the class object that require that
;; EXTEND have been loaded.

(defun SI:INITIALIZE-CLASS (class)
  (setf (si:class-SENDI-sym class) 'SI:DEFAULT-SENDI)
  (setf (si:class-sendi class) (get 'SI:DEFAULT-SENDI 'SENDI))
  (setf (si:class-CALLI-sym class) 'SI:DEFAULT-CALLI)
  (setf (si:class-calli class) (get 'SI:DEFAULT-CALLI 'CALLI))
  (setf (si:class-map-methods-sym class) 'SI:STANDARD-MAP-OVER-METHODS)
  (setf (si:class-map-methods-i class)
	(get 'SI:STANDARD-MAP-OVER-METHODS 'MAP-METHODS))
  (setf (si:class-map-classes-sym class) 'SI:STANDARD-MAP-OVER-CLASSES)
  (setf (si:class-map-classes-i class)
	(get 'SI:STANDARD-MAP-OVER-CLASSES 'MAP-CLASSES))
  (setf (si:class-add-method-fun class) 'SI:DEFAULT-ADD-METHOD)

  ()
)



;;;; Create top of CLASS hierarchy

;The class heirarchy has this as its main structure.  In actuality, it
;is more complex and classes can have more than one superior.
;   (OBJECT CLASS
;	    (SEQUENCE STRING (VECTOR HEAP-VECTOR STACK-VECTOR)
;			     BITS (LIST PAIR NULL))
;	    (NUMBER (INTEGER FIXNUM (BIGNUM POSITIVE-BIGNUM NEGATIVE-BIGNUM))
;		    (FLOAT FLONUM SMALL-FLONUM BIGFLOAT)
;		    COMPLEX)
;	    SUBR CHARACTER SYMBOL (CONSTANT NULL)
;	    FROBS-OF-YOUR-CHOICE-HERE-AND-BELOW)


;; Now initialize the skeletal classes, (including OBJECT-CLASS)
(mapc #'(lambda (class)
	   (setf (si:extend-class-of (car class)) CLASS-CLASS)
	   (setf (si:class-superiors (car class)) (cadr class))
	   (si:initialize-class (car class))
	   (if (boundp 'PURCOPY)			;Speed up PURCOPY
	       (setq PURCOPY (delq (car class) PURCOPY))))
      SI:SKELETAL-CLASSES)
(setq SI:SKELETAL-CLASSES () )


#.(if (filep infile)
      `(PROGN (SETF (GET (SI:CLASS-PLIST CLASS-CLASS) ':SOURCE-FILE)
		    ',(namestring (truename infile)))
	      (SETF (GET (SI:CLASS-PLIST OBJECT-CLASS) ':SOURCE-FILE)
		    ',(namestring (truename infile)))))


;;;; Setup SI:INITIAL-CLASSES

(defmacro GEN-DEFCLASSES (x)
   `(PROGN 'COMPILE 
	    ,.(mapcar 
	       '(lambda (x) 
		  (let (((name supr . options) x) class-var)
		       (setq supr (cond ((atom supr) 
					 (symbolconc supr '/-CLASS))
					((mapcar '(lambda (x) 
						    (symbolconc x '/-CLASS))
						 supr))))
		       (setq class-var (symbolconc name '/-CLASS))
		       `(DEFCLASS* ,name ,class-var ,supr ,. options)))
	       (eval x))))

(eval-when (eval load compile)
(SETQ SI:INITIAL-CLASSES '((NUMBER OBJECT)
			    (FLOAT NUMBER)
			    (INTEGER NUMBER) 
			   (MACLISP-PRIMITIVE OBJECT)
			   (LIST SEQUENCE)
			    (PAIR (LIST MACLISP-PRIMITIVE))
			   (CONSTANT OBJECT) 
			    (NULL ( CONSTANT 
				    LIST 
				    MACLISP-PRIMITIVE)
				  TYPEP CONSTANT)  ;; Boo!  Hiss!
			   (SYMBOL MACLISP-PRIMITIVE)
			   (FIXNUM (INTEGER MACLISP-PRIMITIVE))
			   (FLONUM (FLOAT MACLISP-PRIMITIVE))
			   (RANDOM MACLISP-PRIMITIVE)
			   (ARRAY MACLISP-PRIMITIVE)
			   (SFA MACLISP-PRIMITIVE)
			   (FILE MACLISP-PRIMITIVE)
			   (JOB MACLISP-PRIMITIVE)
			   (BIGNUM (INTEGER MACLISP-PRIMITIVE))
			   (HUNK MACLISP-PRIMITIVE) ))
)

(GEN-DEFCLASSES SI:INITIAL-CLASSES)

(SETQ SI:INITIAL-CLASSES `((OBJECT ()) 
			   (CLASS OBJECT)
			   (STRUCT OBJECT)
			   (SEQUENCE OBJECT)
			   ,.si:initial-classes))

(setf (si:class-sendi-sym sfa-class) 'SI:SFA-SENDI)
(setf (si:class-sendi sfa-class) (get 'SI:SFA-SENDI 'SENDI))
(def-or-autoloadable GENTEMP MACAID)


(defun LEXPR-SEND (&rest argl)
  ;;  By analogy to LEXPR-FUNCALL, invoke a method with a &REST list of extra
  ;;  arguments.
  (lexpr-funcall #'lexpr-funcall #'send argl))

(defun LEXPR-SEND-AS (&rest argl)
  ;;  By analogy to LEXPR-FUNCALL, invoke a method with a &REST list of extra
  ;;  arguments.
  (lexpr-funcall #'lexpr-funcall #'send-as argl))

;;;; ADD-METHOD, and special methods for class CLASS

(defun ADD-METHOD (message-key method-fun class)
    ;; Add a method to a class
   (cond ((and *RSET (fboundp 'SI:CHECK-TYPER))
	   (check-type message-key  #'SYMBOLP 'ADD-METHOD)
	   (check-type class #'CLASSP 'ADD-METHOD)))
   (funcall (SI:class-add-method-fun class) message-key method-fun class))


(defun SI:default-add-method (msg-key method-fun class)
  (declare (special error-output))
  (let ((temp (or (memq msg-key (si:class-methods class))
		  (setf (si:class-methods class)  ;SETF being used for value!
			(make-a-method KEY msg-key
				       NEXT (si:class-methods class)))))
	(prop (and (symbolp method-fun)
		   (getl method-fun '(lsubr expr subr)))))
     (setf (method-fun-sym temp) method-fun)
     (cond 
       ((symbolp method-fun)
	   (if (cond ((null prop)
		       (format error-output 
			       "~&;Warning:  Function ~S not yet defined~%"
			       method-fun)
		       'T)
		     ((eq (car prop) 'SUBR)
		       (format error-output 
			       "~&;Warning:  Function ~S was compiled as a SUBR~%"
			       method-fun)
		       'T))
	       (format error-output 
		       ";Discovered adding method ~S to class ~S.~@
		        ;Method calls will remain interpreted.~%"
		       msg-key 
		       class))))
     (setf (method-fun temp) (if (eq (car prop) 'LSUBR) (cadr prop))))
  method-fun)



(defmethod* (:PRINT-SELF CLASS-CLASS) (obj stream () () )
  (si:print-extend obj (si:class-name-careful obj) stream))

(defmethod* (FLATSIZE CLASS-CLASS) (obj printp () () )
  (si:flatsize-extend obj (si:class-typep obj) printp))

(defmethod* (PURCOPY CLASS-CLASS) (self)
    ;; Don't copy class objects at all; Pray to heaven that it doesn't go away.
   self)


;;Try hard to recreate the class when the file is loaded.
;;Note that CLASS-CLASS, OBJECT-CLASS, STRUCT-CLASS and certain other
;; classes will be present when SI:DEFCLASS*-2 can be done, so we don't 
;; try to create those.

(defmethod* (USERATOMS-HOOK CLASS-CLASS) (obj)
  (let* ((name (si:class-name-careful obj))
	 (getter `(GET ',name 'CLASS)))
    (list (if (memq name '#.si:extstr-setup-classes)
	      getter
	      `(OR ,getter 
		   (AND (GET 'EXTSTR 'VERSION)
			(SI:DEFCLASS*-2 
			    ',name
			    ',(si:class-typep obj)
			    ',(si:class-var obj)
			    ',(si:class-superiors obj)
			    ',(get (si:class-plist obj) ':SOURCE-FILE))))))))
    

;;;; Methods for class OBJECT

(DEFMETHOD* (EQUAL OBJECT-CLASS) (OBJ OTHER-OBJ)
  (IF (EXTENDP OBJ)
      (EQ OBJ OTHER-OBJ)
      (EQUAL OBJ OTHER-OBJ)))

;; needed by both DEFVST and STRING.
(defmethod* (PURCOPY object-class) (obj)
    (without-interrupts
       (let ((class (class-of obj)) (new-obj))
	    (setf (si:extend-class-of obj) ())
	    (setq new-obj (purcopy obj))
	    (setf (si:extend-class-of obj) class)
	    (setf (si:extend-class-of new-obj) class)
	    new-obj)))

(DEFMETHOD* (SUBST OBJECT-CLASS) (OBJ () ())  OBJ)

(DEFMETHOD* (SPRINT OBJECT-CLASS) (OBJ () ())
; (DECLARE (SPECIAL L N M))
  (PRINT-OBJECT OBJ 0. 'T (SI:NORMALIZE-STREAM OUTFILES)))


(DEFMETHOD* (GFLATSIZE OBJECT-CLASS) (OBJ)
  (FLATSIZE-OBJECT OBJ () 0. 'T ))

(DEFMETHOD* (SXHASH OBJECT-CLASS) (OBJ)
  (SI:HASH-Q-EXTEND 
      OBJ
      (SXHASH (SI:CLASS-NAME-CAREFUL (SI:EXTEND-CLASS-OF OBJ)))))

(DEFUN SI:HASH-Q-EXTEND (OB ACCUMULATION)
   (DECLARE (FIXNUM ACCUMULATION I))
   (DO I (1- (EXTEND-LENGTH OB)) (1- I) (< I 0)
	(SETQ ACCUMULATION (+ (ROT (SXHASH (SI:XREF OB I)) 11.) 
			      (ROT ACCUMULATION 7))))
   ACCUMULATION)

(DEFMETHOD* (USERATOMS-HOOK OBJECT-CLASS) (()) () )


(DEFUN SI:PRINT-EXTEND (OBJ NAME STREAM)
   (SI:PRINT-EXTEND-1 OBJ NAME 'T STREAM))
(DEFUN SI:PRINT-EXTEND-MAKNUM (OBJ STREAM &AUX (BASE 8.))
   (SI:PRINT-EXTEND-1 OBJ () () STREAM))

(DEFUN SI:PRINT-EXTEND-1 (OBJ NAME NAMEP STREAM)
   (SETQ STREAM (SI:NORMALIZE-STREAM STREAM))
   (PRINC '|#{| STREAM)
   (PRIN1 (SI:CLASS-NAME-CAREFUL (CLASS-OF OBJ)) STREAM)
   (TYO #\SPACE STREAM)
   (COND (NAMEP (PRIN1 NAME STREAM))
	 ('T (PRINC (MAKNUM OBJ) STREAM)))
   (TYO #/} STREAM))

(DEFUN SI:NORMALIZE-STREAM (STREAM)
   (IF (AND STREAM 
	    (AND ^R (NULL ^W))
	    (PAIRP STREAM) 
	    (NOT (MEMQ 'T STREAM))
	    (NOT (MEMQ TYO STREAM)))
       (CONS 'T STREAM)
       STREAM))



(DEFUN SI:FLATSIZE-EXTEND (OBJ NAME PRINTP)
  (+ (FLATSIZE (SI:CLASS-TYPEP (CLASS-OF OBJ)))
     (COND (PRINTP 2)
	   ('T (+ (FLATSIZE NAME) 4)))))


(DEFMETHOD* (PRINT OBJECT-CLASS) (OBJECT &REST ARGL)
  (LEXPR-SEND OBJECT ':PRINT-SELF ARGL))

(DEFMETHOD* (:PRINT-SELF OBJECT-CLASS) (OBJ STREAM DEPTH SLASHIFYP)
  (COND ((EXTENDP OBJ)
	 (SI:PRINT-EXTEND-MAKNUM OBJ STREAM))
	('T (PRINT-OBJECT OBJ DEPTH SLASHIFYP (SI:NORMALIZE-STREAM STREAM)))))


(DEFMETHOD* (EVAL OBJECT-CLASS) (OBJ) OBJ)  ;self-evaluation defaults!


;;;; FIND-METHOD and WHICH-OPERATIONS method

(defun FIND-METHOD (m class)
    ;; Return the function that gets run for a method-key in specified class
  (declare (special m))
  (si:map-over-methods
   #'(lambda (() method fun)
       (declare (special m))
       (if (eq method m) fun))
   class))

(DEFPROP SI:FIND-METHOD FIND-METHOD EXPR)	;; Foo! 11/7/80  - Jonl

(defun SI:WHERE-IS-METHOD (m class)
    ;; Return the class in which method "m" is found for class "class"  
  (declare (special m))
  (si:map-over-methods
   #'(lambda (class1 method ())
       (declare (special m))
       (if (eq method m) class1))
   class))

(defun SI:OPERATIONS-LIST (class)
    ;; Collect a list of 'operations'
  (let (l)
    (declare (special l))
    (si:map-over-methods
     #'(lambda (class1 meth fun)
	 (declare (special l))
	 (push `(,meth ,fun ,class1) l)
	 () )
     class)
  (nreverse l)))

(defmethod* (WHICH-OPERATIONS object-class) (object)
    ;;Collect a list of methods 
  (let (l)
    (declare (special l))
    (mapc #'(lambda (meth)
	      (declare (special l))
	      (if (not (memq (car meth) l))
		  (push (car meth) l)))
	  (si:operations-list (class-of object)))
    l))


(defun SI:HAS-SUPERIOR (object class)
    ;; Returns T iff "object" is in a class which has "class" as superior
  (declare (special class))
  (si:map-over-classes
   #'(lambda (class1 ())
       (declare (special class))
       (eq class1 class))
   object))



;;;; FLATSIZE, EXPLODE methods

(defvar  SI:ACCUMULATION () 
  "Used to collect the results of the FLATSIZE-HANDLER, or EXPLODE-HANDLER.")



;; Default FLATSIZE method for objects is to just print the object to
;; an counting stream which counts the size in a special variable.
;; A special variable is used since that's easier than consing up a new
;; stream whenever entered recursively.

(defvar SI:FLAT-PRINT-P () 
  "If non-(), then the FLATSIZE method wants to throw out on the first space.")

(defmacro CONS-A-FLAT-STREAM () 
  `(SFA-CREATE 'SI:FLAT-HANDLER 0 'SI:FLAT-HANDLER)) 

(defun SI:FLAT-HANDLER (() operation character)
  (caseq operation 
	 (TYO (cond ((not (< character 0))
		      (if (and SI:FLAT-PRINT-P (= character #\SPACE))
			  (*throw 'SI:FLAT SI:ACCUMULATION))
		      (setq SI:ACCUMULATION (1+ SI:ACCUMULATION))
		      T)))
	 (WHICH-OPERATIONS '(TYO))))

(defvar SI:FLAT-STREAM (cons-a-FLAT-STREAM))

(defmethod* (FLATSIZE object-class) (object printp depth slashifyp)
  (let ((SI:ACCUMULATION 0)
	(SI:FLAT-PRINT-P printp))
    (*catch 'SI:FLAT
	    (send object ':PRINT-SELF SI:FLAT-STREAM depth slashifyp))
    SI:ACCUMULATION))


;; Default EXPLODE method for objects is to just print the object to
;;  an accumulation stream which accumulates the list of characters in a 
;;  special variable.  A special variable is used since that's easier 
;;  than consing up a new stream whenever entered recursively.
;; Whether numbers or single character atoms are to be accumulated is
;;  controlled by the special variable SI:EXPLODE-NUMBER-P

(defvar SI:EXPLODE-NUMBER-P () 
  "If non-(), then EXPLODEN type method rather than EXPLODEC type.")

(defmacro CONS-A-EXPLODE-STREAM () 
  `(SFA-CREATE 'SI:EXPLODE-HANDLER 0 'SI:EXPLODE-HANDLER)) 

(defun SI:EXPLODE-HANDLER (() operation character)
  (caseq operation 
	 (TYO (cond ((< character 0)
		      (if (not SI:EXPLODE-NUMBER-P) 
			  (setq character (ascii character)))
		      (push character SI:ACCUMULATION)
		      T)))
	 (WHICH-OPERATIONS '(TYO))))

(defvar SI:EXPLODE-STREAM (cons-a-EXPLODE-STREAM))

(defmethod* (EXPLODE object-class) (object slashify-p si:explode-number-p)
  (let ((SI:ACCUMULATION)) 			;Initialize list to ()
    (send object ':PRINT-SELF SI:EXPLODE-STREAM -1 slashify-p)
    (nreverse SI:ACCUMULATION)))


;;;; GRINDEF, HUNKSPRIN1, and USERATOMS hooks  -- and some setups


(defun SI:EXTEND-HUNKSPRIN1 (obj n m)
; (declare (special l n m))
  (cond ((extendp obj) (send obj 'SPRINT n m))
	(T (standard-hunksprin1 obj n m))))

(defun SI:EXTEND-GFLATSIZE (obj)
  (declare (special l n m))
  (cond ((extendp obj) (send obj 'GFLATSIZE))
	('T (funcall (get 'STANDARD-HUNKSPRIN1 'HUNKGFLATSIZE) obj ;n m
		     ))))

(setq HUNKSPRIN1 'SI:EXTEND-HUNKSPRIN1)
(defprop SI:EXTEND-HUNKSPRIN1 SI:EXTEND-GFLATSIZE HUNKGFLATSIZE)


;; Activate the message-passing interpreter
(sstatus SENDI 'SEND)
(sstatus USRHUNK 'EXTENDP)
(sstatus CALLI 'SI:CALLI-TRANSFER)

(def-or-autoloadable SI:LOST-MESSAGE-HANDLER CERROR)

(let ((x (status LISPV)))
  (cond 
    ((alphalessp x "2094")
	;;Just in case someone tries to use this in a really old lisp!
      (if (alphalessp x "2057")
	  (mapc 
	    #'(lambda (z)
		(let ((y (subst (car z) 'Z #%(AUTOLOAD-FILENAME Z))))
		  (mapc #'(lambda (x) 
			    (or (fboundp x)
				(equal (get x AUTOLOAD) y)
				(putprop x y 'AUTOLOAD)))
			(cadr z))))
	    '( (MLMAC (PAIRP))
	      (EXTMAC (DEFCLASS* DEFMETHOD*))
	      (CERROR (CERROR FERROR ))
	      (ERRCK  (CHECK-TYPE SI:CHECK-TYPER CHECK-SUBSEQUENCE 
				  SI:CHECK-SUBSEQUENCER))
	      (SUBSEQ (TO-LIST TO-VECTOR TO-STRING TO-BITS SUBSEQ REPLACE))
	      (YESNOP (Y-OR-N-P YES-OR-NO-P)))))
	;;WOW! What a kludge!  In old LISP's we somehow have to force in
	;; the DESCRIBE file (since, who knows, we may be autoloading just
	;; in order to get the DESCRIBE function.)  And DESCRIBE, of course,
	;; tries to force-load in the EXTEND file.  Circularity.  Q.E.D.
      (or (get 'EXTEND 'VERSION) (defprop EXTEND /0 VERSION))
      #%(subload DESCRIBE))))
