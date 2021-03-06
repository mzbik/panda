;;;   GCDEMN   				  		  -*-LISP-*-
;;;   **************************************************************
;;;   ***** MACLISP ******* Standard GC-DAEMON function ************
;;;   **************************************************************
;;;   ** (C) COPYRIGHT 1981 MASSACHUSETTS INSTITUTE OF TECHNOLOGY **
;;;   ****** THIS IS A READ-ONLY FILE! (ALL WRITES RESERVED) *******
;;;   **************************************************************

;; Note that "HERALD" call is below, to insure that the addition
;;  to GC-DAEMON has occured before the VERSION property is put
;;  (HERALD GCDEMN /10)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; This is a dynamic garbage collector daemon which tries to predict
;;; consing in the various spaces based on past performance and thus to
;;; set space sizes such that garbage collection is minimized.
;;; 
;;; The algorithm is from Henry Baker and the program is his with minor
;;; modifications.  JONL maintained Baker's code between 1978 and 1980,
;;; and PSZ made significant modifications on July 12, 1980.  GSB added
;;; some type-declarations, and added a separater gc-statistics print
;;; switch on Feb 6, 1981;  GSB and JONL added some efficiency hacks
;;; to do less consing on Feb 6-7, 1981, and to use HERALD
;;; GSB hacked the gc-statistics print switch to be more usable Feb. 19,
;;; 1981;  the variable GC-DAEMON-PRINT should have as its value a variable
;;; which will be SYMEVALed to see if the gc-daemon should print statistics.
;;; By default its value is ^D, causing the gc-daemon to print statistics
;;; when the Lisp gc does.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; For historical purposes, the original CGOL code is reproduced
;;; here as commentary.  All running code is now in LISP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (cgol)
;; 
;; declare(muzzled(t))	% Shut up about closed compilation. %
;; 
;; %	GC-daemon for optimal allocation.			%
;; %	Described in AI Working Paper #142.			%
;; %	set "alloc-mark-ratio" to a flonum between 0.2 and 5.0.	%
;; 
;; sstatus(who1,42.,"%",118.,0.)	% Set up "who" line on tv's.  %
;; sstatus(gcwho,3.)
;; who3 := "GCDEMN"
;; 
;; % Initialize property lists of space names.  %
;; let gc_daemon=
;;     '\spacelist;
;;      (let alloct=nil.alloc(t);
;;       for element in spacelist
;; 	  do (let space = car(element),
;; 		  freebefore = cadr(element),
;; 		  freeafter = caddr(element),
;; 		  sizebefore = cadddr(element),
;; 		  sizeafter = car(cddddr(element));
;; 	      % Initialize state of each space for gc-daemon.  %
;; 	      accessible ofq space := sizeafter-freeafter;
;; 	      % Make sure that we don't get a gc-overflow interrupt.  %
;; 	      alloc([space,[max(512.,car(space of alloct) or sizeafter),
;; 			    262143.,
;; 			    if sizeafter>0 then 32. else 0.]])))'
;;     in gc()
;; 
;; alloc_mark_ratio := 1.0 
;; 
;; special alloc_mark_ratio
;; 
;; define "GC-DAEMON" (spacelist);
;;   let total_accessible = 0.0,
;;       total_consed = 0.0;
;;   % Go through spaces and accumulate consed and accessible
;;     information.  %
;;   for element in spacelist	    % Argument is "alist" of spaces. %
;;       do (let space = car(element),	% Give names to parameters.  %
;; 	      freebefore = cadr(element),
;; 	      freeafter = caddr(element),
;; 	      sizebefore = cadddr(element),
;; 	      sizeafter = car(cddddr(element));
;;  % Compute consed since last gc and accessible now for this space.  %
;; 	 consed ofq space := sizebefore-freebefore-accessible ofq space;
;; 	 total_consed := total_consed + consed ofq space;
;; 	 accessible ofq space := sizeafter-freeafter;
;; 	 total_accessible := total_accessible + accessible ofq space);
;;   % Store total consed, total accessible and compute total free.  %
;;   consed ofq 'total_storage' := total_consed;
;;   accessible ofq 'total_storage' := total_accessible;
;;   let total_free = alloc_mark_ratio * total_accessible;
;;   free ofq 'total_storage' := total_free;
;;   % Go through spaces and re-allocate where necessary.  %
;;   for element in spacelist
;;       do (let space = car element;
;; 	  alloc_rate ofq space := consed ofq space / total_consed;
;; 	  free ofq space := fix(total_free * alloc_rate ofq space);
;; 	  let spcsize = accessible ofq space + free ofq space + 511.;
;; 	     if spcsize>511. then alloc([space,[spcsize,262143.,32.]]))
;; 
;; gc_daemon := 'gc_daemon'
;; 
;; =exit
 

(declare (setq USE-STRT7 T)
	 (special GCDEMN-SETUP-1/|) )

