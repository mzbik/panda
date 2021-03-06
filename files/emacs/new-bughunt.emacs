!* -*-TECO-*-!
!* <EMACS>BUGHUNT.EMACS.34, 29-Jul-82 10:21:35, Edit by GERGELY!
!* <HOLMES>BUGHUNT.EMACS.7, 26-Jun-80 22:47:48, Edit by HOLMES!
!* <GERGELY.EMACS>BUGHUNT.EMACS.11, 20-Jun-80 12:58:04, Edit by GERGELY!
!~Filename~:! !Tack on for adding patches to programs!
BUGHUNT

!& Setup BUGHUNT Library:! !S Special Startup definitions!

    0FO..Q BUGHUNT_Setup_Hook[0 fq0"G :M0' ]0

    fshsname[0
    :I*0PENDING.BUGS.0FO..QBughunter_File(
	)M.CBughunter_FileThe_file_where_bugs_in_programs_are_to_be_noted
    ]0

    0FO..QBughunter_TextF"E
	fsxuname:f6[a
	:IA[A]_' "#[A'		    !* QA gets the special text!

    (:I*A)M.CBughunter_Text! *_Special_Text_to_insert_with_patches!
    1fsmodech$
    0M.CBughunter_Mode! *_Flag_indicating_Special_Comments_will_be_used.
    ____0_=_None,_Nonzero_=_on.!
    1fsmodech$			    

    M(M.M&_Set_Bughunt_Mode_Line)
    M.M&_Replace_Macro[9

    1:<M(M.M Kill_Variable)MM_^R_Date_Edit>
    1:<M.M^R_Date_Edit,(M.M^R_Bughunt_Date_Edit)m9>
    M.M^R_Bughunt_Date_EditM.VMM_^R_Date_Edit

    1:<M(M.M Kill_Variable)MM_Date_Edit>
    1:<M.M_Date_Edit,(M.M^R_Bughunt_Date_Edit)m9>
    M.M^R_Bughunt_Date_EditM.VMM_Date_Edit

    1:<M(M.M Kill_Variable)MM_^R_Indent_For_Comment>
    1:<M.M^R_Indent_For_Comment,(M.M^R_Bughunt_Indent_For_Comment)m9>
    M.M^R_Bughunt_Indent_For_CommentM.VMM_^R_Indent_For_Comment

    1:<M(M.M Kill_Variable)MM_^R_Indent_New_Comment_Line>
    1:<M.M^R_Indent_New_Comment_Line,(M.M^R_Bughunt_Indent_New_Comment_Line)m9>
    M.M^R_Bughunt_Indent_New_Comment_LineM.V MM_^R_Indent_New_Comment_Line

    1:<M(M.M Kill_Variable)MM_^R_Down_Comment_Line>
    1:<M.M^R_Down_Comment_Line,(M.M^R_Bughunt_Down_Comment_Line)m9>
    M.M^R_Bughunt_Down_Comment_LineM.VMM_^R_Down_Comment_Line
    
    1:<M(M.M Kill_Variable)MM_^R_Up_Comment_Line>
    1:<M.M^R_Up_Comment_Line,(M.M^R_Bughunt_Up_Comment_Line)m9>
    M.M^R_Bughunt_Up_Comment_LineM.VMM_^R_Up_Comment_Line

    1:<M(M.M Kill_Variable)MM_^R_Auto_Fill_Comments>
    1:<M.M^R_Auto_Fill_Comments,(M.M^R_Bughunt_Auto_Fill_Comments)m9>
    M.M^R_Bughunt_Auto_Fill_CommentsM.V MM_^R_Auto_Fill_Comments



!& Set Bughunt Mode Line:! !S Set the Mode line hook for the library!

    qSet_Mode_line_hook[1	    !* Q1:  Gets the old mode hook!
    f[ b bind			    !* Get a temporary buffer!
    fq1"G G1 J			    !* If have a hook then insert it!
	:@S/Bughunter_Mode/"E	    !* See if already inserted!
	    @I/W 0FO..Q Bughunter_Mode"NI_Bug'/''
    "# @I/W 0FO..Q Bughunter_Mode"NI_Bug'/'
    HXSet_Mode_Line_Hook
    1fs mode change
    

!Bughunter Mode:! !C Sets up comments to include a special text.
This text is defined in the variable $Bughunter Text$.  If this
variable is undefined then your user name is used.  An argument is
passed on directly to the value of Q$Bughunter Mode$.  With no
argument the mode is toggled.!

FF"N "'N uBughunter_Mode W'
QBughunter_Mode"'E UBughunter_Mode


!^R Bughunt Date Edit:! !^R Write date of edit at start of file.
Inserts as the first line of the file ( or the second, if the first
is a "Mode" comment) a comment containing the file name, the date
and time of the edit, and the phrase "Edit by " user. If there is
already such a comment there, the behaviour depends on the arg:
With no argument, the previous one is replaced. With any argument
a new comment is added before the previous one.!

1[1
0FO..QBuffer_Filenames"E
      :I*CNo_Output_Filename_in_effect
fsechodisp 0fsechoactive w'

    1,M.M&_Setup_PAGE_Library"N
      M(m.m ^R_Widen_Bounds)W'
      "# M(m.m ^R_Set_Bounds_Full)W'
    QBUFFER_FILENAMES FSDFILE    !* Default to buffer file.!
    j 1l  -2:s-*-"n		    !* If mode line then!
        1l'"# j'		    !* skip to second line!
    FF"e			    !* If no argument then!
        1l -1:s_Edit_by_"n	    !* Is there a previous comment!
            0lk'"# -1l''	    !* If so. Delete it!
	  "#f~(qmode)BASIC "e
	    <:s00002	REM_;>	    !* Search for last Date Edit line!
	      l'		    !* Go to next line!
	    "# f~(fsdfn2)B20 "e
	    <:s00002	REM_;>	    !* Search for last Date Edit line!
	      l' '		    !* Go to next line!
	   '

    f~(fsdfn2)FOR "E IC_______ o done '
    f~(fsdfn2)SAI "E ICOMMENT_ 0U1 o done '
    f~(fsdfn2)B20 "E I00002 9i iREM_ o done '
    f~(qmode)FORTRAN "E IC_______ o done '
    f~(qmode)SAIL "E ICOMMENT_ 0U1 o done '
    f~(QMODE)BASIC "E I00002 9i iREM_ o done '

    1U1 0FO..QComment_BeginF"E W 0FO..QComment_Start'[2
    fq2"G G2 0u1'		    !* Start a new comment!
    !done!
    qbuffer _filenames f"n f[ dfile'	    !* Check for filename present!
    <i g(fs dsname)		    !* Insert device name!
    >i g(fs dfn1)		    !* File name!
    .i g(fs dfn2) .i	    !* and Extension!
    fs d versi f"e w e?"E
	e[ er fs if vers (ece])'"#fs d versi' +1' \ !* Version no.!
    i, _ 0,-1fs f dconv	    !* Date and time!
    fs xunam[0 i, _Edit _by _0  !* Edit by "User"!
    Q1"E gcomment _end'	    !* End of comment!
    i
				    !* Add a <cr>!
    b,. 			    !* And quit!

!^R Bughunt Indent for Comment:! !^R Move to or create comment.
Finds start of existing comment, or creates one at end of line.
Indents the comment to Comment Column.
An existing double semicolon (or whatever character) comment
is aligned like a line of code.  
An existing triple semicolon comment is not moved.
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
    Fq0:"G :i0;'		    !* [PJG] Use ; as default comment starter.!
    q0[B
    0fo..qComment_Beginf"n uB'
    qComment_Column[C
    m.m &_Xindent[I
    [R [H [1			    !* qR gets (if needed) macro to!
				    !* round comment col up.! 
				    !* Each time thru, QH gets hpos!
				    !* and q1 gets actual comment col.! 
    [.1 [.2 [.3

    ff"n			    !* With arg, repeat over that many lines,!
      m(m.m ^R_Bughunt_Indent_For_Commentu.1
      < 0l @:f  :fb0"n m.1' !* and hack only lines which!
				    !* already have comments.! 
          l>
      -f '			    !* Return range covering all lines hacked.!

    0l @:f  :fb0 "e	    !* No comment yet on this line =>!
       :l gB -1u.1		    !* with no arg, make a comment at!
				    !* end of line.! 
       0fo..qComment_Endu1	    !* Add in the terminator if any.!
       q1"n g1 fkc' fqBr'
    "#				    !* For an existing comment,!
      0@f  +fk"e 0'		    !* if it starts in column 0, don't move it.!
      fq0-1"e 0a-(0,1a)"e	    !* Is one-char starter duplicated!
				    !* (;; in LISP)?! 
	0a-(0,2a)"e 2c 0'	    !* Yes.  Maybe it's triplicated,!
				    !* => don't move it.! 
	0l mI			    !* Just duplicated => align!
				    !* comment as if it were code.! 
	0l :f ( s0 c)''	    !* Return whole line as changed!
				    !* range, put pt after ;;! 
      fkc			    !* Else align to comment column.!
				    !* Go before the starter.! 
      fs shposu.1'		    !* Get old comment-indentation.!
    .u.3 @-f	_l	    !* Back up over indentation before!
				    !* calculating hpos! 
    qCu1  fs shposuH		    !* since the hpos will affect!
				    !* where comment goes! 
    qC"n 1+'qH-q1"g		    !* If code on line goes past!
				    !* comment column, round it up.!
      0fo..q Comment_RoundinguR    !* QR gets macro to round column!
				    !* upward! 
      qR"e qH+1u1'
      "# qH-q1R+q1 u1''	    !* Q1 gets temporarily altered!
				    !* comment col for this line.! 
    .u.2 
    q1-q.1"n .,q.3k		    !* If indentation must be changed,!
				    !* flush old! 
      qH,q1mI'			    !* and insert the new.!
    "# q.3j'			    !* Else move fwd over existing!
				    !* indentation.! 
    .,zf=Bf"e fqB+1'  -1c    !* Move fwd over comment starter.!
    0FO..QBughunter_Text"N
      [1 FQBughunter_Text"G
	QBughunter_Textu1' "#:i1'
      FQ1F"G F~1"E
	FQ1C' "#
	0FO..QBughunter_Mode"N G1'''
      ]1'
    1000 FO..QBughunter_Mode-1000"E q1-q.1"e 0''   !* Return 0 if no change!
    q.2,.			    !* or range of change.!

!^R Bughunt Indent New Comment Line:! !^R Inserts CRLF, then starts new comment.
The indentation and the number of comment-start characters
are copied from the previous line's comment.
If done when not in a comment, acts like ^R Indent New Line.!

    @-F_	K		    !* Leave no spacing behind us at!
				    !* end of line.!
    .[0
    1,@MM			    !* Run this user's CR definition!
				    !* to insert a CR!
    0fo..q Comment_Start[C	    !* If there is a comment format!
				    !* defined,!
    QC"n .[2 0:@l
         0:fbc"l		    !* and we are inside a comment!
				    !* now, make a new one.!
	   0fo..q Comment_End[E
	   0fo..q Comment_Begin[B  !* How do new comments start?!
	   qb"e qcub'		    !* May be same as how old ones are!
				    !* recognized.!
	   fkc fs shpos[1	    !* Make new line a comment with!
				    !* same indentation!
	   fqc-1"e @fc-1xc'    !* and same number of extra!
				    !* semicolons to start with.!
	   "# :ic'
	   :@l
	   qe"n -fqe f~e"n ge'' !* Put comment end on previous!
				    !* line, unless already one.!
	   2:@l -@f_	k  !* Flush any whitespace at end of!
				    !* new line.!
	   qe"n -fqe f~e"n ge'' !* Put in comment end unless!
				    !* already have one.!
	   0@l 0,q1mMM_&_Xindent gc
	   gb			    !* Put in comment beginning!
    0FO..QBughunter_Text"N
      [1 FQBughunter_Text"G
	QBughunter_Textu1' "#:i1'
      FQ1F"G F~1"E
	FQ1C' "#
	0FO..QBughunter_Mode"N G1'''
      ]1'
	   .u2 :@l q0,.(q2j)'
	 q2j'
    0fo..q Fill_Prefix[3	    !* If a prefix is defined, put it!
				    !* on new line.!
    fq3"g g3'
    "# 0fo..q Space_Indent_Flag"n
      0 f f@mI''		    !* Else run the Tab definition to!
				    !* indent.!
    fs rgetty"e :0t'
    q0,.

!^R Bughunt Down Comment Line:! !^R Move to start of next line's comment.
Equivalent to ^R Down Real Line followed by ^R Indent For Comment.!

    1000000.[.H			    !* Don't bother FM'ing - stay at column 0!
    QComment_Start[0
    Q0"E :I0;'
    0L :FB0"L
    
       .[3			    !* If this line already has a!
				    !* comment,!

    0FO..QBughunter_Text"N
      [1 FQBughunter_Text"G
	QBughunter_Textu1' "#:i1'
      FQ1F"G F~1"E
	FQ1C''W
      ]1'
       QComment_End[1		    !* See if comment should have an!
				    !* end.!
       FQ1"G .,(@L .+FQ1):FB1"E  !* If so, does it have one?!
           Q3J :@L G1 FK F''	    !* If not, make one.!
       Q3J @F_	R
    0FO..QBughunter_Text"N
      [1 FQBughunter_Text"G
	QBughunter_Textu1' "#:i1'
      FQ1F"G F~1"E
	FQ1C''W
      ]1'
       .[2			    !* Find end of whitespace!
				    !* following comment start.!
       :@L .-FQ1-Q2:"G		    !* If comment end is at end of!
				    !* line and nothing!
				    !* comes between it and the!
				    !* whitespace,!
	 Q3-FQ0J @:K		    !* Kill the comment and the!
				    !* preceding whitespace.!
	 @-F_	K 0 F''
    :@L .U0 @L .-Q0"E I	    !* Advance to next line.  Create!
				    !* line if nec.!
 -2 F'
    @:M(M.M^R_Bughunt_Indent_For_Comment)


!^R Bughunt Up Comment Line:! !^R Move to start of previous line's comment.
Equivalent to ^R Up Real Line followed by ^R Indent For Comment.!

    -:M(M.M ^R_Bughunt_Down_Comment_Line)

!& Replace Macro:! !S Replaces macro definitions on ^R characters.
Takes two arguments. The first is the macro to be replaced and
the second is the replacement. It pushes the old definitions.!

    -1u..9			    !* Q..9 - Character counter !
    < %..9, :F U..9 Q..9:;	    !* Find next char whose def. matches !
         U..9 >		    !* and push on the new definition !

    0[0 QPrefix_Char_List[1 [2 [3 !* [RDH] Now do the Prefix Chars !
    < Q0-FQ1;			    !* [RDH] Are we done? !
	Q0+6U0			    !* [RDH] Increment counter !
	Q0-4,Q0 :G1 U2		    !* [RDH] Get the dispatch Q-reg !
	_F2 U3		    !* [RDH] !
	Q3"G 0,Q3 :G2 U2'	    !* [RDH] Eliminate blanks !
	-1U..9 :I32(Q..9)	    !* [RDH] Q..9 - Character counter !
	< %..9,F2 U..9 Q..9:; !* [RDH] Find next char whose def matches !
	     U:3 >		    !* [RDH] and change the definition !
	>			    !* [RDH] Loop through Prefix Chars !



!^R Note Bug:! !^R Appends another entry to Bughunter File.
The numeric entry is taken as the number of lines of text to insert
from the file into the Bughunter File.  An optional description may be
given to describe the bug.  The precomma argument indicates to enter a
^R edit level to insert more information.!

    QBuffer_Filenames[.7
    FQ.7:"G :I*CNo_File_in_Buffer. fsechodisp 0fsechoactive '
    F[Dfile W[Buffer_Filenames   !* Push the filename and the!
				    !* buffer filename!
    .[.6 E[ E\ FN E^ E]	    !* Push input channel and prepare!
				    !* to pop it at the end!
    0[..F			    !* Do not allow munging of other stuff!
    fshsname[Z
    :I*Z PENDING.BUGS.0FO..Q Bughunter_FileUZ	    !* QZ gets the file name!
    ETZ QZUBuffer_Filenames
    1,F Bug_Description:_[A	    !* QA:  Description of the bug!
      [0			    !* Q0:  Number of lines to show!
    Q0"E 1U0'			    !* Make sure at least one is used!
    [1				    !* Q1:  Gets the text to use!
    0[4				    !* Q4:  The number of lines from!
				    !* the top of the bug!
    Q0<.-B@; -1@L %4W>		    !* Count backwards!
    .,(Q4+1+Q0@L.)X1		    !* Get the source code!
    Q.6J
    1M(M.M &_What_Page/Line)[2	    !* Q2 gets the line an text information!
    F[bbind			    !* Get the temporary buffer!
    1:<1,111110000001.ez.7>"E J:X.7' HK
    QModeUD			    !* Get the mode and then reset to!
				    !* text mode!
    0FO..QMM_COMPILE"N [MM_COMPILE'	    !* Keep The Compile Command!
    M(M.M Text_Mode)
    9:I*[Fill_Prefix		    !* push the fill variables!
    70[Fill_Column
    1[Auto_Fill_Mode
    IBug_found_in_.7 13i10i
    9I Ion_2 13i10i
    IEntry_Date:__
    M(M.M Insert_Date)W :L 13I 10I 13i 10i
    FQA"G
	IDescription: 13i 10i
	.[3			    !* Q3:  Temporary to keep current location!
	.(GA 13I10I)J
	<:S
;				    !* Translate a solitary linefeed!
				    !* to a crlf!
	    1R 13I 1C>
	Q3J WM(M.M ^R_Mark_End)
	M(M.M ^R_Fill_Region)
	zj
	13i10i'
    13i10i ISource_Code:13i10i 13i10i
    . (G1) J
    Q4@L !<<!IBug>>
    FF-2:"L zj '		    !* Enter the ^R level!
    1:<M(M.M D_Mode)>W	    !* When we return reset the mode!
    J 12i 13i 10i		    !* Make sure the project is on a!
				    !* separate page!
    zj 13i 10I			    !* and that it ends in a CRLF!
    0,Z M(M.M Append_To_File)Z  !* Then append the file!
    


!& What Page/Line:! !S Inserts the page and line number in the buffer.
A numeric argument says to return the string rather than inserting it.!

    0f[VB			    !* [PJG] Open the top bound!
    :I*F([V)[X			    !* Temporary text registers!
    0[1 .[2 			    !* To restore point on exit!
    1l.[3			    !* q3 = address of start of next line!
    0[4 0[5 0[7			    !* q4,5 = address of current, next page!
    QPAGE_DELIMITER[8
    0j <%1 			    !* increment page counter!
	:s
8; .u5			    !* Search for page delim, throw ifn found!
	.-1-Q2;			    !* if past point then we're there!
	.u4>			    !* Record address of ^L and iterate!
    :IVPage_ q1:\UX		    !* Give page number!
    :IVVX,_Line_		    !* ", Line " ...!
    m.m&_Count_Lines[6		    !* get line counting routine!
    q4,q3 m6 f(u7) :\UX		    !* Count lines this far and store result!
    :IVVX_of_
    q5-q4:"G zu5'"# q5-1 u5'	    !* Set q5 to end of page!
    q3-q5"G -1'"# q3,q5 m6' +q7 :\UX !* if q3 is past q5, we must be off!
				    !* the page; otherwise, count rest!
				    !* of lines, add up and print!
    :IVVX.
    Q2J
    FF"E
	.( GV .:)J
	FQV '
    QV


!^R Bughunt Auto Fill Comments:! !^R Refill the comment and its continuations.
To handle comment starts (or parts of them) that are repeated, e.g.
";;; " in Lisp, or perhaps "/*** " in Pl1, it will treat a duplicated
last character of the comment start or begin as part of the comment
beginning when merging comment lines.!

    [1[2[3[4[5[6 
    0FO..Q Bughunter_Text[B
    qComment_Startu1			!* 1: Real, minimal start string.!
    qComment_Endu2			!* 2: End string or 0.!
    fq2"e 0u2'				!* Either 0 or non-null.!
    qComment_Beginu3			!* 3: Desired pretty-start string.!
    fq3:"g q1u3'			!* 3: If no begin, then use the start!
					!* string for convenience.!
    fq1-1:g1u5				!* 5: Last character in start string.!
    qFill_Extra_Space_Listu6		!* 6: Characters that take 2 spaces.!

    0l :fb1"e fg 1'		!* Feep and exit if no comment.!

!* Merge this comment and its continuations into one comment line: !

    <  q2"e :l'"# :fb2'		!* To end of comment.!
	.u4				!* 4: Point at comment end.!
	l @f	_l		!* After next lines indentation.!
	fq1 f~1:@;			!* Exit if not comment start.!
	q4,.k				!* Remove the whitespace between!
					!* comment and continuation comment.!
	q2"n -fq2d'			!* Delete the comment end.!
	fq3 f~3"e fq3d'"# fq1d'	!* Remove any comment begin or start.!
	FQBF"G F~B"E FQBD''		!* Then remove any bughunter text!
	@f5k			!* And iterated last character.!
	-@f	_l @f	_k	!* Kill surrounding!
						!* whitespace.!
	0af6:"l 32i' 32i		!* Insert space to separate.  Or 2!
					!* spaces for some.!
	>				!* Keep merging.!

!* Now repeatedly auto-fill this line until it fits.  Calling ^R Auto-Fill!
!* Space with an argument of 0 tells it to insert no spaces but fill once if!
!* necessary.  We limit the number of iterations to a reasonable maximum (each!
!* auto-fill should rip off at least one space + one char (word).  This is so!
!* some buggy auto-filler or tab wont infinitely keep causing us to fill.!

    q4j 0l				!* Back to comment line.!
    .,(					!* Get bounds of change.!
	m.m ^R_Auto-Fill_Spaceu1	!* 1: Space.!
	:l 0f  /2< .-(0m1f		!* Auto-fill maybe, tell ^R mode.!
		).@; >			!* Repeat until point doesnt change.!
	:l). 

!*
/ Local Modes: \
/ MM Compile: 1:<M(M.M^R Date Edit)>
M(M.M^R Save File)
M(M.MGenerate Library)BUGHUNTBUGHUNT
1:<M(M.MDelete File)BUGHUNT.COMPRS>W \
/ End: \
!
 