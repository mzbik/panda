!* -*-Teco-*- *!
!* Modifications by ECC@MC on 27 August 1981 to merge in changes made
   by folks at the Canadian Defense Research Establishment Atlantic.
   Their source can currently be found on XX in SRC:<EMACS>INTER.EMACS.15.
   The changes are:   
	& Setup.. has C-T C-T run what the old C-T ran, in case it was
	not ^R Transpose Characters.  Also checks fsOSpeed.
	The FS EXITs are surrounded by exit and return hooks.
   Their source has some differences in &R Pretty Print that I didnt
   understand, and which might possibly have to do with the new
   & Prettyprint Undoably Replace routine which they did not have.
   They also have a different INTER..0 file which someone ought to compare.
 *!
!~Filename~:! !EMACS-INTERLISP interface.!
INTER

!& Inter Display Text:! !S Insert text bizzarely!
  [B
  28,(FQA):GA U B
  FTB


!& Prettyprint Undoably Replace:! !S Replaces text.
First precomma arg is how many characters to kill.
Second precomma arg is string to insert.!
  [0[1
  Q..O U: ..U(0)		    !* Current buffer!
  .,(.+) X 0
  Q0 U: ..U(1)   		    !* Characters being killed!
  . U: ..U(2)			    !* Current location!
  Z-(.+) U: ..U(3)		    !* Undo's encoding of end!
  :I*Prettyprint U: ..U(4)	    !* Command Undo will querry about!
  D
  [0
  .[1
  G0
  Q1J


!& Getdef:! !S Inserts a LISP definition from a file.
Takes two pre-arguments that indicate where to start reading
from and how much to read.  Takes a string argument -- the
file name.!
  [0
  M(M.M Select_Buffer) *FROM-LISP*
  ZJ
  .U0
  I(DEFINEQ_
  F[ D FILE
  E[FNE]
  ER
   FS I F ACCESS
   FY
  I)


  Q0J
  .,Z FS BOUNDARIES
  -1fs pjaty
  

!& LISP SUPERIOR:! !S Insert as directed by call from LISP.!
  [A  [B  [0
  "G M(M.M Select_Buffer) *FROM-LISP*'
  "N
    FSIFILEUA		 !* The most recently opened input file!
    QLISPFILEUB        !* The EMACS.TEMP.FILE!
    FS UREAD"N          !* If anything is open,!
      F~AB"N          !* then if it's not EMACS.TEMP.FILE!
        F[ D FILE       !* push the default!
       2,ERB'          !* and open up EMACS.TEMP.FILE!
      0FSIFACCESS'      !* start reading at the beginning!
    FS UREAD"E          !* if nothing is open!
      2,ERB'            !* read EMACS.TEMP.FILE!
    U0		
    "L -Q0U0'          !* The absolute value of the arg in 0!
    "G
      ZJ'
    Q0FY
    "L
      .+,.FXA		 !* If the arg is negative we put!
      MA'		 !* the stuff in A, delete and macro it.!
    "G
      R
      .,ZFSBOUNDARIES'
  '		         !* We do nothing on a zero arg!
  +1"G -1FSPJATY'
          !* If arg nonnegative, clear screen and refresh.!


!& Clear Screen:! !S Completely clears the screen.!
   0 F[ REFRESH
   0 F[ LINES
   0 F[ TOP LINE
   F+
   

!^R EVAL:! !^R Return to LISP and evaluate sexp after point.
If an argument is supplied, that many expressions will be read.!

  [J
  .UJ
  @FL
  QJJ
  M(M.M &_Clear_Screen)
  0FO..QExit_to_Superior_Hook[0 q0 "n m0 ]0 ' 
  1000000.+ FS EXIT
  0FO..QReturn_from_Superior_Hook[0 q0 "n m0 ]0 '
  

!^R EVAL Everything:! !^R Returns to LISP and EVALs every expression in the buffer.
   !
   BJ
   0M(M.M ^R_EVAL)

!^R LISP ERROR:! !^R Return to LISP and cause an error.
  Useful for exiting from the edit command EMACS:.!

  M(M.M &_Clear_Screen)
  0FO..QExit_to_Superior_Hook[0 q0 "n m0 ]0 ' 
  7000000. FS EXIT
  0FO..QReturn_from_Superior_Hook[0 q0 "n m0 ]0 '
  

!^R LISP RESET:! !^R Return to LISP and cause a RESET.!

  M(M.M &_Clear_Screen)
  0FO..QExit_to_Superior_Hook[0 q0 "n m0 ]0 ' 
  10000000. FS EXIT
  0FO..QReturn_from_Superior_Hook[0 q0 "n m0 ]0 '
  

!^R Replace Sexp:! !^R Builds a replace expression for the structure editor.
Uses the contents of the current buffer.!

  j
  M(M.M &_Clear_Screen)
  0FO..QExit_to_Superior_Hook[0 q0 "n m0 ]0 ' 
  13000000. FS EXIT
  0FO..QReturn_from_Superior_Hook[0 q0 "n m0 ]0 '
  

!^R ARGLIST:! !^R Write into window 2 the arglist of the atom after point.
Writes into window 2 the argument list of the function after point (or after
open parenthesis after point.)  Uses the LISP function ARGLIST.!

  0FO..QExit_to_Superior_Hook[0 q0 "n m0 ]0 ' 
  6000000. FS EXIT
  0FO..QReturn_from_Superior_Hook[0 q0 "n m0 ]0 '
  

!^R Print to Level:! !^R Shallow print expression after point into window 2.
Prints expression with PRINTLEVEL set to EMACS.P.PRINT.LEVEL.!

  0FO..QExit_to_Superior_Hook[0 q0 "n m0 ]0 ' 
  5000000. FS EXIT
  0FO..QReturn_from_Superior_Hook[0 q0 "n m0 ]0 '
     

!^R Eval Current:! !^R Evals expr after point and prints into the other window.!

  0FO..QExit_to_Superior_Hook[0 q0 "n m0 ]0 ' 
  11000000. FS EXIT
  0FO..QReturn_from_Superior_Hook[0 q0 "n m0 ]0 '
  

!^R Find Sexp:! !^R Marks the SEXP at point with  and returns to INTERLISP!

  1M(M.M^R_List_Start)
  I
  j
  M(M.M &_Clear_Screen)
  0FO..QExit_to_Superior_Hook[0 q0 "n m0 ]0 ' 
  12000000. FS EXIT
  0FO..QReturn_from_Superior_Hook[0 q0 "n m0 ]0 '
  

!^R List Start:! !^R Finds the start of the current list.!

  1a-("n-s('
  

!Grind Sexp:! !C Warns about Interlisp vs. Maclisp woes.!

  :FT Warning:__Grind_Sexp_does_not_work_for_Interlisp_code.
      You_can_use_^R_Pretty_Print,_on_C-T_P,_instead.
      If_you_really_want_to_use_the_Maclisp_Grinder,
      then_load_the_GRIND_library.
  0

!^R Pretty Print:! !^R Undoably prettyprints expr after point.
Uses LISP pretty printer.!

  0FO..QExit_to_Superior_Hook[0 q0 "n m0 ]0 ' 
  4000000.+(FSHPOS) FS EXIT
  0FO..QReturn_from_Superior_Hook[0 q0 "n m0 ]0 '
  

!^R QUOTE:! !^R Return to LISP with expression after point.
The expression after point will be made the value of the current
history event.  This value can be retrieved with VALUEOF.
If an argument is supplied, that many expressions will be read.!

  [J
  .UJ
  @FL
  QJJ
  M(M.M &_Clear_Screen)
  0FO..QExit_to_Superior_Hook[0 q0 "n m0 ]0 ' 
  3000000.+ FS EXIT
  0FO..QReturn_from_Superior_Hook[0 q0 "n m0 ]0 '
  

!^R DEFINEQ:! !^R Return to LISP and apply DEFINEQ to expression after point.
For example, if the point is just before

(FOO (X) (EQUAL X 3))

then FOO will be defined as the function that tests whether its
argument is 3.  If an argument is supplied, that many expressions 
will be read.!
  [J
  .UJ
  @FL
  QJJ
  M(M.M &_Clear_Screen)
  0FO..QExit_to_Superior_Hook[0 q0 "n m0 ]0 ' 
  2000000.+ FS EXIT
  0FO..QReturn_from_Superior_Hook[0 q0 "n m0 ]0 '
  

!^R Exit To LISP:! !^R Simply return to LISP.
Calling (DOWN) in LISP will return to the current state of
EMACS.!
  M(M.M &_Clear_Screen)
  0FO..QExit_to_Superior_Hook[0 q0 "n m0 ]0 ' 
  FS EXIT
  0FO..QReturn_from_Superior_Hook[0 q0 "n m0 ]0 '
  

!& Setup INTER Library:! !S SETUP!
  [J[T
  FSJNAMEUJ			    !* If we are under a LISP job then!

  F~JLISP"E
    1M.VLISPFILE		    !* Creates the variable which holds!
				    !* the EMACS.TEMP file name.!
    FS HSNAME FS D SNAME
    2,EREMACS.TEMP.FILE.0
    FS I FILE ULISPFILE
    q.TuT				!* T: old definition of C-T.!
    M(M.M Make_Prefix_Character).T U.T
    F[BBIND
    GPrefix_Char_List
    0J
    :S .T"E
      I .T__		    !* We have to add this strange string!
      HXPrefix_Char_List'	    !* to Prefix Char List to get Whereis,!
				    !* etc. to work.  See <EMACS>CONV.!
    F]B BIND
    M.M^R_Arglist U:.T(A)
    M.M^R_LISP_ERROR U:.T()
    M.M^R_Replace_Sexp U:.T(C)
    M.M^R_DEFINEQ U:.T(D)
    M.M^R_EVAL U:.T(E)
    M.M^R_Find_Sexp U:.T(F)
    M.M^R_Print_To_Level U:.T(L)
    M.M^R_Pretty_Print U:.T()
    M.M^R_QUOTE U:.T(Q)
    M.M^R_LISP_RESET U:.T()
    M.M^R_Eval_Current U:.T(S)
    M.M^R_EVAL_Everything U:.T(U)
    M.M^R_Exit_To_LISP U:.T(Z)
    qT U:.T()			!* C-T C-T runs what old C-T did.!
    F~Editor_NameDMACS"E
      M.M^R_Exit_To_LispM.VMM_Quit'
    M.M&_Lisp_SuperiorFSSUPERIOR
    M(M.M Select_Buffer) *FROM-LISP*
    M(M.MInterlisp_Mode)
    !* On slow terminals, show matching paren only if on-screen: !
    FS OSPEED-1200"G 1'"# -1'M.VDisplay_Matching_Paren
    :I*Interlisp M.V Default_Major_Mode'
  
  

