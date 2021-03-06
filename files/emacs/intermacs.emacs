!* -*-TECO-*- *!

!~Filename~:! !EMACS-INTERLISP interface.!
INTERMACS

!& Getdef:! !Inserts a LISP definition from a file.
Takes two pre-arguments that indicate where to start reading
from and how much to read.  Takes a string argument -- the
file name.!
  [0
  E[FNE]
  ZJ
  .U0
  I(DEFINEQ_
  F[ D FILE
  ER
   FS I F ACCESS
   FY
  I)


  Q0J
  .,Z FS BOUNDARIES
  -1FS PJATY


!& LISP SUPERIOR:! !S Insert as directed by call from LISP.!
  [A
  [B
  [0
  .U0 ZJ Z-3"G
    0A-3"E -4D''
  Q0J			 !* We delete the four characters at the!
                         !* end that are used to stop LISP from!
                         !* reading too far!
  "N
    FSIFILEUA		 !* The most recently opened input file!
    QLISPFILEUB        !* The EMACS.TEMP.FILE!
    FS UREAD"N          !* If anything is open,!
      F~AB"N          !* then if it's not EMACS.TEMP.FILE!
        E[               !* push the input!
        F[ D FILE       !* push the default!
        FN E]           !* pop the input on exit from here!
        ERB'          !* and open up EMACS.TEMP.FILE!
      0FSIFACCESS'      !* start reading at the beginning!
    FS UREAD"E          !* if nothing is open!
      ERB'            !* read EMACS.TEMP.FILE!
    U0		
    "L -Q0U0'          !* The absolute value of the arg in 0!
    "G M(M.M^R_Set/Pop_Mark)
      ZJ'
    Q0FY
    "L
      .+,.FXA		 !* If the arg is negative we put!
      MA'		 !* the stuff in A, delete and macro it.!
    "G
      R
      .,ZFSBOUNDARIES'
  '		         !* We do nothing on a zero arg!
  +1"G     FSTTYINI   !* Reset the COC word after LISP screw up.!
            -1FSPJATY	 !* If arg nonnegative, clear screen and refresh.!
            '


!^R Undo:! !Return to lisp to recover initial s expression!

  M(M.MSelect_Buffer)Main
  4000000. M(M.M&_Exit_To_LISP)
  

!^R Abort:! !^R Abort Exit to LISP, and lisp will ignore all edit changes !

  M(M.MSelect_Buffer)Main  
  5000000. M(M.M&_Exit_To_LISP)
  

!^R Clispify:! !Return to lisp to clispify the expression, then back to EMACS !

  M(M.MSelect_Buffer)Main
  J 1000000. M(M.M&_Exit_To_LISP)
  

!^R Pretty Print:! !^R Pretty print buffer (using LISP pretty printer).
Leaves point close to where it was, namely the open parenthesis before point.!

  [0
  0u0
  <-:S(; %0>
  3000000. M(M.M&_Exit_To_LISP)
  .-B"E Q0:S('
  

!^R Dwimify:! !Return to LISP and dwimify the expression in the buffer, then
return to EMACS!

  M(M.MSelect_Buffer)Main
  J 2000000. M(M.M&_Exit_To_LISP)
  

!^R Get Sexp:! !Return to LISP to get S-expression in window W2!

  .[J
  6000000. M(M.M&_Exit_To_LISP)
 QJ J
   

!^R Eval:! !Return to LISP to read S-exp after point and evaluate,
            printing result in W2!

  .[J
   7000000. M(M.M&_Exit_To_LISP)
  QJ J
  

!^R Finish:! !^R Return to lisp with the pointer at the beginning of function!

  M(M.MSelect_Buffer)Main
  J  M(M.M&_Exit_To_LISP)
  

!^R Apply:! !^R Read a function name and apply it to the current S exp!

  [A
  @FTFunction:_
  0,M(M.M&_Read_Line) UA
  .[B
  I(A_(QUOTE_
  .[C
  1 M(M.M^R_Forward_Sexp)
  I))
  QB J
  M(M.M^R_Eval)
  QB,QC K
  1 M(M.M^R_Forward_Sexp)
   .,.+2 K
  QB J
  

!^R Multi Return:! !^R Return multiple s-expressions!
!This function makes one s-expression out of the entire file and
 exits with a special return code which will cause LISP to evaluate
 each S-expression in turn and return a list of all the s-expressions.
 Hack done at the request of Mike Genesereth, so he can fool himself
 into thinking he is using MACLISP!

 M(M.MSelect_Buffer)Main
 J I( ZJ I) J
 10000000. M(M.M&_Exit_To_LISP)
 

!^R LEDIT Eval:! !^R return to LEDIT call to evaluate top level s-exp!
!This function is another MACLISP simulator.   It just goes to the
 beginning of the top level s-expression and tells lisp to evaluate
 the s-expression after the point.  The net effect is the same as typing
 <meta>^A ^T Z!

 1M(M.M^R_Beginning_of_DEFUN)
 M(M.M&_Exit_To_LISP)
 

!^R Extract Sexp:! !^R Replace sexp at mark with embedded sexp at point
Imitates the INTERLISP edtor's XTR command!

 [A				    !* holds beginning of sexp at mark!
 [B				    !* holds end of sexp at mark!
 [C				    !* holds beginning of sexp at point!
 [D				    !* holds the end of sexp at point!
 [M				    !* holds the value of mark!
 [0				    !* temporary to hold mark sexp!
 [J				    !* holds initial point pos.!
 M(M.M^R_Exchange_Point_and_Mark) .UM M(M.M^R_Exchange_Point_and_Mark)
 .UJ QM J			    !* Save point and move to mark!
 @FL UB UA			    !* Get mark sexp boundaries!
 QJ J				    !* back to old point!
 @FL UD UC			    !* Get point sexp boundaries!
 QC-QA "L:I*NST	Point_sexp_not_nested_in_mark_sexpFS ERR'
 QB-QD "L:I*NST	Point_sexp_not_nested_in_mark_sexpFS ERR'
 QC,QD X0			    !* Save point sexp in Q0!
 QB J				    !* Go to end of mark sexp!
 QA,QB K			    !* Kill the mark sexp!
 G0				    !* Insert point sexp!
 

!^R Set Variable:! !^R Set LISP Variable to current expression
Reads a variable name and does (SETQQ var <sexp after point>)  Returns
to the current state of EMACS!

 [A				    !* Register for variable name!
 @FTSet_variable:_		    !* Read variable name!
 0,M(M.M&_Read_Line) UA
 .[B				    !* save the point!
 I(SETQQ_A_			    !* embed the sexp in a (SETQ var ...)!
 .[C
 1 M(M.M^R_Forward_Sexp)
 I)
 QB J				    !* position the point!
 11000000. M(M.M&_Exit_to_LISP)   !* To lisp to do the dirty work!
 QB,QC K			    !* Undo our damage!
 1 M(M.M^R_Forward_Sexp)
 .,.+1 K
 QB J
 

!^R Replace Sexp:! !^R Replace s expression after point with val of variable!

 [A
 @FTReplace_with_value_of:_	    !* Prompt for variable name!
 0,M(M.M&_Read_Line) UA
 .[B				    !* Write variable name in buffer!
 IA_
 .[C
 QB J				    !* Down to LISP to get value in Scratch!
 12000000. M(M.M&_Exit_to_LISP)
  H XA				    !* Everything to QA!
 QPrevious_Buffer M(M.MSelect_Buffer)
 QB,QC K			    !* Kill variable name!
 1 M(M.M^R_Kill_Sexp)
 IA
 -1FS PJATY
 

!^R Insert Sexp:! !^R Insert val of variable after point!

 [A
 @FTInsert_value_of:_		    !* Prompt for variable name!
 0,M(M.M&_Read_Line) UA
 .[B
 IA				    !* Write name of var on file!
 .[C
 QB J				    !* Down to LISP for value in Scratch!
 12000000. M(M.M&_Exit_to_LISP)
 H XA
 QPrevious_Buffer M(M.MSelect_Buffer)
 QB,QC K			    !* Undo the damage!
 IA				    !* Insert S-expression!
 -1FS PJATY
 

!^R Get Function:! !^R Get a function definition and insert it in W2!

 13000000. M(M.M&_Exit_to_LISP)
 

!& Exit To LISP:! !S Simply return to LISP.
Calling (DOWN) in LISP will return to the current state of
EMACS.!

 .[0
  ZJ
  I_"
  Q0 J
  1F?			!* Close the gap, so LISP can!
			!* read from the buffer!
  FSEXIT
  

!& Setup INTERMACS Library:! !S SETUP!
  HK				    !* Empty the buffer for LEDIT!
  [J
  1M.VLISPFILE			    !* Creates the variable which holds!
				    !* the EMACS.TEMP file name.!
  FSJNAMEUJ			    !* If we are under a LISP job then!
  F~JLISP"E
    FS HSNAME FS D SNAME
    EREMACS.TEMP.FILE.0
    FS I FILE ULISPFILE
    Q.T [A
    M(M.M Make_Prefix_Character).T U.T

    FSBCONS[..O
    0F[S ERROR
    GPrefix_Char_List
    0J
    :S .T"E
      I .T__		    !* We have to add this strange string!
      HXPrefix_Char_List'	    !* to Prefix Char List to get Whereis,!
    F]S ERROR			    !* etc. to work.  See <EMACS>CONV.!
    ]..O
    M.M^R_Abort U:.T(A)
    M.M^R_Dwimify U:.T(D)
    M.M^R_Clispify U:.T(C)
    M.M^R_Get_Sexp U:.T(G)
    M.M^R_Pretty_Print U:.T(P)
    M.M^R_Finish U:.T(Z)
    M.M^R_Undo U:.T(U)
    M.M^R_Eval U:.T(E)
    M.M^R_Apply U:.T(F)
    M.M^R_Multi_Return U:.T(M)
    M.M^R_Extract_Sexp U:.T(X)
    M.M^R_Set_Variable U:.T(S)
    M.M^R_Replace_Sexp U:.T(R)
    M.M^R_Insert_Sexp U:.T(I)
    M.M^R_Get_Function U:.T(H)
    M.M^R_LEDIT_Eval U:.T()
    QA U:.T()
    M.M&_Lisp_SuperiorFS SUPERIOR'
  M(M.MInterlisp_Mode)
  FS OSPEED-1200"G 1'"# 3'M.VDisplay_Matching_Paren


  

  