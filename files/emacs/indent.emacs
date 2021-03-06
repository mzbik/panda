!* -*-TECO-*-!

!& Indent with Tabs:! !S Indent to specified column.
The argument should be the desired column.
Uses tabs and spaces;  deletes all tabs and spaces around
point before indenting.  Returns the range of buffer changed.!
    [0 [2 fs tabwid[1
    @f_	k		    !* Delete all tabs/spaces after point.!
    @-f_	k		    !* Delete all tabs/spaces before point.!
    0,0:fm                          !* Make sure fs ^r hpos is valid.!
    fs ^r hpos u0
    .(  /q1-(q0/q1)f"g ,9i	    !* If can use tabs, use them!
          -(/q1*q1),32i'        !* Followed by spaces for the rest.!
        "# -q0,32i'		    !* No tabs =) different way to figure # spaces.!
       ),.                        !* Return stuff good for giving to ^R.!

!& Indent without Tabs:! !S Indent to specified column.
The argument should be the desired column.
Uses spaces only;  deletes all tabs and spaces around
point before indenting.  Returns the range of buffer changed.!
    [0 [2
    @f_	k		    !* Delete all tabs/spaces after point.!
    @-f_	k		    !* Delete all tabs/spaces before point.!
    0,0:fm                          !* Make sure fs ^r hpos is valid.!
    fs ^r hpos u0
    .( -q0,32i		    !* Insert appro. number of spaces.!
       ),.                        !* Return stuff good for giving to ^R.!

!& Xindent with Tabs:! !S Fast indent subroutine.
Args are current column and column to indent to.
Uses both tabs and spaces.!

    fs tabwid[1
    /q1-(/q1)f"g ,9i	    !* If can use tabs, use them!
          -(/q1*q1),32i'        !* Followed by spaces for the rest.!
    "# -,32i'		    !* No tabs =) different way to figure # spaces.!
    

!& Xindent without Tabs:! !S Fast indent subroutine.
Args are current column and column to indent to.!
    -,32i

!^R Indent for Comment:! !^R Move to or create comment.
Moves to start of existing comment or creates new one,
and indents it to start in Comment Column.
An existing double semicolon comment
is aligned like a line of code.  
An existing triple semicolon comment is not moved.
An existing comment starting in column 0 is not moved.
With argument <n>, aligns the existing comments in the
next <n> lines, but does not create comments.
Comment Begin holds the string inserted to start a comment.
Comment Start holds the string recognized as starting an old one.
Comment End holds the string inserted to end a comment.
Comment Rounding holds the macro used when the code goes
past the comment column, to compute a new (larger) comment column
from the width of the code (default is "+1").!

    f[ s string
    qComment_Start[0
    q0"e :i0;'			    !* Use ; as default comment starter.!
    q0[B
    0fo..qComment_Beginf"n uB'
    qComment_Column[C
    m.m &_Xindent[I
    [R [H [1			    !* qR gets (if needed) macro to round comment col up.!
				    !* Each time thru, QH gets hpos and q1 gets actual comment col.!
    [.1 [.2 [.3

    ff"n			    !* With arg, repeat over that many lines,!
      m(m.m ^R_Indent_For_Commentu.1
      < 0l @:f  :fb0"n m.1' !* and hack only lines which already have comments.!
          l>
      -f '			    !* Return range covering all lines hacked.!

    0l @:f  :fb0 "e	    !* No comment yet on this line =>!
       :l gB -1u.1		    !* with no arg, make a comment at end of line.!
       0fo..qComment_Endu1	    !* Add in the terminator if any.!
       q1"n g1 fkc' fqBr'
    "#				    !* For an existing comment,!
      0@f  +fk"e 0'		    !* if it starts in column 0, don't move it.!
      fq0-1"e 0a-(0,1a)"e	    !* Is one-char starter duplicated (;; in LISP)?!
	0a-(0,2a)"e 2c 0'	    !* Yes.  Maybe it's triplicated, => don't move it.!
	0l mI			    !* Just duplicated => align comment as if it were code.!
	0l :f ( s0 c)''	    !* Return whole line as changed range, put pt after ;;!
      fkc			    !* Else align to comment column.  Go before the starter.!
      fs shposu.1'		    !* Get old comment-indentation.!
    .u.3 @-f	_l	    !* Back up over indentation before calculating hpos!
    qCu1  fs shposuH		    !* since the hpos will affect where comment goes!
    qC"n 1+'qH-q1"g		    !* If code on line goes past comment column, round it up.!
      0fo..q Comment_RoundinguR    !* QR gets macro to round column upward!
      qR"e qH+1u1'
      "# qH-q1R+q1 u1''	    !* Q1 gets temporarily altered comment col for this line.!
    .u.2
    q1-q.1"n .,q.3k		    !* If indentation must be changed, flush old!
      qH,q1mI'			    !* and insert the new.!
    "# q.3j'			    !* Else move fwd over existing indentation.!
    .,zf=Bf"e fqB+1'  -1c    !* Move fwd over comment starter.!
    q1-q.1"e 0'		    !* Return 0 if no change!
    q.2,.			    !* or range of change.!

!^R Indent Comment Relative:! !^R Indent for comment, set comment col from last comment.!
    0FO..Q Comment_Start[0	    !* Q0 gets comment starting string.!
    Q0"E :I0 ;'
    .[1  FN Q1J		    !* Push point so errors will restore it.!
    0L
    <B-.; -L :FB0:;>		    !* Find previous comment before current line.!
    .-B"N FKC
      FS SHPOS M.L Comment_Column'	    !* If there was one, set comment column from it.!
    -2FS QP UNWIND			    !* Pop point back to starting point.!
    F @:M(M.M ^R_Indent_For_Comment)	    !* Now make a comment at that col on current line.!

!^R Set Comment Column:! !^R Set comment column to num arg or current hpos.
Just C-U as argument sets comment column from position of previous comment
and then makes or moves a comment to that position on this line.!

    ff"N fs^rargp-1"e	    !* If arg is C-U, adjust under previous comment!
		    m(m.m ^R_Indent_Comment_Relative)f
		    !* and tell the user how we set it.!
		    O Foo'
	     !* Unless arg is just C-U, just set var to the appropriate thing.!
	     ' "# fs s hpos' m.l Comment_Column
    !FOO!
    qComment_Column :\ [0
    @ft
    Comment_Column_=_0_ 0fsecho act 

!^R Down Comment Line:! !^R Move to start of next line's comment.
Equivalent to ^R Down Real Line followed by ^R Indent For Comment.!

    1000000.[.H			    !* Don't bother FM'ing - stay at column 0!
    QComment_Start[0
    Q0"E :I0;'
    0L :FB0"L .[3		    !* If this line already has a comment,!
       QComment_End[1		    !* See if comment should have an end.!
       FQ1"G .,(@L .+FQ1):FB1"E  !* If so, does it have one?!
           Q3J :@L G1 FK F''	    !* If not, make one.!
       Q3J @F_	R .[2	    !* Find end of whitespace following comment start.!
       :@L .-FQ1-Q2:"G		    !* If comment end is at end of line and nothing!
				    !* comes between it and the whitespace,!
	 Q3-FQ0J @:K		    !* Kill the comment and the preceding whitespace.!
	 @-F_	K 0 F''
    :@L .U0 @L .-Q0"E I	    !* Advance to next line.  Create line if nec.!
 -2 F'
    @:M(M.M^R_Indent_For_Comment)

!^R Up Comment Line:! !^R Move to start of previous line's comment.
Equivalent to ^R Up Real Line followed by ^R Indent For Comment.!

    -:M(M.M ^R_Down_Comment_Line)

!^R Indent for LISP:! !^R Indent this line for a Lisp-like language.
With arg, moves over and indents that many lines.
The variable Lisp Indent Language (default "Lisp") controls the dialect.
Handlers may be defined per-dialect to make this function win for other
Lisp-like languages.  With a pre-comma arg, return indentation level instead
of changing anything and don't treat ;;; comments specially.!

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

    -:s
    (			    !* Find start of this top-level s-exp.!
    < .-q0; 0,q0fu2>		    !* Win in case of exp that doesn't!
				    !*   start at margin by finding it by!
				    !*   scanning forward from the last!
				    !*   one that does.!
 !Retry!
    q2&777777.u2		    !* Q2 gets paren depth of point.!
    q2-777777."e "n 0,'0'	    !* Give up if depth is negative.!
    q2"n q..1u1 q..2u2 q1+1j	    !* Goto after last unclosed "(" before cmd!
      q2-q1+1"g			    !* If there's a complete sexp since then,!
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
	  q1+1j @flr		    !* Move past the 1st elt of the list.!
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

!& Standard Lisp Indentation Hook:! !& Internal hook to help Lisp indentation!
!* This function assumes f has been done and that q..0, q..1, and q..2 are set up.
Argument conventions --
 ^X is pos of head of sexp (leading open paren)
 ^Y is cursor position at indent time
 qZ is the offset from end of buffer of the cursor pos we began at !

    [1[2[3			    !* Get temp qregs!
    2fo..Q L_Special_Indent_Offset u1    !* q1: indent offset!
    .u2				    !* q2: standard algorithm result!
    +1j			    !* Jump to first element!
    1a*5+1:g..D-A"n q2j 0'	    !* Return if non-alpha char leads!
    @flx4			    !* q4: keyword to test!
    @fll			    !*  Skip our operator!
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

!& Standard Lisp PROG Hook:! !& Hook indents PROGS with tags right justified!

    [0[1 .[2			    !* Bind temp qregs!
    +1j
    1:< <:@fll 1a-;:@; l>
        0,1a*5+1:g..d-("n @fll !<!@>'  !* Skip prog name, and keep going.  Try to skip one list!
        @fll>"n q2j ,0'	    !*   If fails, we are indenting the prog var list.!
    .-"g q2j ,0'
    2u0				    !* Desired relative indent in Q0.!
    Z-qZj 0l @f_	l	    !* Find head of line in question!
    _,1a*5+1:g..D-A"e	    !* If alphabetic,!
      +q0-1j'			    !* indent it one space less.!
    "# +q0j '			    !* Else indent normally as spec form.!
    ,0

!& Alternate Lisp PROG Hook:! !& Hook indents PROGs with tags left justified!

 Z-qZj 0l @f_	l	      !* Jump to head of line being indented !
 0,1a*5+1:g..D-A"e +1j '	      !* Indent tags one way		     !
 "# +5j @f_	l	      !* Else indent to normal place	     !
    0,1af;:"l +1j''	      !*  being careful of bvl not on line 1 !
 ,0

!^R Indent SEXP:! !^R Lisp Indent each line contained in the next s-expr.
A numeric argument temporarily sets LISP Indent Offset.
A pre-comma argument means indent this line and all
remaining lines up to Z (used by <n>Tab as subroutine).!

    FF"N [LISP_Indent_Offset'
    m.m &_XIndent[I
    20*5fs qvec[a		    !* A gets qvector!
    fn qafsbkill 		    !* containing list of indentations of all paren levels.!
    m.m ^R_Indent_for_Comment[C
    m.m ^R_Indent_for_LISP[L
    "e :fll fl'		    !* check that the secp we will hack isn't unterminated.!
    .[.P  fn q.Pj		    !* Save point.!
    [1
    0[U				    !* Next line's paren depth.!
    [T				    !* Previous line's depth, to see if next is deeper.!
    0[S				    !* Accumulated F^F "State".!
    [V				    !* Desired indentation for this line.!
    [2				    !* Goal for this step (before CRLF before next line to!
				    !* be indented).!
    F[VB B[B			    !* Remember prevailing virtual bounds.!
    QLisp_Indent_Language[N

  !Restrt!
    "n mLw 1,mL+1 u:A(1)	    !* Do mL to align this line, not moving ;;; comments,!
         1uS 1uU'		    !* then 1,mL to get alignment of this level.!

    < qUuT			    !* qT saves current paren depth.!
  !Vbar-CR! .-z; :f u2		    !* q2 gets addr of end of this line.!
      qS,q2fuS qS&777777.uU	    !* qU gets paren depth of that spot.!
      qS&100000000."n @mCw :l .u2   !* This line ends in a comment => align comment.!
          qUuS'			    !* And mark it ended (we won't scan the CRLF).!
      qS/4000000."g l oVbar-cr'    !* This line ends inside atom => don't indent next line.!
      -qU;			    !* Exit when finish the s-exp we started.!
      qT-qU"g qBFSVB'		    !* Getting less deep => flush deeper level's!
				    !* virtual bound setting.!
      qT-qU< 0u:A(qT) qT-1uT>	    !* Getting less deep => store 0's in the stack!
				    !* for the levels we are exiting.!
      l .-z;
      1a*5+1:g..df;:"l !<!>'   !* Line is just comment or blank => ignore.!
      q:A(qU)-1u1
      q1"l			    !* Don't know indentation for this level =>!
        -q:A(qU)f"nj
	   0l .fs vb'		    !* This level has special indentation => tab each line.!
        q2j l
	1,mLu1u2		    !* Tab this line.!
	q2"e q1+1u:A(qU)'	    !* If indentation is ordinary, remember hpos.!
	"# -q2u:A(qU)''		    !* Else remember addr of start of form (negated).!
      @f_	L		    !* Move past next line's existing indentation!
      q1-fs shpos"n		    !* has right amount already => no change.!
	0k 0,q1mI'		    !* Else make desired indentation.!
      >
    "n .-z"n @f_
	l o Restrt''
    Q.P,.

!^R Indent Relative:! !^R Indent Relative to the previous line.
With non-null argument, calls ^R Tab to Tab Stop.  Otherwise,
Add spaces or tabs until underneath an indentation point
in the previous non-null line.  Successive calls find successive
indentation points.  An indentation point is the end
of a sequence of spaces and tabs.  The end of the line counts;
after that, we cycle back to the first suitable indentation.
If there is no suitable indentation point, ^R Tab to Tab Stop
is done.!

    [1 :I1 @:M(M.M ^R_Tab_to_Tab_Stop) 
    FF"N :M1'		    !* Arg => Tab to Tab Stop.!
    .[P FS H POS [0		    !* save return point and HPOS!
    @-f_	L		    !* Go back past existing indentation;!
    .[Q FS HPOS[2		    !* Cycle back there after end of prev line.!
    0L < B-."E QPJ :M1'		    !* If no previous non-blank line, Tab to Tab Stop.!
	 -L 1A-15.:@;>		    !* Find previous nonblank line.!
    Q0"G 1:<0,Q0+1 :FM>"E R'	    !* move to the starting position!
	 "# 0L 1:<0,Q2+1:FM>"E R'   !* past end of prev line => wrap to 1st possible point.!
	    "# QPJ :M1'''	    !* Prev line not even that long => use Tab to Tab Stop.!
    F :FB	_"E :L'"# R'	    !* find the beginning of an indent point!
    @F_	R		    !* skip over spaces and tabs!
    FS H POS( QQ,QPK		    !* save HPOS from reference line!
       ):M(M.M &_INDENT)	    !* Indent current line that far.!

!^R Indent Nested:! !^R Indent line for specified nesting level.
With no argument (or argument 1) indents the line at the same nesting
level as the last nonblank line (ie, directly under it).
A negative argument means indent that many extra levels
(Indent Increment, or 1, is the size of a level).
An argument > 1 means that this line is that many levels
closer to the surface, and should indent under the last line
above it whose level is the same.  The previous lines are scanned
under the assumption that any line less indented than its successors
is one level higher than they.
However, unindented lines and comment lines are ignored.
If the cursor is not at the beginning of a line, the whole line
is indented, but the cursor stays fixed with respect to the text.!

    [.4 .[.2			    !* Save where to indent from.!
    100000[.3			    !* last nonblank line counts as 1st level.!
    QComment_Start[.5

    :f"gw 1'<			    !* Back ARG levels.!
        <			    !* Back 1 level.!
	  0@l @-f		    !* Back to a non-blank line.!
	  l b-.;
	  0@l @f_	r	    !* Back to after its indentation.!
	  fq.5f"g  f~.5"e !<!>''   !* Lines that start with comments don't count.!
	  fs shposu.4		    !* Get this line's indentation.!
	  q.4"e !<!>'		    !* Unindented lines don't count.!
	  q.4-q.3:;		    !* Exit if less indented than lower lines already seen.!
	  >
        q.4u.3 >		    !* Update last level indentation.!
    fs hposu.4			    !* Column to indent to.!
    "l 0fo..qIndent_Incrementu.3 !* Negative arg is number of extra indentation levels,!
         q.3:"g 1u.3'		    !* where an indentation level is at least 1 space.!
	 q.4-(*q.3)u.4'

    q.2j z-.u.2 @0l		    !* So go back to point we started at and indent.!
    q.4m(m.m&_indent) (	    !* contrive that if point is after the indentation,!
       z-q.2,.f j)		    !* it is fixed wrt text, else goes after indentation.!

!^R Indent Under:! !^R Tab to align under STRING (read from tty).
Searches back, line by line, forward in each line, for a string
that matches the one read and that is more to the right than the
caller's cursor already is.  Indents to align with string found,
removing any previous indentation around point first.!

    [.1[.4[.6
    .[.2			    !* Save where to indent from.!
    fs hpos[.3			    !* Save horiz cursor position.!
    0[.5			    !* Clear have-read-first-line flag.!

    1,m(m.m&_Read_Line)Under:_u.1
    q.1"E  FG w 1 '		    !* Exit if rubbed out.!
  
    m.vString_Underw		    !* Make sure it exists.!
    fq.1"E qString_Underu.1'	    !* Null string means use last string.!
	"# q.1uString_Under'	    !* Non-null, so update default.!

    f<!FOUND!
      -l			    !* Go back to previous line.!
      .-b"E			    !* Only read first buffer line once.!
	  q.5"N  q.2j FG w 1 '    !* Read it before, so no string found,!
				    !* ... so exit beeping.!
	  1u.5'			    !* Havent read it but will now.!
      <   :fb.1;		    !* Find next string on line.!
	  .(			    !* Save right edge of string...!
	      fkc fs hposu.4	    !* ...get left edge horiz column...!
	      )j		    !* ... and go back to right edge.!
	  q.4-q.3"G 1f;FOUND'	    !* If to right, then is one we want.!
	  >			    !* Find another string if is to left.!
      >

    .-(fs window)"L		    !* Line with match is off-screen.!
        :i*Cfs echo dis	    !* Clear echo area.!
        0@t@t'			    !* Type line down in echo-area.!

    q.2j			    !* Back to where to indent from.!
    q.4:m(m.m&_Indent)		    !* Indent over to align with string found.!

!^R Indent Region:! !^R Indent all lines between point and mark.
With argument, indents each line to exactly that column.
Otherwise, does Tab on each line.
A line is processed if its first character is in the region.
The mark is left after the last line processed.
May be given a subroutine to use on each line instead of
indenting by making the subroutine a prefix arg before a
comma.  The subroutine should not move down a line.  It can
expect MM & Indent to be in QK.!

    [I :II L			    !* Don't hack comments unless no args and comments defined!
    FF"E FQ(0FO..QComment_Start)"G M.M^R_Indent_for_CommentUI''
    M.M &_Indent[K
    QI[J FF&1"N QKUJ'
    9U..0			    !* If Tab is self-inserting, make sure it inserts tabs!
    F"N UJ'
    [0[1 .[2
    .,(W.)F  U1 U0
    .-Q2U2			    !* Q2>0 if point was at front of region.!
    Q1J :R"L L'			    !* Set Z at end of region, moving past!
    FS Z-Q1F[VZ		    !* any line we partially include.!
    Q0J :R"L L'			    !* Move to beginning of the region.  If region!
				    !* does not start at LF, start on next line!
    <.-Z; FF&1"N 'MJ W 1MI W> !* Indent lines and comments.  MI moves down.!
    Q2"G Q0J Z:'		    !* Put point at front and mark at end.!
    "# ZJ Q0:'
    Q0,Z

!^R Indent Rigidly:! !^R Shift text in region sideways as a unit.
All the lines in the region (first character between point and mark)
have their indentation incremented by the numeric argument
of this command (which may be negative).
Exception: lines containing just spaces and tabs become empty.!

    @:I*|			    !* Do this on each line: ()!
      @F	_R		    !* Skip past existing spaces and tabs.!
      @:F  "E 0K'		    !* If line is all blank, empty it out.!
      "# FS HPOS+F"L W0'MK'|	    !* Else increase indentation by value of argument.
!,:M(M.M ^R_Indent_Region)

!^R Uncomment Region:! !^R Kill all comments on lines in region.
A line is "included" if its first character is in the region.!

    M.M ^R_Kill_Comment,:M(M.M ^R_Indent_Region)

!^R Tab to Tab Stop:! !^R Insert filling till next tab stop.
Filling may be whitespace, or an arbitrary pattern of characters,
as controlled by the tab stop definitions.  See Edit Tab Stops,
which is used to define the tab stops for this function.!

    Q..O[O
    [3			    !* How many tabs should we do?!
    FN 9U..0 Q3<M(9FS^R INIT) > !* When we exit, Q3 will have how many tabs!
				    !* we were not able to handle.  Insert tabs for them.!
    FS S HPOS[0		    !* Q0 gets current pos, for finding next tab stop.!
    F[B BIND
    GTab_Stop_Definitions	    !* Select temporary buffer defining the tab stops.!
    I
				    !* Make sure there are two lines.!
    150F[WIDTH			    !* Don't let FM get confused by screen width.!
    J 1:< 0,Q0+1:FM < :S.:; Q3-1U3> >"L '   !* Find next tab stop after current indentation.!
				    !* Decrement Q3 for tabs we can handle the fancy way.!
        			    !* If past last stop, insert tabs instead.!
				    !* Give up if no more tab stops.!
    R FS S HPOS[2		    !* Q2 gets hpos of next tab stop.!
    1A-."E			    !* Period => fill by copying chars from line 1.!
	JL 0,Q0+1:FM R		    !* Find what's above 1st position to fill.!
	.,( 0,Q2:FM .) X2	    !* Q2 gets string to fill with.!
	QO[..O
	G2 -FQ2 '		    !* Stick it into main buffer, before point.!
    QO[..O			    !* Colon => fill by indenting to desired hpos.!
    -@F_ [1			    !* How many spaces precede point?!
    -Q1D Q0-Q1U0		    !* Get rid of them and take that into account.!
    .,(Q0,Q2 M(M.M &_XIndent)	    !* Just add more tabs and whatever spaces are needed.!
        ).

!Edit Tab Stops:! !C Edit the tab stops used by ^R Tab to Tab Stop.
The bottom two lines just number the columns for your benefit.
The first two lines, stored in Tab Stop Definitions, are meaningful.
Periods or colons in the first line mark the tab stop columns.
A colon means tab out with whitespace;  a period means tab out by
copying text from the second line (you must put the text there).!

    :m(m.a AUXEdit_Tab_Stops)

!^R Indent According to Mode:! !^R Indents suitably for the major mode.
In Fundamental mode, just inserts a Tab.!
    fm(9fs^r init)

!^R Indent New Line:! !^R Inserts CRLF, then indents the second line.
Any spaces before the inserted CRLF are deleted.
Uses the definitions of CR and Tab to do the work,
except that if there is a Fill Prefix it is used to indent.
An argument is passed on to the definition of Tab.!

    @-F_	K		    !* Leave no spacing behind us at end of line.!
    .(  @MM			    !* Run this user's CR definition to insert a CR!
	0fo..q Fill_Prefix[3	    !* If a prefix is defined, put it on new line.!
	fq3"g g3'
	   "# 0 f F@MIF'   !* Else run the Tab definition to indent.!
	fs rgetty"e :0t'
        ),.			    !* f prevents it from typing out.!

!^R Indent New Comment Line:! !^R Inserts CRLF, then starts new comment.
The indentation and the number of comment-start characters
are copied from the previous line's comment.
If done when not in a comment, acts like ^R Indent New Line.!

    @-F_	K		    !* Leave no spacing behind us at end of line.!
    .[0
    @MM			    !* Run this user's CR definition to insert a CR!
    0fo..q Comment_Start[C	    !* If there is a comment format defined,!
    QC"n .[2 0:@l
         0:fbc"l		    !* and we are inside a comment now, make a new one.!
	   0fo..q Comment_End[E
	   0fo..q Comment_Begin[B  !* How do new comments start?!
	   qb"e qcub'		    !* May be same as how old ones are recognized.!
	   fkc fs shpos[1	    !* Make new line a comment with same indentation!
	   fqc-1"e @fc-1xc'    !* and same number of extra semicolons to start with.!
	   "# :ic'
	   :@l
	   qe"n -fqe f~e"n ge'' !* Put comment end on previous line, unless already one.!
	   2:@l -@f_	k  !* Flush any whitespace at end of new line.!
	   qe"n -fqe f~e"n ge'' !* Put in comment end unless already have one.!
	   0@l 0,q1mMM_&_Xindent gc gb !* Put in comment beginning and indentation.!
	   .u2 :@l q0,.(q2j)'
	 q2j'
    0fo..q Fill_Prefix[3	    !* If a prefix is defined, put it on new line.!
    fq3"g g3'
    "# 0fo..q Space_Indent_Flag"n
      0 f f@mIf''	    !* Else run the Tab definition to indent.!
    fs rgetty"e :0t'
    q0,.

!^R Kill Comment:! !^R Kills the comment (if any) on the current line.
With argument, applies to specified number of lines, and moves past them.!

    ff"n			    !* With arg, apply to that many lines, and move down.!
     < m(m.m ^R_Kill_Comment)f wl> 0'
    f[s string 0fs^R Prev	    !* Can't combine with previous Kill !
    0fo..qComment_Start[0
    fq0"l :i0;'		    !* Q0 has ";" or excl-star, etc!
    .[1  fn q1j		    !* Restore point if we exit prematurely!
    0l :fb0"e 0'		    !* Find the comment beginning, or exit if none!
    fkc @-f_	l	    !* Move back over comment starter and white space!
    .,(:l). (			    !* Save region to kill on parenthesis pdl!
     ]..n			    !* Now we are winning; we will set point right!
    ):m(m.m &_Kill_Text)	    !* Now murder!

!^R Delete Indentation:! !^R Kill CRLF and indentation at front of line.
Leaves one space in place of them.  With argument,
moves down one line first (killing CRLF after current line).!

    ff"n l'			    !* If arg, move down first!
    0l :0k			    !* Delete CRLF before the line.!
    m(m.m ^R_Delete_Horizontal_Space) !* Delete indentation around it.!
    .-b"e 0 '
    (,0a*5[1
    1+q1,2+q1:g..du1		    !* Don't insert a space after a ( or a ',!
    1 f_('"g 0 '
    0,1a*5u1			    !* or before a ).!
    1+q1,2+q1:g..du1
    1-)"e 0 '
    32i				    !* Else replace indentation by one space.!
    -1 

!^R Center Line:! !^R Center this line's text within the line.
With argument, centers that many lines and moves past.
The width is Fill Column.!

    qFill_Column[1		    !* Q1 gets margin column.!
    [3 z-.[2 0l
    f"l w-'<		    !* Repeat over abs val of arg.!
	"l -l'		    !* With negative arg, we move up before hacking.!
	@f_	k	    !* Delete all indentation at front of line.!
	z-q2u2 q2-."l .u2'	    !* Now keep Q2 relative to B.!
	:l @-f_	k	    !* Delete any indentation at end of line!
	z-q2u2			    !* Now keep Q2 relative to Z.!
	fs shposu3		    !* Q3 gets length of line.!
	0l q3"n q1-q3/2,32i 0l'	    !* Insert at beginning of line enough spaces to center it.!
	ff"n "g l''	    !* With explicit pos arg, move down after each line.!
	>
    ff"n -'"# :' f (	    !* Return either range traversed, or this line.!
    ff"e z-q2j' )

!^R Right Adjust Line:! !^R Adjust the current line to the right margin.
Argument means adjust from point to the end of the line.!
    FF"E 0L' @F_	L  !* Start AFTER any existing indentation.!
    FS SHPOS[0			    !* Get hpos of start of text to indent.!
    .[1 :@L			    !* Remember address of start, go to end.!
    QFILL_COLUMN-FS SHPOS+Q0[2   !* At what column should the text start?!
    Q1J Q2"L FG 0'		    !* If line is too long to fit at all, barf.!
    Q2M( M.M &_INDENT)	    !* Otherwise reindent it.!

!^R Fill Paragraph:! !^R Fill (or adjust) this (or next) paragraph.
Point stays the same (but text may move past it due to filling).
A positive numeric argument says adjust rather than fill.!

    .[0				    !* Save point.!
    @m(m.m ^R_Mark_Paragraph)	    !* Put region around this or next paragraph.!
    :-Z[1			    !* Save address of end, relative to Z.!
    f@m(m.m ^R_Fill_Region)(	    !* Fill it, save range returned to pass on.!
      Q1+Z-Q0"L Q1+ZU0'		    !* Without moving past end of paragraph,!
      Q0:J"L			    !* restore old point if possible.!
        0,1A-10"E C'		    !* If between CR and LF, move out.!
	Q1+Z-Q0"E 0@F  "E :@0L''' 
      )

!^R Fill Region:! !^R Fill text from point to mark.
Fill Column specifies the desired text width.
Fill Prefix if nonzero is a string that goes
at the front of each line and is not included in the filling.
See ^R Set Fill Column and ^R Set Fill Prefix.
An explicit positive argument causes adjusting instead of filling.
Fill Extra Space List lists the punctuations which get two spaces.!

    :I*fillm(m.m &_Save_Region_and_Query)f"e '
    f[vb f[vz
    0fo..q Fill_Prefix[1
    qFill_Extra_Space_List[2 0[3
    qFill_Column f[adline
    .,(w.)f fsbound		    !* Push bounds and set the to region.!
    fq1"g
      j< .-z;
         fq1 f=1"e		    !* Find the lines that start with the fill prefix.!
	   fq1c fs s hposu3	    !* Observe screen size of the prefix.!
	   -fq1d' l>		    !* Delete the prefix from the front of each line.!
      fsadline-q3fsadline'	    !* Remove size of fill prefix from width to fill to.!
    fn b: zj			    !* When we exit, leave mark at front and point at end.!
    j< :l -@f_	k .-z;	    !* Fix spaces, tabs at end of line: flush them,!
       0,-(-@f)]"' )!* 
!      af2+1"G i_' l>	    !* but leave one space after a sentence end at eol.!
    j < :s__; 2r		    !* Delete other excess spaces,!
        0@f  "e @f_r !<!>'	    !* but not those at beginning of line.!
	0,-(-@f)]"' )!* 
!       af2+1"n c' c	    !* If find 2 spaces, delete 2nd if not after period, etc,!
        @f_k>		    !* and in any case delete any more spaces.!
    FF"e @' hfa		    !* If no arg, fill, else justify.!
    fq1"g j <.-z; @:f  "n g1' l>' !* Put the prefix (if any) back in on each nonempty line.!
    zj h

!^R Auto-Fill Space:! !^R Insert space, but CRLF at margin.
Fill Column controls where the margin is considered to be.
Space Indent Flag, if 0, inhibits indenting new lines.
With arg of 0, inserts no space, but may break line.
With arg > 1, inserts several spaces and doesn't break line.!

    f"gm(32fs ^r init)'	    !* First, insert spaces the ordinary way.!
    -1"g 0'			    !* Then, if argument 0 or 1, and we're past the margin!
    qFill_Column[1		    !* Q1 gets margin column.!
    fs hpos-q1-:"g 0'	    !* (not counting spaces just inserted in that test), then!
    z-.[0  fn z-q0j		    !* (after arranging that we can move point temporarily)!
    < .-1,(0l .):fb_"e 0'	    !* find the space before this one.  Return if none.!
      q1-fs hpos;>		    !* If that space also too far right, go to previous.!
    @f_l			    !* Kill all spaces there, in case they are multiple.!
    @-f_k
    QComment_Start[2		    !* Q2 gets comment starter.!
      Q2"N 0fo..q Comment_Multi_Line(    !* However, Comment Multi Line!
             fqFill_Prefix)"n	    !* or a non-empty Fill Prefix!
        0U2 0[Comment_Start''	    !* says don't recognize comments now.!
    :fx1			    !* Copy away stuff after it, so we are at EOL.!
				    !* So we can gobble following blank line if any.!
    .-z(			    !* If we do that, q0 must be changed the same amount!

!*** Go to new line and indent, maybe, or start a comment if nec.!
	 @m(m.m^R_Indent_New_Comment_Line)f
         )+z-.+q0u0		    !* that Z-. now changes.!
    :0@L .,(
    @l
    q2"n :fb2"n		    !* If we are in a comment,!
      :@l qComment_Endu2	    !* flush the comment terminator that was just inserted!
      q2"n -fq2 f~2"e
        -fq2d q0-fq2u0'''''	    !* and adjust final position of point.!
    :@l g1			    !* Get back what followed the space on the line.!
    FS RGETTY"E :0T'		    !* Echo reasonably on printing tty.!
    ).			    !* return range since where that space was.!

!^R Set Fill Column:! !^R Set fill column to numeric arg or current column.
If there is an argument, that is used.
Otherwise, the current position of the cursor is used.
The Fill Column variable controls where Auto Fill mode
and ^R Fill Paragraph put the right margin.!

    ff"n ' "# fs s hpos' f(uFill_Column 
         ) :\ [0
    :I*C fs echo dis
    @ftFill_Column_=_0
 0fsecho act

!^R Format Code:! !^R Calls Grind Sexp or MACSYMA Grind depending on the current MODE.!
    !* Any other grindings useful?!
    f :m( f~ModeMACSYMA"E m.m Grind_MACSYMA_Code' !*
!			    "# m.m Grind_Sexp') !* Otherwise LISP grind.!

!Grind Sexp:! !C Grind the sexp after the pointer.
g(m.aGRIND~DOC~ Grind Sexp)jk!
    F:M(M.AGRIND Grind_Sexp)

!Grind MACSYMA Code:! !C Format (indent) MACYSMA code. 
g(m.aGRIND~DOC~ MACSYMA Grind)jk!

    F:M(M.AGRIND MACSYMA_Grind)

!^R Set Fill Prefix:! !^R Defines Fill Prefix from current line.
All of the current line up to point becomes the value
of Fill Prefix.  Auto Fill Mode and Linefeed insert the
prefix on each line;  ^R Fill Region assumes that each
non-blank line starts with the prefix (which is ignored
for filling purposes).
To stop using a Fill Prefix, do ^R Set Fill Prefix
at the front of a line.!
    @FT Fill_Prefix_now_
    0f  "E @FTempty'
    "# @FT" 0@T @FT"
 !''! '
    0fsecho act
    0X* M.LFill_Prefix 0
