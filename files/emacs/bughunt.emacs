!* -*-TECO-*-!
!* [BBNG]PS:<EMACS.NEW>XBUG.EMACS.3, 31-Dec-82 22:40:52, Edit by FHSU!
!* ok to kill this library. wont leave Emacs with invalid commands.!
!* [BBNG]PS:<EMACS.NEW>BUGHUNT.EMACS.3, 31-Dec-82 12:37:09, Edit by FHSU!
!* moved & Set Bughunt Mode Line$ into Bughunter Mode$ so people who dont!
!* set their mode line hook properly dont get screwed.!
!* <EMACS>BUGHUNT.EMACS.20, 18-Nov-81 03:04:18, Edit by RMS!
!* <HOLMES>BUGHUNT.EMACS.7, 26-Jun-80 22:47:48, Edit by HOLMES!
!* <GERGELY.EMACS>BUGHUNT.EMACS.11, 20-Jun-80 12:58:04, Edit by GERGELY!
!~Filename~:! !Tack on for adding patches to programs!
BUGHUNT

!& Setup BUGHUNT Library:! !S Special Startup definitions!
0FO..QBughunter_TextF"E
  fsxuname:f6[a
  :IA[A]_' "#[A'		    !* QA gets the special text!

(:I*A)M.CBughunter_Text! *_Special_Text_to_insert_with_patches!
1fsmodech$
0M.CBughunter_Mode! *_Flag_indicating_Special_Comments_will_be_used.
____0_=_None,_Nonzero_=_on.!
1fsmodech$			    

  !* prepare to set our functions up and setup for when we get killed!
  1fo..qBugHunt_Library_Loaded"e
    :i* BugHunt_library_already_loaded fg 0'
  0m.vBugHunt_Library_Loaded		!* say we re loaded!

  m.m Kill_Variable[K
  m.m &_Replace_Def[S
  mS ^R_Indent_For_Comment
  mS ^R_Indent_New_Comment_Line
  mS ^R_Down_Comment_Line
  mS ^R_Up_Comment_Line

  m.m^R_Bughunt_Indent_For_Commentu..;
  m.m^R_Bughunt_Indent_New_Comment_Lineu..J
  m.m^R_Bughunt_Down_Comment_Lineu..N
  m.m^R_Bughunt_Up_Comment_Lineu..P


!& Kill Bughunt Library:! !S Undo what our buggy code did!

   m.m Kill_Variable[K
   m.m &_Restore_Def[R
   mR ^R_Indent_For_Comment
   mR ^R_Indent_New_Comment_Line
   mR ^R_Up_Comment_Line
   mR ^R_Down_Comment_Line

   m(m.m&_Get_Library_Pointer)EMACS[E
   qEm.m ^R_Indent_For_Commentu..;
   qEm.m ^R_Down_Comment_Lineu..N
   qEm.m ^R_Up_Comment_Lineu..P
   qEm.m ^R_Indent_New_Comment_Lineu..J

   mK Bughunt_Library_Loaded	    !* we re finally gone!
   0uBughunter_Mode 1fsModeCh
   

!& Replace Def:! !S Find MM-var and rename.
Assumes Kill Variable is in qK.!

 [0[1
 :i1 			    !* get string arg!
 0fo..q MM_1u0		    !* find definition!
 q0 f"n m.v BUG_Old_1 '	    !* save it for later!
 mK MM_1			    !* kill it!

!& Restore Def:! !S Restore saved macro.
Assumes Kill Variable is in qK.!

 [0[1
 :i1 				!* get string arg!
 0fo..q BUG_Old_1u0			!* find definition!
 q0 f"n m.v MM_1 '			!* restore it as a MM-var!
 mK BUG_Old_1			!* kill it!

!& Set Bughunt Mode Line:! !S Set the Mode line hook for the library!
qSet_Mode_line_hook[1
f[ b bind
fq1"L :i1'
g1 j
:@S/BUGHUNTER_MODE/"E @I/
0FO..QBUGHUNTER_MODE"NI_Bug'/'
HXSET_MODE_LINE_HOOK
1fs mode change


!Bughunter Mode:! !C Sets up comments to include a special text.
This text is defined in the variable $Bughunter Text$.  If this
variable is undefined then your user name is used.  An argument is
passed on directly to the value of Q$Bughunter Mode$.  With no
argument the mode is toggled.!

FF"N "'N uBughunter_Mode W'
QBughunter_Mode"'E UBughunter_Mode
m(m.m&_Set_Bughunt_Mode_Line)


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
    qH-q1+1"g			    !* If code on line goes past!
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


!* keep this as one long comment
 * local modes:
 * compile command: m(m.mGenerate library)dsk:bughuntbughunt.emacs
 * end:
 *!
   