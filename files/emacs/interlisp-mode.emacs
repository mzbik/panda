!* -*-teco-*-!
!~FILENAME~:! !EMACS functions for editing InterLisp code.!
INTERLISP-MODE

!InterLisp Mode:! !C Set things up for editing InterLisp code.
The following keys are set:
    ) > and ] all show the ( < or [ they match.
    ] inserts enough )s to balance the previous [.
    Tab indents to a "prettyprint" place.
    Meta-{ inserts the argth parameter of the current function being edited.
    Meta-} inserts the argth PROG variable.  (Describe it via Meta-? -- it
					      is a bit hairier/more-useful.)
    Control-Meta-? runs ^R InterLisp ?=, which is similar to InterLisp's ?=.
	You can describe it (and Analyze For ?=) for more details.!

 M(M.M& Init Buffer Locals)
 M.M^R Indent for LispM.QI
 Q(Q.M.Q)M.Q.
 !* Note:  The TWENEX library provides its own version of an InterLisp!
 !* Mode, which is simpler.  And it makes an InterLisp ..D variable!
 !* that is not compatible with our ..D -- [] and <> are considered!
 !* letters, not parentheses.  So we use a different variable name.!
 0fo..qINTERLISP-MODE ..Df"n m.q..D'	!* Make ..D local, set for IL.!
 "#w :i..D..D			!* ..D: Copy of old ..D.!
     1m(m.m& Alter ..D)<([(])>)%/"|/A|A;A !'!	!* ..D: Set IL characters.!
     q..Dm.vINTERLISP-MODE ..Dw	!* Save for next time.!
     q..DM.Q..D'			!* Make ..D local.*!
 M.M^R InterLisp ]m.Q]		!* Superbracket.!
 m.m^R Indent for InterLispm.Q		!* Our tab.!
 m.m^R Insert InterLisp Parameter Nameu..{
 m.m^R Insert InterLisp PROG Variable Nameu..}
 m.m^R InterLisp ?=u...?		!* C-M-? is like ?=!
 1,1M.LSpace Indent Flag		!* Ensure auto-fill causes indent.!
 1,36M.LComment Column
 1,(:i*(* )M.LComment Start
 1,1m.LComment Multi Line		!* Dont let filling end the!
					!* comment at each line.!
 1,(:i*))M.LComment End


 Q.0,1M(M.M& Set Mode Line)InterLisp

!Find InterLisp Source File:! !C String argument is filename.
It asks for a filename if a null string argument is given.
    If you answer with a null name again, it uses the default filename.
