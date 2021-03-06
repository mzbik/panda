!* -*- TECO -*-		Library created and maintained by WJN@DM !
!* <EMACS>MUDDLE.EMACS.13, 26-Apr-82 11:24:20, Edit by LSR--
   fixed bug where ^R Muddle Structure Insert was permanently
   bound to C-M-S

   also made MUDDLE Mode create a local var MM ^R Indent for Lisp
   which runs ^R Indent for MUDDLE; this is needed because the former
   is called by ^R Indent Sexp!

!* <EMACS>MUDDLE.EMACS.6,  3-Mar-82 12:07:32, Edit by LSR--
   added support for using new Lisp Indenter !

!~Filename~:! !Macros for hacking MUDDLE code!
Muddle

!& Setup Muddle Library:! !& Set up environment for Muddle macros!
 1                                  M.VMuddle_Insert_Marker_Strings?
 :I**$                                     M.VMuddle_Marker_Prefix
 :@I*\I"AUX" MP\                                   M.VMuddle_Insert_
 :@I*\I"DONE" MP\                                  M.VMuddle_Insert_
 :@I*\I"EXTRA" MP\                                 M.VMuddle_Insert_
 :I*MG                                             M.VMuddle_Insert_
 :@I*\I"OPTIONAL" MP\                              M.VMuddle_Insert_
 :I*-MS MP MC                                      M.VMuddle_Insert_
 :I*MS MP MC                                       M.VMuddle_Insert_
 :@I*\I"TUPLE" MP\                                 M.VMuddle_Insert_
 :I*                                       M.VMuddle_Insert_Altmode
 :@I*\MP I_ MC\                                    M.VMuddle_Insert
 :@I*\I! MP MC\                                    M.VMuddle_Insert_!
 :@I*\MG I" MP I"\                                M.VMuddle_Insert_"
 :@I*\I' MP MC\                                    M.VMuddle_Insert_'
 :@I*\MG I( MP MMelements I)\                    M.VMuddle_Insert_(
 :@I*\MG I<*_ MP MMexpressions I>\               M.VMuddle_Insert_*
 :@I*\MG I<+_ MP MMexpressions I>\               M.VMuddle_Insert_+
 :@I*\MG I, MP\                                    M.VMuddle_Insert_,
 :@I*\MG I<-_ MP MMexpressions I>\               M.VMuddle_Insert_-
 :@I*\MG I. MP\                                    M.VMuddle_Insert_.
 :@I*\MG I</_ MP MMexpressions I>\               M.VMuddle_Insert_/
 :@I*\MG I;" MP I"\                               M.VMuddle_Insert_;
 :@I*\MG I< MP MMelements I>\                    M.VMuddle_Insert_<
 :@I*\MG I<==?_ MP MMexpression I_ MMexpression
   I>\                                             M.VMuddle_Insert_=
 :@I*\MG I<AND_ MP MMexpressions I>\             M.VMuddle_Insert_A
 :@I*\MG I<COND_( MP MMpredicate I_ MMconsequents
   I)>\                                            M.VMuddle_Insert_C
 :@I*\MG I<DEFINE_ MP MMname I_( MMarglist I)_#DECL_(( MMargs I)_
   MMdecls I)_ MMexpressions I>\                M.VMuddle_Insert_D
 :@I*\MG I(ELSE_ MP MMconsequent I)\             M.VMuddle_Insert_E
 :@I*\MG I<FUNCTION_( MP MMarglist I)_#DECL_(( MMargs I)_ MMdecls
   I)_ MMexpressions I>\                         M.VMuddle_Insert_F
 :@I*\MG I<GET_ MP MMexpression I_ MMexpression
   I>\                                             M.VMuddle_Insert_G
 :@I*\MG I<LENGTH_ MP MMstructure I>\            M.VMuddle_Insert_L
 :@I*\MG I<MAPF_ MP MMfinalf I_ MMfunction I_ MMstructures
   I>\                                             M.VMuddle_Insert_M
 :@I*\MG I<NTH_ MP MMstructure I_ MMindex I>\  M.VMuddle_Insert_N
 :@I*\MG I<OR_ MP MMexpressions I>\              M.VMuddle_Insert_O
 :@I*\MG I<PROG_( MP MMauxlist I)_#DECL_(( MMauxs I)_ MMdecls I)_
   MMexpressions I>\                              M.VMuddle_Insert_P
 :@I*\MG I<REPEAT_( MP MMauxlist I)_#DECL_(( MMauxs I)_ MMdecls
   I)_ MMexpressions I>\                         M.VMuddle_Insert_R
 :@I*\MG I<SETG_ MP MMatom I_ MMexpression I>\ M.VMuddle_Insert_S
 :@I*\MG I<TYPE?_ MP MMexpression I_ MMtypes
   I>\                                             M.VMuddle_Insert_T
 :@I*\MG I<USE_ MP MMpackages I>\                M.VMuddle_Insert_U
 :@I*\MG I#DECL_(( MP MMargs I)_ MMdecls I)\   M.VMuddle_Insert_V
 :@I*\MG I[ MP MMelements I]\                    M.VMuddle_Insert_[
 :@I*\MG I{ MP MMelements I}\                    M.VMuddle_Insert_{

				    !* start of changed by LSR!
 1m.v Muddle_REPEAT_Indent	    !* REPEAT!
 1m.v Muddle_PROG_Indent	    !* PROG!
 1m.v Muddle_FUNCTION_Indent	    !* FUNCTION indents like DEF-form!
 1m.v Muddle_Indent_DEFanything    !* Indent all DEF-forms specially!
 0m.v Muddle_Indent_Offset
 m.m &_Standard_Muddle_Indentation_Hookm.v Muddle_Indentation_Hook
				    !* end of LSR's changes!
 				    !* Return!

!MUDDLE Mode:! !C Enter a mode for editing MUDDLE code.
Modifies the delimiter dispatch, ..D, appropriate for MUDDLE syntax,
puts special rubout on rubout, sets parameters for comment hackery,
and defines Tab to be ^R Indent for Muddle. !

 M(M.M &_Init_Buffer_Locals)
 M.M ^R_Indent_for_Muddle M.Q 	
 1,(M.M ^R_Indent_for_Muddle) M.L MM_^R_Indent_for_Lisp
 M.M^R_Muddle_Structure_Insert M.Q...S
 1,1M.L Space_Indent_Flag
 1,:I*Muddle m.l Lisp_Indent_Language	    !* changed by LSR!
 1,Q(1,Q. M.QW )M.Q .	    !* Exchange rubout flavors.!
 1,56 M.L Comment_Column
 QPermit_Unmatched_Paren"L
   1,0M.LPermit_Unmatched_Paren'
 1000000.[2 Q2-1&(aFS^R INIT)[1
   !<<!
     >-)*Q2+Q1 M.Q >
   ]-)*Q2+Q1 M.Q ]
   }-)*Q2+Q1 M.Q }
   ]1 ]2
 1,(:I*;) M.L Comment_Start
 1,(:I*;") M.L Comment_Begin	    !* WJN 1/8/81!
 1,(:I*") M.L Comment_End
 M.Q ..D
 0FO..Q MUDDLE_..D F"N U..D'	    !* Select the MUDDLE syntax table!
 "# W :G..D U..D		    !* creating it if doesn't exist.!
   Q..D M.V MUDDLE_..D
   !"""""""!		    !* To balance following apostrophes!
				    !* LSR's change ; to act like ' !
		 1M(M.M&_Alter_..D) <( >) '' !' ,' .' #' %' \/ "| /A |A ;'
     '
 1M(M.M&_Set_Mode_Line) Muddle 

!Syntax Check:! !C MUDDLE Syntax checker, adapted from RMODE M-S!
 1:<
   :I*CSyntax_Checking FS Echo Display
   0 FS Echo Active
   [0[1[2[3 .[4			    !* Remember point!
             J
	     1:<
	       !TOP! .U3 0U2 [3 [2
	       !AGAIN! :S{<(["])>}U1 .U0
	       Q1"E ]2 ]3 Q2"E OWIN' OUNM'
	       0,-1A-\"E OAGAIN' Q1+5U1
	       Q1"G [0 [1 OAGAIN'
	       Q1"L ]2 ]3 Q2"E OXTRA' Q1+Q2"N OMISM' OAGAIN'
	       0,-1A-!"E C OAGAIN'
	       .U3 R :S\""E OUNM' OAGAIN
	       !MISM! 7FSIMAGE 0,Q3-.A:I2 0,Q0-.A:I1
	       :I*C2_Mismatched_by_1 FS Echo Display
	       0 FS Echo Active
	       Q3-1J Q0U...T 0;
	       !UNM!  7FSIMAGE 0,Q3-.A:I2
	       :I*C2_Unmatched FS Echo Display
	       0 FS Echo Active
	       Q3-1J Q0U...T 0;
	       !XTRA!  7FSIMAGE 0,0A:I2
	       :I*C2_Extraneous FS Echo Display
	       0 FS Echo Active
	       R Q3-1U...T 0;
	       !WIN!
	       Q4J		    !* Restore point!
               :I*CSyntax_Correct FS Echo Display
	       0 FS Echo Active
	       > U0 Q0F"L-@FEQIT"E <FIF;>''
             ]4]3]2]1]0
   >
 

!^R Muddle Structure Insert:! !C MUDDLE structure insertion
The next character determines what structure will be inserted.
The template for the insertion is the variable
$Muddle Insert <char>$
where <char> is the character typed in.  The template consists
of a sequence of the following, as a TECO program:
I<string>$	insert the string.
MC		continue, getting another character from user.
MG		gobble marker immediately after the point, if there
		is one.
MM<string>$	insert a marker.  The marker consists of the contents
		of $Muddle Marker Prefix$.  If
		$Muddle Insert Marker Strings?$ is nonzero, the
		specified string is also inserted.
MP		put the point here when done.
MS		put point just before marker (may take arg).!
 :I*CMuddle_Insert:_ FS Echo Display
 QMuddle_Marker_Prefix [0
   QMuddle_Insert_Marker_Strings [1
     . [2			    !* For eventual point!
       [C :@IC\Q2J @V FI [3
	     Q3-27"E :FO..QMuddle_Insert_Altmode U3' "#
	       :@FO..QMuddle_Insert_3 U3'
	     Q3 "G M: ..Q (Q3 + 1)' "# 7 FS Image' ]3\
	 [G :@IG\-2-(:S0)"N Q2J @FLK'\
	   [M :@IM\G0 [3 :I3 Q1 "N G3' ]3\
	     [P :IP .U2
	       [S :@IS\FCFS0 +1"G FKC'\
	       MC Q2J ]S ]P ]M ]G ]C ]2 ]1 ]0 

!& Standard Muddle Indentation Hook:! !& Internal hook to help Muddle indentation!
!* Modified by LSR from the LISP version.  

   Treats the #Foo (...) construct as (#Foo ...) when trying to find
   the appropriate indentation hook.
!

!* This function assumes f has been done and that q..0, q..1, and q..2 are set up.
Argument conventions --
 ^X is pos of head of sexp (leading open paren)
 ^Y is cursor position at indent time
 qZ is the offset from end of buffer of the cursor pos we began at !

    [1[2[3			    !* Get temp qregs!
    2fo..Q L_Special_Indent_Offset u1    !* q1: indent offset!
    .u2				    !* q2: standard algorithm result!
    
				    !* begin LSR's changes!
    j				    !* jump to start of list!
    1:<-@FLL>			    !* see if in a #FOO (...) construct!
    1a-# "E			    !* yes...!
       @flx4			    !* save keyword !
       '
    "# +1j
       1a*5+1:g..D-A"n q2j 0'    !* Return if non-alpha char leads!
       @flx4			    !* q4: keyword to test!
       @fll			    !*  Skip our operator!
       '
				    !* end LSR's changes!

    -3 fo..Q L_4_Indentu3    !* Look up indentation info!
    fq3:"l q2j :fm3'		    !* If a string, macro it & return!
     q3:"l oSpec '		    !* If non-negative, is a specform!
    q3+1"e oDef '		    !* -1 = DefForm!
    q3+2"e q2j 0'		    !* -2 = Override any indent hacks!
				    !* -3, ... fall through to here!
    qL_Indent_DEFanything"n	    !* If he wants us to,!
     f~4DEF_-4"e oDef''	    !*  check first for (DEF...!
    q2j 0			    !* Return using default indent!

 !Spec!				    !* Come here if a special form!
    .( +q1j fs shposu4 )j	    !* Compute body indentation hpos.!
    :<:@fll 1a-;:@; l>	    !* Find start of first argument.!
    fs shpos-q4:"g q2j 0'	    !* If it's indented less than body should be,!
				    !* the body must match it.!
    q3 :<<:@fll 1a-;:@; l> @fll>"n	    !*  Skip that many forms!
	      q2j ,0'	    !*   If fails, give up!
    .-"g q2j ,0'		    !*   If past it, give up!
    1:<<:@fll 1a-;:@; l> @fll>"n  !*  Skip another form!
	      +q1j 0'	    !*   Win if failure!
    .-"g +q1j 0'		    !*   Win if past it!
    q2j 0			    !*  Else use default indent!

 !Def!				    !* Come here if a DefForm!
    l .-q..2"g			    !*  If this is first exp in form!
        +q1j ,0'		    !*   Jump to head and indent!
      "# q2j '			    !*   Else use default indentation!
    0				    !* Say cursor is at right place!

!^R Indent for Muddle:! !^R Indent this line for a Lisp-like language.
With arg, moves over and indents that many lines.
The variable Lisp Indent Language (default "Lisp") controls the dialect.
Handlers may be defined per-dialect to make this function win for other
Lisp-like languages.  With a pre-comma arg, return indentation level instead
of changing anything and don't treat ;;; comments specially.!

!* Adapted from standard version by LSR (4/5/82) to explicitly check
    for the existence of comments (needed in Muddle since we want
    ;"foo" to be treated as one s-exp).  Never indents under an s-exp
    that begins with qComment Begin.
Also treats the Muddle #Foo (...) construct as if it were
    written (#Foo ...).  This only affects (I think) the second line
    of such constructs--the second line will indent under the first
    thing in the parens.  This is good for #DECL lists.
**** NOTE: this version should be compatible with the standard version
     as far as Lisp Mode is concerned. ****!

!* Indentation is first computed by a long-standing indentation algorithm.
   Relevant variables:
     Lisp Indent Offset (default 0), if nonzero indent this many columns 
       past the most recent hanging "(" rather than worrying about indentation 
       relative to arguments.
     Lisp Indentation Hook (default m.m& Standard Lisp Indentation Hook) is
       macroed to get extra refinement. The default has hairy options as
       described below.  It can return two values.
       The second one, if nonzero, is the hpos to indent to.
       If it is zero, the indentation of point (as point is left
        by the hook) is used.
       The first value, if nonzero, means that succeeding sexps
        at the same level of nesting will not necessarily be
        indented the same way.  The value should be the char address
        of the ( which starts the containing form.
   According to the default behavior:
     If a variable name Lisp ... Indent (where the ... is replaced by
       the name of the operator at the head of the list -- eg, CAR looks
       for Lisp CAR Indent exists, it will be interpreted as follows:
	if a string, then macro it.
	if a number, then
	 if -4 or less, undefined.
	 if -3, don't indent specially unless Lisp Indent DEFanything says to
	 if -2, don't indent specially.
	 if -1, indent as a defform.
	 if 0 or pos, indent as a specform.
     If Lisp Indent DEFanything (default 1) if nonzero says that any operator
       name beginning with DEF should be treated as a defform.
   The amount of indentation used by the variables is special indentation
   values -1 and up is given by Lisp Special Indent Offset (default 2)
   and is an offset from the open paren of the enclosing form!

    ff&1"n			    !* Arg is # of lines to indent.!
      f[vz f[vb 0l f fsbound  !* Set region around that many lines,!
      j f]vb			    !* put region start into point, restore B.!
      1,m(m.m ^R_Indent_Sexp)("g zj')' !* and indent them all.!
    Z-.[z  fn z-qzj		    !* Restore point when done, rel to end.!
    0l .[0 0[1 0[2 0[3		    !* Q0 has point to change indentation of.!
    qLisp_Indent_Language[L	    !* Get language in qL!
    0[4				    !* Q4 gets nonzero if we do special indentation.!
				    !* To be precise, it gets address of start of form.!

				    !* begin LSR's changes (4/5/82)!
    qComment_Begin[C
    [X				    !* secret flag used in Muddle mode!
				    !* end LSR's changes (4/5/82)!

    -:s
    (			    !* Find start of this top-level s-exp.!
    < .-q0; 0,q0fu2>		    !* Win in case of exp that doesn't!
				    !*   start at margin by finding it by!
				    !*   scanning forward from the last!
				    !*   one that does.!
 !Retry!
    q2&777777.u2		    !* Q2 gets paren depth of point.!
    q2-777777."e "n 0,'0'	    !* Give up if depth is negative.!
    q2"n q..1u1 q..2u2
				    !* begin LSR's changes (4/5/82)!
      0uX
      f~L muddle "E
        q1j			    !* see if we are in a #Foo ()!
				    !* construct!
	1:<-@FLL> 0,1a-# "E
	  .uX ''		    !* remember in qX!
				    !* end LSR's changes (4/5/82)!

      q1+1j			    !* Goto after last unclosed "(" before cmd!
      q2-q1+1"g			    !* If there's a complete sexp since then,!

				    !* begin LSR's changes (4/5/82)!
	q2j			    !* goto its start (past any single!
				    !* quotes)!
	< !"! 0a*5+1:g..d-' @:; r>
				    !* and if it begins with Comment Begin,!
	fqC F"G  f~ C "E	    !* then look for another s-exp!
	  q1j 0,q2fu2
	  o Retry ''
				    !* end LSR's changes (4/5/82)!

	q2j 0l .-q1"g		    !* and that sexp starts on a later line,!
	  @f_	r	    !* and is the first thing on its line,!
				    !*  indent under it.!
	  .-q2"n		    !* Sexp not starting at head of line is nogood!
	    .u3 10000,q2f-10000"e q3j'    !* But if front of line is at same level,!
				    !*   it is good.!
	  "# q1j 0,q2fu2	    !* However, if front of line is at a lower!
				    !* level,!
	    o retry''	    !* look for start of the list it is inside.!
	  oSpecial'
	"#
	  qL_Indent_Offsetf"n   !* Else this is 1st new line inside a list.
!	    +(q1j)fsshposu1 o Foo'	    !* Perhaps indent offset is specified.!

	  q1+1j			    !* Goto start of list!

				    !* begin LSR's change 4/5/82!
	  			    !* If we are in one of Muddle's!
				    !* #FOO (...) constructs, then!
				    !* make believe it is like a!
	  qX "E			    !* (#FOO ...) construct!
	     @flr		    !* Move past the 1st elt of the list.!
	    '			    !* if in an #FOO(...) then already!
				    !* past "first" element!
	    			    !* end LSR's change 4/5/82!

	  .-q2"g q1+1j'		    !* If that sexp is the only elt so far, go!
				    !*   under "(".!
	  "# :-1,q0 fw	    !* Else find start of next element, and!
	     < r !"! 0a*5+1:g..d-':@;> !* back up over preceding singlequotes,!
	     '
	  !Special!
	  q1,q0 mL_Indentation_Hook+0u1+0u4	    !* Run user hook.!
	  q1"n oFoo'		    !* If it returned value, that is indent level.!
	'''			    !* indent under that!

!* place to copy indentation from now in point.!
    fs shposu1
 !Foo!
    "n q4,q1'
    q0j @f_	r
    z-.-2"g 1a-(2a)"e 1a-(3a)"e	    !* Don't change lines with ;;; comments.!
      1a*5+1:g..d-;"e 0''''
    z-.-qz"l z-.uz'		    !* If point was inside the indentation,!
				    !*  move past it.!
    fs shpos-q1"e 0'		    !* If existing indentation right,!
				    !*  report no change.!
    0k 0,q1m(m.m &_Xindent) 0f 