(defvar ALLOC-MARK-RATIO 1.0)
(defvar FILL-STORAGE-FRACTION 0.5)
; We SYMEVAL this to see if we want to print statistics.
(defvar GC-DAEMON-PRINT '^D)

(eval-when (eval compile)
    (defmacro fix-to-float (x)
	      `(float (fixnum-identity ,x)))
    (defmacro float-to-fix (x)
	      `(ifix (flonum-identity ,x)))
    (defmacro defmaxmin (max-name min-name type
			 &aux (v1 (gensym)) (v2 (gensym)))
	
	`(progn 'compile
	   (defmacro ,max-name (arg1 arg2)
		(list '(lambda (,v1 ,v2)
			  (declare (,type ,v1 ,v2))
			  (cond ((> ,v1 ,v2) ,v1) (t ,v2)))
		      arg1 arg2))
	   (defmacro ,min-name (arg1 arg2)
		(list '(lambda (,v1 ,v2)
			  (declare (,type ,v1 ,v2))
			  (cond ((< ,v1 ,v2) ,v1) (t ,v2)))
		      arg1 arg2))))
    (defmaxmin max$ min$ flonum)
    (defmaxmin max% min% fixnum)
    )


(defun GC-DAEMON-PRINT (space cons-rate oldgcsize marked gcsize spcsize)
   ;; We print for each non-empty space the following information:
   ;;  CONS-RATE	The % of conses since the last GC which were for
   ;; 			this space.
   ;;  OLDGCSIZE	Size of the space in words before GC.
   ;;  MARKED		Number of words marked as "in use" by GC.
   ;;  GCSIZE		Size in words recommended by daemon.
   ;;  SPCSIZE (if present) Actual size of space if different from size.
   ((lambda (base *nopoint f)
       (setq cons-rate (fix (*$ cons-rate 100.0)))
       (and (< (linel f)
	       (+ (flatc space) (flatc cons-rate) (flatc oldgcsize)
		  (flatc marked) (flatc gcsize) (flatc spcsize) 10.
		  (charpos f)))
	    (princ '|
; | msgfiles))
       (princ space msgfiles)
       (princ '| | msgfiles)
       (princ cons-rate msgfiles)
       (princ '|%[| msgfiles)
       (princ oldgcsize msgfiles)
       (princ '|->| msgfiles)
       (princ marked msgfiles)
       (princ '|//| msgfiles)
       (princ gcsize msgfiles)
       (cond ((not (= spcsize gcsize))
	      (princ '|//| msgfiles) (princ spcsize msgfiles)))
       (princ '|]  | msgfiles))
    10. t (cond ((or (memq tyo msgfiles) (and (not ^w) (memq t msgfiles)))
		   tyo)
		((car (delq t (append msgfiles nil))))
		(t tyo))))



(DEFUN BAKER-GC-DAEMON (SPACELIST)
 ((LAMBDA (RUNTIME TOTAL-ACCESSIBLE TOTAL-CONSED MEMFREE)
   (declare (fixnum runtime) (flonum total-accessible total-consed))
   (MAPC
    (FUNCTION
     (LAMBDA (ELEMENT)
      ((LAMBDA (SPACE FREEBEFORE FREEAFTER SIZEBEFORE SIZEAFTER)
	; No point in declarations, they only pessimize the compiler,
	; in this case.
	(PUTPROP SPACE (- SIZEBEFORE FREEBEFORE (GET SPACE 'ACCESSIBLE))
		 'CONSED)
	(SETQ TOTAL-CONSED (+$ TOTAL-CONSED (fix-to-float (GET SPACE 'CONSED))))
	(PUTPROP SPACE (- SIZEAFTER FREEAFTER) 'ACCESSIBLE)
	(SETQ TOTAL-ACCESSIBLE (+$ TOTAL-ACCESSIBLE
				   (fix-to-float (GET SPACE 'ACCESSIBLE)))))
       (CAR ELEMENT) (CADR ELEMENT) (CADDR ELEMENT)
       (CADDDR ELEMENT) (CAR (CDDDDR ELEMENT)))))
    SPACELIST)
   (PUTPROP 'TOTAL-STORAGE TOTAL-CONSED 'CONSED)
   (PUTPROP 'TOTAL-STORAGE TOTAL-ACCESSIBLE 'ACCESSIBLE)
   ((LAMBDA (TOTAL-FREE alloct ALLOC-LIST 
	     ALLOC-LIST-1 SPACE-HACK SPACE-HACK-1)
     (declare (flonum total-free))
     (PUTPROP 'TOTAL-STORAGE TOTAL-FREE 'FREE)
     (and (symeval gc-daemon-print)
      ((lambda (base *nopoint)
	; Kludge:  if the GC printed, we do NOT want an extra newline;  but
	; if it do not, we need to print one ourselves.
	(or ^d (terpri msgfiles))
	(princ '|;GC-DAEMON: cons-rate%[oldgcsize->marked//gcsize//spcsize]
; Consed=|
	       msgfiles)
	(princ (fix total-consed) msgfiles)
	(princ '|, Marked=| msgfiles)
	(princ (fix total-accessible) msgfiles)
	(princ '|, Allocated//Marked=| msgfiles)
	(princ alloc-mark-ratio msgfiles)
	(princ '|, Memfree= | msgfiles)
	(princ memfree msgfiles)
	(princ '|
; | msgfiles))
       10. t))
     (MAPC
      (FUNCTION
       (LAMBDA (ELEMENT)
	((LAMBDA (SPACE)
	  ((lambda (alloc-rate)
	       (declare (flonum alloc-rate))
	       (putprop space alloc-rate 'alloc-rate)
	       (putprop space (fix (*$ total-free alloc-rate)) 'free))
	   (//$ (fix-to-float (get space 'consed)) total-consed))
	  ((LAMBDA (SPCSIZE)
	    (declare (fixnum spcsize))
	    (and (symeval gc-daemon-print)
		 (get alloct space)
		 (gc-daemon-print
		  space
		  (get space 'alloc-rate)
		  (car (get alloct space))
		  (get space 'accessible)
		  (* 512. (// spcsize 512.))
		  (status spcsize space)))
	    (COND ((GREATERP SPCSIZE 511.)
		   (OR ALLOC-LIST
		       (SETQ ALLOC-LIST
			     (LIST NIL (SETQ ALLOC-LIST-1
					     (LIST NIL 262143. NIL)))
			     SPACE-HACK
			     (LIST 'SPCSIZE
				   (CONS 'QUOTE (SETQ SPACE-HACK-1
						      (LIST NIL))))))
		   (rplaca space-hack-1 space)
		   (RPLACA
		      (CDDR (RPLACA ALLOC-LIST-1
				    (max% SPCSIZE
					  (apply 'status space-hack))))
		      (cond ((eq space 'list) 200.) (t 32.)))
		   (ALLOC (RPLACA ALLOC-LIST SPACE)))))
	   (+ (GET SPACE 'ACCESSIBLE) (GET SPACE 'FREE) 511.)))
	 (CAR ELEMENT))))
      SPACELIST)
     (and (symeval gc-daemon-print) (terpri msgfiles)))
    (min$ (*$ ALLOC-MARK-RATIO TOTAL-ACCESSIBLE)
	  (*$ (fix-to-float memfree) fill-storage-fraction))
    (cons nil (alloc t)) NIL NIL NIL NIL)
   ; Finally, add our runtime into the total gc-time.
   (setq runtime (- (status gctime) runtime))
   (sstatus gctime (+ (runtime) runtime))
   )
  (runtime) 0.0 0.0 (status memfree))) 




;; This function takes relatively little space, in comparison to all that
;;  needed for the names of the variables used.  If run as expr code,
;;  these symbols would never go away.

(defun GCDEMN-SETUP-1/| (x)
  (let (((space freebefore freeafter sizebefore sizeafter) x))
    ;;The variable GCDEMN-SETUP-1/| has been set to `(() ,.(alloc t))
    (putprop space (- sizeafter freeafter) 'ACCESSIBLE)
    (let ((spacesize (or (car (get GCDEMN-SETUP-1/| space))
			 sizeafter))
	  (spacemin (cond ((not (> sizeafter 0)) () )
			  ((eq space 'LIST) 200.)
			  (32.))))
      (if (< spacesize 512.) (setq spacesize 512.))
      (alloc `(,space (,spacesize 262143. ,spacemin))))))

(cond 
     ;;If this file is loaded more than once, then don't 'push' onto
     ;; the GC-DAEMON variable again.
  ((or (get 'GCDEMN 'VERSION) (eq gc-daemon 'baker-gc-daemon)))
  (T (cond ((status SSTATUS GCWHO)
	    (sstatus WHO1 42. '% 118. 0.) 
	    (sstatus GCWHO 3.) 
	    (sstatus WHO3 'GCDEMN) ))
       ;;; Initially set things up
     (let ((GCDEMN-SETUP-1/| `(() ,.(alloc t)))
	   (GC-DAEMON #'(lambda (z) (mapc #'GCDEMN-SETUP-1/| z))) )
       (gc))
     (setq GC-DAEMON 
	   (cond ((null GC-DAEMON)  'BAKER-GC-DAEMON)
		 ((let ((x (gensym)))
		    `(LAMBDA (,x) 
			(BAKER-GC-DAEMON ,x)
			(,.(cond ((or (symbolp gc-daemon)
				      (and (not (atom gc-daemon))
					   (eq (car gc-daemon) 'LAMBDA)))
				  `(,gc-daemon))
				 (`(FUNCALL ',gc-daemon)))
			   ,x)))))) ))

(herald GCDEMN /10)