File is put into its own buffer with name being the file's 1st name.
Then the filename is reset to be a .TEMP file in the home directory.
Finally the file is prepared for editing by going into InterLisp mode and
    ensuring that there are enough )s before ]s to balance things.!

 [1[2[3
 5,fFind InterLisp Source Fileu1	    !* 1: Filename.!
 q1"e 1'			    !* Abort.!
 fq1"e				    !* Null STRARG.!
    5,m(m.m& Read Filename)Find InterLisp Source Fileu1'  !* 1: Filename!
 q1"e 1'			    !* Abort.!

 m(m.mFind File)1
 m(m.mReset To InterLisp Temporary)
 

!Collect Function To Zap To InterLisp:! !C Add to CollectedSExps buffer.
Doing M-X Zap Collected SExps To InterLisp will send it and other
    collected sexps back to InterLisp.!

 [1[2
 @m(m.m^R Mark Defun)w		    !* Make Region be this function.!
 :,.f x*u1			    !* 1: Copy of the definition.!
 m(m.m& Find Collected SExp Buffer)u2w	    !* 2: Collection buffer.!
 q2[..o 			    !* Teco-select it temporarily.!
 0fsVZw			    !* Wide bounds below!
 zj i

(DEFINEQ
1)
				    !* Append function definition.!
  

!Zap Collected SExps To InterLisp:! !C Send stuff in CollectedSExps buffer.
Sends all sexps in CollectedSExps buffer that haven't been zapped yet:
    Everything after the last "(* * * Zapped to InterLisp * * *)" line.
Unless the option Save CollectedSExps File is 0, we write out the
    CollectedSExps buffer if it needs saving.!

 [1[2[3
 m(m.m& Find Collected SExp Buffer)u1u2    !* 1: Collection buffer.!
				    !* 2: CollectedSExps filename.!
 q1[..o				    !* Teco-select it temporarily.!
 fsModified"n			    !* Needs saving.!
   0fo..qSave CollectedSExps File"n	    !* We are to save it.!
     q.F[..F			    !* ..F: Ensure Write File works.!
				    !* I.e. make sure we are considered!
				    !* top level.!
     -1,m(m.mWrite File)2''	    !* Save it.!

 0fsVBw 0fsVZw		    !* Wide bounds.!
 zj -:s
(* * * Zapped to InterLisp * * *)
"l fkc'"# bj'			    !* Go to after last zappage.!
 .fsVBw			    !* Virtual bounds below here.!
 h m(m.m& Zap To InterLisp)	    !* Send stuff after that.!
 zj f[Modified			    !* Dont let our zapped message be!
				    !* considered a modification.!
 i
(* * * Zapped to InterLisp * * *)


 				    !* Done with that.!

!Add Sexp To PROG List:! !C Previous sexp is added to previous PROG list.
Sexp may be either just the variable name, or a pair defining it.!

 .[0 fnq0j			    !* 0: Auto-restoring point.!
 -:@fll				    !* Move to just after prev sexp.!
 -@flx*[1			    !* 1: Previous sexp.!
 -s(PROG[PROG		    !* Back to the PROG.)!
 2fdl ful r			    !* Move to end of PROG list.!
 @m(m.m^R Indent New Line)f	    !* Put on new line, indented.!
 .,(g1).f			    !* Insert the sexp.!
 1				    !* Restore point and exit.!

!Analyze For ?=:! !C Find all functions in buffer, for ^R InterLisp ?=.!
 .[1 fn q1j			    !* 1: Auto-restoring point.!
 0f[vb 0f[vz bj		    !* Whole buffer.!
 [1[2[3[4
 1m.vLAMBDA LAMBDA Flagw	    !* These mark function definitions.!
 1m.vNLAMBDA LAMBDA Flagw	    !* ...!
 1m.vDLAMBDA LAMBDA Flagw	    !* ...!

 :< :s
(
[;  @fwx2			    !* 2: Possible function name.!
     .u1			    !* 1: Start of it.!
     @ft.			    !* ....!
     2:@fwl			    !* Over to maybe-LAMBDA.!
     @fwx3			    !* 3: LAMBDA or NLAMBDA etc.!
     0fo..q3 LAMBDA Flag"n	    !* Its good.!
	2:@fll 	@flx4		    !* 4: Argument list.!
	:i*(2 [3 4]) m.v?= 2 ?=w  !* $?= Foo ?=$.!
	'
     "# q1j' >			    !* Not found, start after fake.!

 

!Collect Region To Zap To InterLisp:! !C Zap it later.
Appends region to end of CollectedSExps buffer.!

 [1[2[3
 :,.f x1			    !* 1: Copy of the region.!
 m(m.m& Find Collected SExp Buffer)u2w	    !* 2: Collection buffer.!
 q2[..o				    !* Teco-select it temporarily.!
 0fsVZw			    !* Wide bounds below.!
 zj i

1
				    !* Append region.!
 

!Function Occur:! !C List functions with STRARG occuring in them.
List is also saved in $Last InterLisp Function List$,
    which Goto InterLisp Function can also access.
If the character immediately following Function Occur is "?",
    control is transferred to Goto InterLisp Function allowing
    the user to use a recursive ^R on the list to jump to the function.
1, means just make variable, dont print the list or check for "?".!

 :i*[0[1[2[3		    !* 0: STRARG.!
 .u1				    !* 1: Orig point.!
 :i2				    !* 2: Will collect the list.!
 m.m^R Beginning of DEFUN[B	    !* B: Move to function name.!

 bj				    !* Over all functions.!

 < :s0;			    !* Find next occurrence.!
   @mBw c			    !* Move back to maybe function name.!
   @flx3			    !* 3: Maybe function name.!
   f=3DEFINEQ"n		    !* Not DEFINEQ, so will be able to hop!
				    !* over it (the sexp).!
     0fo..qAtom 3 Not Function"e !* Isnt RPAQ, ADDTOVAR...!
       :i223
				    !* 2: Add name to list.!
       ff&2"e @flt ft
		  ''		    !* Type name if no 1, NUMARG.!
     r @fll'			    !* Forward over this function or RPAQ.!
   :s

( ; 				    !* To next function or something.!
   >				    !* Repeat for all functions.!

 q2m.vLast InterLisp Function Listw	    !* Save list.!

 ff&2"e :fi-?"e 0u..h fiw m(m.m Goto InterLisp Function)?''
				    !* Maybe go select a function to find.!

 q1j 				    !* Else restore orig point, exit.!

!Goto InterLisp Function:! !C Put point at start of function STRARG.
Searches over whole buffer, setting wide bounds first.
Leaves point after the function name.
NUMARG means start from point and find next match.

If STRARG is "?", a recursive ^R is called on $Last InterLisp Function List$
    which is set by other functions, e.g. Function Occur (TEST).
    If the variable does not exist, it defaults to a list of all functions
    in the buffer.

This may want to turn into a TAGS thing some day.  At least may want to
hack multiple buffers/files.!

 :i*[.0			    !* .0: STRARG, Function name.!
 .[.1				    !* .1: Original point.!
 0[.2[.3[..J
 0,fsZ fsBoundariesw		    !* Wide bounds.!

 f=.0?"e			    !* STRARG is ?, use last list.!
    0fo..qLast InterLisp Function Listu.3  !* .3: Last function list.!
    q.3"e 1,m(m.m Function Occur) !* No last list, get all functions.!
        qLast InterLisp Function Listu.3' !* .3: Last list.!

    f[BBind			    !* Grab a temp buffer.!
     g.3 bj			    !* Get the list of functions.!
     :i..jSelect InterLisp function to find      !* Recursive edit.!
     0l :@fll @flx.0		    !* .0: Selected function name.!
    f]BBind'			    !* Get rid of temp buffer.!

 bj				    !* First try to find the function using!
				    !* the name exactly as given.!
 m(m.m& Prefix Goto InterLisp Function).0u.2  !* .2: 0 iff not found.!

 q.2"e				    !* Couldnt find it, point unchanged.!
    ff"e bj'		    !* Try from top of buffer if no NUMARG.!
    "# q.1j'			    !* Else try from original point.!
    m(m.m& Prefix Goto InterLisp Function).0u.2'	    !* Try again!
				    !* allowing partial matching on name.!

 q.2"e q.1j			    !* Still not found, restore point.!
    :i*InterLisp function .0 not found fsErr'   !* Goodbye.!

  0 @m(m.m^R New Window) 	    !* Found, function name at top.!

!Edit Interlisp Function:! !C Prepare for editing function STRARG.
STRARG may be a prefix of the function name -- first found.
Null string arg means the function containing point.
Bounds are set around this function, and it is marked with an edited-by
    comment, unless $Mark Edited Interlisp Functions$ is 0.!

 :i*[.1			    !* .1: STRARG, function name.!

 fq.1"g m(m.m Goto InterLisp Function).1'	    !* Go find it if a!
				    !* name is given.!
 @m(m.m^R Mark Defun)w		    !* Bounds around this function.!
 @m(m.m^R Set Bounds Region)w	    !* ...!
 bj @f	 
r .fsVBw			    !* Bounds not include initial CRLF!
 .fsWindoww			    !* This will be top of window.!
 @fwl				    !* Move past function name, so can!
				    !* mark the function.  (Must be inside)!
 1fo..qMark Edited Interlisp Functions"n   !* Maybe mark the function.!
    @m(m.m^R Edited-By)f'	    !* ...!
 1

!Reset To InterLisp Temporary:! !C Resets filename, InterLisp Mode, brackets.
Filename of visited file to home directory and extension of TEMP.
Go into InterLisp mode and add enough parentheses before ]s to balance things.!
 f[Modified			    !* Save whether is modified.!
 f[DFile fsHSNamefsDSNamew
 fsDSName:f6[H			    !* H: Home directory name.!
 m(m.m Set Visited Filename)H; TEMP
 m(m.m InterLisp Mode)
 m(m.m & From Interlisp Brackets)
 

!Zap Buffer To InterLisp:! !C Send contents of buffer to InterLisp.
Appends this buffer to end of CollectedSExps buffer,
then does a Zap Collected SExps To InterLisp.!

 [1[2[3  q..o[0			    !* 0: Original buffer.!
 m(m.m& Find Collected SExp Buffer)u1w	    !* 1: Collection buffer.!
 q1[..o 0fsVZw			    !* Teco-select it, wide bounds below.!
 zj g0				    !* Append original buffer.!
 :m(m.mZap Collected SExps To InterLisp)   !* Zap!

!Zap Function To InterLisp:! !C Send function defined around point.
Does a Collect Function To Zap To InterLisp, followed by
    Zap Collected SExps To InterLisp.
Region is left around the function.!

 m(m.mCollect Function To Zap To InterLisp)
 :m(m.mZap Collected SExps To InterLisp)

!Zap Region To InterLisp:! !C Send point to MARK to InterLisp.
Does a Collect Region To Zap To InterLisp, followed by
    Zap Collected SExps To InterLisp.!

 m(m.mCollect Region To Zap To InterLisp)
 :m(m.mZap Collected SExps To InterLisp)

!Zap String To InterLisp:! !C Send STRARG to InterLisp.
Appends STRARG to CollectedSExps buffer, then does a
    Zap Collected SExps To InterLisp.!

 :i*[0[1			    !* 0: STRARG.!
 m(m.m& Find Collected SExp Buffer)u1w	    !* 1: Collection buffer.!
 q1[..o 0fsVZw			    !* Teco-select it, wide bounds below.!
 zj i

0

				    !* Append STRARG.!
 :m(m.mZap Collected SExps To InterLisp)

!^R Edited-By:! !^R Marked as edited with $Interlisp Edited-By Name$.
Puts an Interlisp edited-by comment on function containing point.
The edited-by name is taken from $Interlisp Edited-By Name$, which
    defaults to the username.
This function knows about putting the comment after DECLARE and CLISP:
    compiler declarations.!

 [.0 z-.:\u.0 fn1:<(z-.0)j>w	    !* Restore original point.!
 [.1[.2 f[VB f[VZ		    !* Save bounds.!
 @m(m.m^R Beginning of DEFUN)w	    !* Move to 1st line of function def!
 2fdl 2@fll			    !* Down and past lambda/nlambda and!
				    !* its variable list/atom.!

 < @f 	
  r				    !* Right past whitespace.!
   1a-(@:;			    !* Loop while have (.!
   c @fwf=DECLARE"e		    !* Edited-by goes after DECLARE.!
      r @fll'			    !* ...!
   "# @fwf=CLISP:"e		    !* And after CLISP:.!
      r @fll'			    !* ...!
   "# r 1;'' >			    !* Stop -- put it here.!

 .u.0				    !* .0: Point before any changes.!
 13 f~(* Edited by "e		    !* If already an edited-by,!
    flk @f 	k'	    !* then kill it.!
 1a-15."n fsHPos'"# 0'u.1	    !* .1: Save hpos in case anything there.!
 q.1"g i
 2r'
 @m(m.m^R Indent for Comment)f
 iEdited by 
 0fo..qInterlisp Edited-By Nameu.2 !* .2: 0 or name.!
 q.2"e g(fsXUName:f6)'		    !* Default.!
 "# g.2'			    !* Name specified.!
 i on 

 .fsVBw fsZ-.fsVZw		    !* Narrow bounds for date hacking.!
 eg j 5k 2:fwk			    !* Kill EG junk to month.!
 fwfx.2				    !* .2: Month!
 d fwl 3d i-.2-		    !* Past daynum, get -month-.!
 2c .,zk			    !* Past year, kill rest of EG junk!
 i)				    !* No file for now.!

 0fsVBw 0fsVZw		    !* Widen bounds.!
 m.m^R Indent For Lisp[I	    !* Set standard LISP tab for fill-indent!
 0@m w			    !* Call Space in case filling.!
 1a-15."n i
'				    !* Ensure a CRLF after the comment.!
 @f
l				    !* After the CRLF we inserted earlier.!
 q.1"n q.1m(m.m& Indent)w'	    !* Indent if have to.!
 l q.0,. 

!^R End InterLisp Comment:! !^R Insert *) and CRLF.!
 .,(i *)).f			    !* End this comment.!
 .-z"e .,(i
).f'"# l'			    !* Next line.!
 1

!^R Goto InterLisp Function:! !^R Find function whose name is to left.!

 [1[2
 -@f
 	l			    !* Left past whitespace.!
 -@fwx1				    !* 1: Function name.!
 m(m.mGoto InterLisp Function)1	    !* Go to it.!

!^R Indent for InterLisp:! !^R Like LISP but ignore (*...).!

 .[.0[.1 0[.2			    !* .0: Save point.!
				    !* .2: 0.!

 <				    !* Keep trying LISP tab til ok.!
    1,m(m.m^R Indent For LISP)u.1  !* .1: LISP tab choice of indent column.!
				    !* ..1: Start of last umatched lpar.!
				    !* ..2: Start of last complete sexp.!
    q..2"l 1;'			    !* Ok if no last complete sexp.!
    q..2-."g 1;'		    !* Or if complete one is after point.!
    q..2,q..2+2f=(*"n 1;'	    !* Also ok if last sexp wasnt comment.!
    q.2"n q.2j 2d'		    !* Go clean up earlier CRLF.!
    0u.2			    !* .2: and reset CRLF indicator.!
    q..2j 			    !* Otherwise, ignore that choice, and!
				    !* try again.!
    0:fb)"l q..2j -fll		    !* Skip a list back from comment,!
	     .u.2 i
	     '			    !* .2: Insert CRLF and try there.!
    "# 0l'			    !* Or just go to line with comment.!
    >				    !* Then try again.!

 q.2"n q.2j 2d'			    !* Clean up any earlier CRLF.!
 q.0j				    !* Back to original point.!
 z-.u.0				    !* .0: Orig Z-point.!
 0l				    !* To beginning of line for indent.!
 1:<q.1 m(m.m& Indent)f>	    !* And indent if can.!
 z-.-q.0"g z-q.0j'		    !* To orig point if further in line.!
 1

!^R Insert InterLisp Parameter Name:! !^R Argth param.!
 [1
 .( -s(LAMBDA[LAMBDA(NLAMBDA[NLAMBDA(DLAMBDA[DLAMBDA
				    !* Back to the lambda.!
    +1:@fwl			    !* Move to the Argth param.!
    @fwx1			    !* 1: Param name.!
    )j				    !* Back to orig point.!
 .,(g1).			    !* Insert the param name.!

!^R Insert InterLisp PROG Variable Name:! !^R Argth progvar.
If next character typed is + or -, list of PORG variables is shown in echo
    area and then we recurse with NUMARG+1 or NUMARG-1 after deleting the
    variable name just inserted.!
 .[0[1[2[3[4[5			    !* 0: Original point.!

 -s(PROG[PROG		    !* Back to the PROG.)!
 2fdl				    !* Into varlist.)!
 .u2				    !* 2: Point of varlist start!
 -1@fll			    !* Right past ARG-1 sexps.!
				    !* (Vars and inits.)!
 :fwl @fwx1			    !* 1: Param name.!
 q0j				    !* Back to orig point.!
 g1				    !* Insert variable name.!
 q0,.@v				    !* Update the display.!
 :fiu3				    !* 3: Read next character typed.!
 q3-+"n q3--"n 1''	    !* Done if next character not + or -.!

				    !* User wants to change mind.!

 fiw				    !* Gobble the + or -.!
 q0,.k				    !* Kill that varname.!

				    !* Will show variable list if not a!
				    !* recursive call, i.e. if no 1, NUMARG.!
 ff&2"e			    !* ...!
    q2j -ful			    !* Back to PROG list to make name list.!
    flu4w			    !* 4: End of PROG list.!
    0u1				    !* 1: Varname counter.!
    :i*C fs echo displayw	    !* Clear the echo area.!
    :< q2j			    !* Back to PROG list start...!
       %1:@fll :@fwl .-q4;	    !* 1: ... and up to next varname if one.!
       @fw@t @ft  >		    !* Type that in echo area.!
    0fs echo activew		    !* Keep that output around.!
    q0j'			    !* Back to original point.!

 1,(q3-+"e +1'"# -1')(	    !* Get NUMARGs for next call.!
   ) @m(m.m^R Insert InterLisp PROG Variable Name)

!^R InterLisp ?=:! !^R Show function kind and parameters in echo area.
The command Analyze For ?= will store the info needed by this command.!

 .[1 fn q1j			    !* 1: Auto-restoring point.!
 [1[2[3
 -:ful :@fwl @fwx1		    !* 1: Function name.!
 0fo..q?= 1 ?=u2		    !* 2: ?= text.!
 q2"e FG 1'			    !* Not found.!
 :i*C fs echo displayw	    !* Clear echo area.!
 @ft2			    !* Type ?= stuff.!
 0fs echo activew		    !* Keep it around.!
 1

!^R InterLisp ]:! !C Add enough parens so inserted ] balances [.
Will assume there is always matching [...], i.e. not handle top-level-].!
 .[.1[.2[.3			    !* .1: Original point.!
 i]				    !* Insert the ] temply.!
 z-.u.2				    !* .2: z-. for next rbracket.!
 <				    !* Will keep adding parens til moving!
				    !* left gives us a [.!
   -fll				    !* Back over matching any-parens.!
   1a-["E 1;'			    !* If its a [, done this ].!
   z-q.2-1j i)			    !* Nope, insert another ) before ].!
   c>				    !* Past the ] and try again.!
 z-q.2j				    !* Got a match, point after ].!
 -d				    !* Take out ] since will reinsert.!
 q.1,.f			    !* Tell ^R about inserted )s.!
 f@:m(]fs^RInit)		    !* Now reinsert ] and show matching one.!

!^R List InterLisp Parameter Names:! !^R Of enclosing lambda.!
 [1
 .( -s(LAMBDA[LAMBDA	    !* Back to the lambda.])!
    c :fll flx1			    !* 1: Lambda param list.!
    )j				    !* Back to orig point.!
 @ft1 0fsechoactivew	    !* Print list.!
 1

!^R List InterLisp PROG Variables:! !^R Of enclosing lambda.!
 [1
 .( -s(PROG[PROG		    !* Back to the PROG.])!
    c :fll flx1			    !* 1: PROG variable list.!
    )j				    !* Back to orig point.!
 @ft1 0fsechoactivew	    !* Print list.!
 1

!& Act Upon InterLisp Return:! !S Process LISP-TO-EMACS.XFER.1 file.
*** For the moment this isnt used and maybe should be scrapped as slow and
awkward?
File is one list:  CAR is RequestType, CADR is 1 sexp, the argument.
Calls & Process InterLisp <requesttype> Request, which should take one
    NUMARG, the sexp argument.!

 0[1[2[3			    !* 1: 0 (init) or RequestType.!
 :i*..D[..D		    !* ..D: Make a copy for us now.!
 [*5+1:f..D(		    !* ..D: Turn on brackets as parens.!
 ]*5+1:f..D)		    !* ...!
 fs qp ptr[.0			    !* .0: Qp ptr for popping buffer.!
 f[bbind f[dfilew
 1:< erLISP-TO-EMACS.XFER.1 @y >"e !* Something to process.!
   m(m.m& From Interlisp Brackets) !* Ensure parens all balanced.!
   fdl				    !* Down into list before RequestType.!
   @fwx1			    !* 1: RequestType, atom.!
   2:@flr			    !* Over to sexp, the argument.!
   @flx2			    !* 2: The argument.!
   edLISP-TO-EMACS.XFER.1	    !* Clean up.!
   '				    !* End of grabbing request.!

 q.0fs qp unwindw		    !* Pop temp buffer.!
 q1"n				    !* Have a request.!
    1,0m.m& Process InterLisp 1 Requestu3	    !* 3: 0 or subroutine.!
  q3"n q2m3 '		    !* Go process the request.!
    :i*REQ	Unknown InterLisp request type 1 fs err'
 				    !* No request, just exit.!

!& Find Collected SExp Buffer:! !S Returning buffer filenames, pointer.
Finds/creates EMACS buffer of name CollectedSExps,
and gives it filename.
Returns Val1,Val2:  Val1 is filenames, Val2 is bufptr.!

 [1[2[3 :i2CollectedSExps	    !* 2: Collection buffer name.!
 1,q2 m(m.m& Find Buffer)u1	    !* 1: Buffer index.!

 q1+1"e				    !* -1 means EMACS buffer doesnt exist.!
     [Previous Buffer		    !* Dont let us change this.!
     f[DFile			    !* Save default filename.!
     qBuffer Nameu3		    !* 3: Current buffer name.!
     @ft
(Creating 2 buffer...	    !* Since takes time.!
     q2 m(m.mSelect Buffer)	    !* Create and select collection.!
     etDSK: fsHSNamefsDSNamew    !* Use home directory.!
     etCollectedSExps TEMP	    !* Filename for this buffer.!
     fsDFile uBuffer Filenames   !* Set it.!
     q..ou1			    !* 1: Teco buffer pointer.!
     q3 m(m.mSelect Buffer)	    !* Return to old buffer.!
     @ftdone) 0fsEchoActivew	    !* Tell user.!
     (fsDFile),q1 '		    !* Return filenames, bufptr.!

 (q:.b(q1+2)),(q:.b(q1+4)) 	    !* Return filenames, bufptr.!

!& From Interlisp Brackets:! !C Add enough parens to balance.
Ignores %] but doesn't handle "...]..." unfortunately.
Will assume there is always matching [...], i.e. not handle top-level-].!
 .[.1[.2[.3[..j bj		    !* .1: Original point.!
 < !ITER!			    !* Come here to repeat loop.!
   :s]; z-.u.2			    !* .2: z-. for next rbracket.!
   -1a-%"e oITER'		    !* Ignore %].!
   :<				    !* Will keep adding parens til moving!
				    !* left gives us a [.!
      -fll			    !* Back over matching any-parens.!
      1a-["E 1;'		    !* If its a [, done this ].!
      z-q.2-1j i)		    !* Nope, insert another ) before ].!
      c				    !* Past the ] and try again.!
      >"n			    !* Something bad, maybe bracket in a!
				    !* string or something...!
	   z-q.2j		    !* Position at bad bracket.!
	   :i..jPlease fix this bracket  '	    !* Let user fix.!
   "#      z-q.2j'		    !* Got a match, move past ].!
   >				    !* And go work on next one.!

 q.1j 0l 

!& Prefix Goto InterLisp Function:! !S Find function prefixed by STRARG.
Looks for first match of CRLF (strarg whitespace (LAMBDA.
    [ versions also allowed.  NLAMBDA, DLAMBDA ok too.
Returns 0 if not found. Non-0 if found.
Returns with point after name if found, or else unchanged.!

 :i*[.0			    !* .0: String argument, prefix.!
 .[.1				    !* .1: Orig point.!
 < :s
(.0; 			    !* Find next possible defun of name.!
   @:f 	
  r				    !* Right to whitespace, i.e. go past!
				    !* rest of name if any.!
   @f 	
  r				    !* Right past whitespace.!
   7 f=(LAMBDA"e -l fwl 1'	    !* Found it, return 1.!
   7 f=[LAMBDA"e -l fwl 1'	    !* ...!
   8 f=(NLAMBDA"e -1 fwl 1'	    !* ...!
   8 f=[NLAMBDA"e -1 fwl 1'	    !* ...!
   8 f=(DLAMBDA"e -1 fwl 1'	    !* ...!
   8 f=[DLAMBDA"e -1 fwl 1'	    !* ...!
   >				    !* Else keep looking.!
 q.1j				    !* Not found, restore orig point.!
 0				    !* Return 0 for not found.!

!& Return To InterLisp:! !C Tell EXEC to POP. When return, check communication.
Coroutine with InterLisp as its fork.
    Done via file EMACS-LISP-COROUTINE.CMD which POPs to LISP then
    CONTINUEs to EMACS.  (File in home directory.)
Upon return, see if InterLisp wrote us a LISP-TO-EMACS.XFER.1 file.
If so, act upon it.
The variable $Dont Return To InterLisp$ is set to inhibit this command,
    e.g. to inhibit recursive invocations, which are not yet well understood.!

 [1
 0fo..qDont Return To InterLisp"n
    :i*Cant return now, not at top level fsErr'
 1m.vDont Return To InterLispw	    !* Until we are done, inhibit.!

 f[DFilew fsHSNamefsDSNamew	    !* Use home directory.!
 fsDSName:f6u1			    !* 1: Home directory as string.!

 1:<erEMACS-LISP-COROUTINE.CMDec>"n	    !* See if must write.!
    f[BBindw iPOP
CONTINUE

    ew pwefEMACS-LISP-COROUTINE.CMD'	    !* Yes, write one.!

 f+				    !* Clear screen before exit.!
 TAKE <1>EMACS-LISP-COROUTINE.CMD
				    !* To EXEC, tell it to coroutine.!

 m(m.m& Act Upon InterLisp Return)
 0m.vDont Return To InterLispw	    !* Ok now that we are done.!
 

!& SetUp InterLisp-Mode Library:! !S Make some needed variables.!

 1m.cSave CollectedSExps File* Non-0 enables auto-saving of collected SExps.w
 1m.vAtom RPAQ Not Functionw	    !* Tell what to ignore as unfunctions.!
 1m.vAtom RPAQQ Not Functionw	    !* ...!
 1m.vAtom PRETTYCOMPRINT Not Functionw	    !* ...!
 1m.vAtom ADDTOVAR Not Functionw	    !* ...!
 1m.vAtom * Not Functionw	    !* ...!
 1m.vAtom FILECREATED Not Functionw	    !* ...!
 1m.vAtom DECLARE: Not Functionw   !* ...!
 

!& Zap To InterLisp:! !S Send range of buffer to InterLisp.
NUMARG1,NUMARG2 is the range of buffer to send.  May be null.
Writes to EMACS-TO-LISP.XFER.1 in home directory.
Then returns to InterLisp.!

 fsQPPtr[0			    !* 0: Unwind to here.!
 [1[2 .:\u1 fn1j		    !* Set auto-restoring point.!
 ff u2u1			    !* 1,2: Two NUMARGs, the range.!
 q1j				    !* To beginning of range.!
 @f 	
l				    !* Past whitespace.!

 .-q2"l				    !* If something to zap, will write it.!
    f[DFilew fsHSNamefsDSNamew   !* Default to home dir.!
    etEMACS-TO-LISP.XFER.1	    !* Save, set default.!
    ew				    !* Open the file for writing.!
    q1,q2 p			    !* Write out range, dont close.!
    q2j -@:fll			    !* To end of last sexp.!
    -@fwf=STOP"n		    !* No STOP, must put one in.!
	    f[Modifiedw	    !* Save whether buffer modified.!
	    .,(i
STOP
	       ).f(p)k'		    !* Write out the STOP if needed,!
				    !* deleting it when done.!
    ef'			    !* Close the file.!


 q0fsQPUnwindw			    !* Pop temp buffer or whatever.!
 :m(m.m & Return To InterLisp)	    !* Coroutine to lisp and back.!
