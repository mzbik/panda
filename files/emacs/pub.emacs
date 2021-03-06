!* -*-TECO-*-!
!* <EMACS>PUB.EMACS.17, 16-Feb-83 11:38:34, Edit by GERGELY!
!* <EMACS>PUB.EMACS.12, 14-Jul-82 23:07:13, Edit by GERGELY!
!* <GERGELY.EMACS.NEW>DOC.EMACS.14,  7-Dec-81 15:25:54, Edit by GERGELY!
!* <GERGELY.EMACS>PUB..16, 29-Apr-80 18:32:05, Edit by GERGELY!
!~Filename~:! !Runs the PUB document compilers and implements PUB mode!
PUB

!& Setup Pub Library:! !S Load default macros!

    :I* FO..Q Font_Character M.C Font_Character   !*
    !       *_Character_to_use_in_changing_fonts
    :I*<@!>! FO..Q Underline_Begin M.C Underline_Begin  !*
    !       *_Start_of_an_underline_portion
    :I*@ FO..Q Underline_End M.C Underline_End  !*
    !       *_End_of_an_underline_portion
    :I*<]!>! FO..Q Embolden_Begin M.C Embolden_Begin  !*
    !       *_Start_of_an_embolden_portion
    :I*@ FO..Q Embolden_End M.C Embolden_End  !*
    !       *_End_of_an_embolden_portion
    M.M ^R_Change_Font_Word M.V MM_^R_Change_Font_Word
    M.M ^R_Change_Font_Region M.V MM_^R_Change_Font_Region
    0FO..q PUB_Setup_Hook[0 fq0"G :M0'


!PUB Mode:!!PUB TEXT Mode:!!& PUB Mode:! !C Sets up things for editing Text Files for PUB.

This functions sets up an environment for edition TEXT files to be used with
the PUB compiler.  If the variable Pub Mode Hook exist, it will be run by
this function.  The hook should check if the variable Submode is defined as
Text or Macros for specific directives.

	The following key redefinitions are made:

		M-`	^R Embolden Word
		C-X `	^R Embolden Region

	The variables Underline Begin, Underline End, Embolden Begin,
Embolden End, and Font Character are initialized with the defaults used
for the PUB macros.  They are: <@, @, <], @,  respectively, and can be
changed via the Edit Options command.
!
	
    M(M.M &_Init_Buffer_Locals)    !* See comment at top of file.!
    1,(:I*PUB) M.L Compiler_Filename
    :@I*`M(M.M Run_Pub_Program)`M.L Compile_command
    M.Q ..D
    0FO..Q Text_..D F"N U..D'	    !* Select the Text-mode syntax table!
      "# W :G..D U..D		    !* creating it if doesn't exist.!
	Q..D M.V Text_..D
	5*. :F..D __	    !* . isn't part of a word (or a "sexp").!
    !"! 5*' :F..D AA	    !* ' is part of a word...!
        5*8 :F..D AA		    !* BS is part of a word...!
	5*_ :F..D AA	    !* Underlining is part of a word...!
	'

    1,0 M.L Space_Indent_Flag
    1,(:I*) M.L Page_Delimiter
    1,0 m.l Page_Flush_CRLF
    1,(M.M ^R_Tab_to_Tab_Stop) M.Q I
    1,0M.L Display_Matching_Paren
    1,0 M.LComment_Column
    1,(:I*+2) M.LComment_Rounding
    1,0M.L Comment_Begin
    1,(:I*.<<_!>>!) m.lComment_Start
    1,(!<<!:I*_>>) M.LComment_End
    1,(:I*<@!>!) M.LUnderline_Begin
    1,(:I*@) M.L Underline_End
    1,(:I*<]!>!) M.LEmbolden_Begin
    1,(:I*@) M.L Embolden_End

!key definitions!

    M.M &_Pub_Replace_Macro[9
    [P F[BBIND GPrefix_Char_list	!* Get the prefix character dispatch!
					!* tables!
    J<.-z; W:FB__;			!* For each line get and make local!
	1C :XP 1,(QP) M.QP
	1l>				!* each prefix character dispatch!
    F]BBIND ]P				!* Pop the buffer and Q-register!

    M.M ^R_Eliminate_Pub_Comment_Field,(M.M ^R_Kill_Comment) m9
    M.M ^R_Move_to_Next_Pub_Comment_Field(M.M ^R_Down_Comment_Line) m9
    M.M ^R_Move_to_Previous_Pub_Comment_Field(M.M ^R_Up_Comment_Line) m9
    M.M ^R_Move_to_Pub_Comment_Field,(M.M ^R_Indent_for_Comment) m9
    M.M ^R_Change_Pub_Font_Word,(M.M ^R_Change_Font_Word) m9
    M.M ^R_Change_Pub_Font_Region,(M.M ^R_Change_Font_Region) m9
    1,(M.M ^R_Change_Pub_Font_Word) M.L MM_^R_Change_Font_Word
    M.M ^R_Change_Pub_Font_Region,(M.M ^R_Change_Font_Region) m9
    1,(M.M ^R_Change_Pub_Font_Region) M.L MM_^R_Change_Font_Region
    M.M ^R_Embolden_Word M.Q..`
    M.M ^R_Embolden_Region U:.X(`)

    :I*Text M.L Submode
    1M(M.M&_Set_Mode_Line) PUB 
    

!PUB MACRO Mode:!!& DFS Mode:! !C Sets things up for editing PUB macros Code!
    M(M.M &_Init_Buffer_Locals)    !* See comment at top of file.!
    1,(:I*PUB) M.L Compiler_Filename
    :@I*`M(M.M Run_Pub_Program)`M.L Compile_command
    M.Q ..D
    0FO..Q Text_..D F"N U..D'	    !* Select the Text-mode syntax table!
      "# W :G..D U..D		    !* creating it if doesn't exist.!
	Q..D M.V Text_..D
	5*. :F..D __	    !* . isn't part of a word (or a "sexp").!
    !"! 5*' :F..D AA	    !* ' is part of a word...!
        5*8 :F..D AA		    !* BS is part of a word...!
	5*_ :F..D AA	    !* Underlining is part of a word...!
	'
    1,0 M.L Space_Indent_Flag
    1,(:I*.)M.L Fill_Prefix
    1,(:I*) M.L Page_Delimiter
    1,0 m.l Page_Flush_CRLF
    1,(M.M ^R_Tab_to_Tab_Stop) M.Q I
    1,(:I*) M.L Paragraph_Delimiter
    1,0M.L Display_Matching_Paren
    1,0 M.LComment_Column
    1,(:I*+2) M.LComment_Rounding
    1,0M.L Comment_Begin
    1,(:I*.<<_!>>!) m.lComment_Start
    1,(!<<!:I*_>>) M.LComment_End

!key definitions!

    M.M &_Pub_Replace_Macro[9
    [P F[BBIND GPrefix_Char_list	!* Get the prefix character dispatch!
					!* tables!
    J<.-z; W:FB__;			!* For each line get and make local!
	1C :XP 1,(QP) M.QP
	1l>				!* each prefix character dispatch!
    F]BBIND ]P				!* Pop the buffer and Q-register!

    M.M ^R_Eliminate_Pub_Comment_Field,(M.M ^R_Kill_Comment) m9
    M.M ^R_Move_to_Next_Pub_Comment_Field(M.M ^R_Down_Comment_Line) m9
    M.M ^R_Move_to_Previous_Pub_Comment_Field(M.M ^R_Up_Comment_Line) m9
    M.M ^R_Move_to_Pub_Comment_Field,(M.M ^R_Indent_for_Comment) m9

    :I*Macros M.L Submode
    1M(M.M&_Set_Mode_Line) PUB 


!^R Add CTRL-O to line:! !^R Replaces all multiple spaces by CTRL-O(n).
A numeric argument is the number of lines to do, and may be negative.!

    "G .-Z"E FG 0' '
      "# .-B"E FG 0 ' '		!* Complain at end of buffer!

    [A				!* A:  The number of lines to do!
    [B					!* B:  The beginning pointer!
    [C					!* C:  The current column!
    QAF"N /(QA  )'[D			!* D:  Signum of the argument!

    QA"L -1l'"#0l'

    QA   < .UB :L
	< .,QB :FB##__	;
	    fkc fs h position+1Uc
	    fs s value+1"E
		.( .,QB :FB# "L 1C' "#0l' .,)K'
	    "# M(M.M ^R_Delete_Horizontal_Space)'
	    .(I( QC\ i)W)J
	    >
	!Done! QDL>
    


!^R Replace CTRL-O on line:! !^R Replaces CTRL-O(n) by the appropriate spacing.
A numeric argument is the number of lines to do, and may be negative.!

    "G .-Z"E FG 0' '
      "# .-B"E FG 0 ' '		!* Complain at end of buffer!

    [A				!* A:  The number of lines to do!
    [B					!* B:  The beginning pointer!
    [C					!* C:  The current column!
    QAF"N /(QA  )'[D			!* D:  Signum of the argument!

    QA"L -1l'"#0l'

    QA   < <:FB(;
	    fkc .UB 2c
	    \ uc 0,1a-)"E
	    QB,.+1K
	    QC-FSHPOSITION-1 F"G,32i''>
	!done! QDL>
    

!^R Eliminate Pub Comment Field:! !^R If on comment line, delete its text.
Comment lines have a . in column 1!
    .[0 FF"e 0l'		    !* If no arg, go to head of line !
    "# l'			    !* Else go arg lines forward !
    0,1a-."e			    !* If on a pub command line!
	:FB<<!>>!"L		    !* and has a comment start!
	    0l :K .-1,q0'	    !* Kill everything but the newline !
	"# q0j 0''
    "# q0j 0'			    !* Else go back where we started !

!^R Move to Next Pub Comment Field:! !^R Move to next comment field
Moves to next Comment field. If there is no other comment field before
the end of buffer or the next statement, creates one on the next line.!

.-z"e i.<<__>> 13i 10i 5r .-5,.+5 '
l .-z"e fsshpos"n 13i 10i i.<<__>> 13i 10i 5r .-7,.+5'
                "# i.<<__>> 13i 10i 5r .-5,.+5''
   "#
    -1,1a-."n i.<<__>> 13i 10i 5r .-5,.+5 '
    "# 
	    :FB<<!>>!"L 1M(M.M^R_Move_to_Pub_Comment_Field)'
	    "# :L .,(I__<<__>> 3r .+3)'''


!^R Move to Previous Pub Comment Field:! !^R Move to prev comment field
Moves to previous Comment field. If there is no other comment field between
point and head of buffer or previous statement, creates one on the next line.!

    0l .-b"e i.<<__>> 13i 10i 5r .-5,.+5 '
    -l -1,1a-."n
	l i.<<__>> 13i 10i 5r .-5,.+5 '
    "#
	:FB<<_!>>!"L 1M(M.M^R_Move_to_Pub_Comment_Field)'
	"# :L .,(I__<<__>> 3r .+3)''


!^R Move to Pub Comment Field:! !^R Move to a Pub comment line
If on a comment line, move to the head of it. If not on one, use preceding
line if it is one, else create one. !

    [9				    !* Put arg in q9 !
    0l -1,1a-."e
	q9-1u9'			    !* One less if on a comment line already!
    q9:"g :FB<<_!>>!"L 0' "#1U9''	!* Exit if arg <= 0 !
    .[0				    !* Save initial point !
    :I*<<__>>[C
    q9 < -l .-q0"e 13i10i 2r'	    !* Loop - Go back a line, then ...!
	-1,1a-."n		    !* If not on a C then ...!
	    -1,1a-13"e I.C 3r'	    !* If on a null line, insert a C !
	    "# l I.C 13i 10i 5r''
	"# :FB<<_!>>!"E :L I__C 3r''
    >   !* Else insert C followed by CRLF !
    .-4,q0 

!^R Change Pub Font Word:! !^R Puts the previous word in a different font (R).
The font to change to is specified with a numeric argument.
No arg means move last font change forward past next word.
A negative arg means move last font change back one word.
Uses the character specified by the variable Font Character
!

!* ^].W before each FW takes care of Atom Word Mode.!

    :I* FO..Q Font_Character [F
    FQF :"G :IF'
    FQF-1"G F[BBIND GF J 1 XF F]BBIND'
    FF"N +1"G		    !* Positive arg => put ^Farg ... ^F* around prev. word.!
      Z-.[0 .W-FWL .[1 IF \ .WFWL IF* Z-Q0J Q1,.''
    .[0 :CW :-SF"E 0'	    !* Find previous font change (no-op if none).!
    .[2 2 FX*[1		    !* Remove it, remembering what and where it was.!
    "L			    !* negative arg => move to previous word-end.!
      [4
      -2:.WFWL .[3
      Q2,.-2:FBF"L		    !* If that would move back over another font-change,!
	2 F=F*"E 2 FX4	    !* If stationary one is ^F*, move them both together.!
	  :i141'
        "# F=1F*"E 2D .,Q2'	    !* Else if moving one is ^F*, flush them both.!
	   2D''			    !* ^F2 moving back over ^F1, flush the ^F1.!
      Q3-."L Q3J'
      G1 .-FQ1,Q2+2'
    Q0-2J .WFWL .U0		    !* No arg => move to next word-end.!
    Q2,.+2:FBF"L		    !* moving over some other font change =>!
      0A-*"E -2D Q2,.'	    !* flush it, and if it's ^F* flush this one too.!
      -2D Q0-2U0'
    Q0J G1
    Q2,.


!^R Change Pub Font Region:! !^R Puts the region in a different font (R).
The font to change to is specified with a numeric argument.
Inserts Font Character<n> before and Font Character* after.
A negative arg removes font changes in or next to region.!

    :I* FO..Q Font_Character [F
    FQF :"G :IF'
    FQF-1"G F[BBIND GF J 1 XF F]BBIND'
    [0 [1  .,(W.)f u1u0	    !* Q0 gets region start, Q1 gets region end.!
    +1"g
      q0j iF \		    !* Insert the change into the spec'd font at front.!
      q1+2j iF*		    !* Insert pop-font at end.!
      .u1'			    !* Make Q0,Q1 describe region including font changes.!
    "l			    !* With negative arg, take out font changes.!
      q1j 0,1a-F"e 2d'	    !* Remove any font-change right after the region.!
      q0j 0,0a-F"e %0'
      q0j 0,-1a-F"e -2d .u0 q1-2u1'	    !* Remove any font change right before region.!
      q0j <.,q1:fbF;		    !* Remove font changes inside region.!
	   -dd q1-2u1> q1j'
    q0:			    !* Set mark at front, now that we are at end.!
    q0,q1			    !* Return range pointing to region.!


!^R Embolden Word:! !^R Puts emboldens around the previous word (R).
If there is an embolden begin or end near that word,
it is moved forward one word.
An argument specifies the number of words, and the direction:
positive means forward.
Embolden Begin and Embolden End may be set to the strings
or characters to be used to begin and end emboldens.!

    0FO..Q Embolden_Begin[B QB"E UB'
    0FO..Q Embolden_End[E QE"E UE'
    .[0
    Z-.[9 FF"E FN Z-Q9-.F"G C''	    !* Don't in any case move point back thru the text!
    :FWL .,(1:<-2:FWL>"L J'
     .):FBBE"E	    !* No embolden begin or end in or near prev. word =>!
      Q0J
      FF"N ' "# -1'[1	    !* put them around -1 or arg words.!
      Q1"L Q1FWL .U0 IB -Q1FWL IE'
      "# IB Q1FWL IE'
      Q0,.'			    !* put emboldens around it.!
    FK FX*[1 .[2		    !* Found one before this word => flush it but remember it!
    .,( 1:<"L -'1+:FWR>"L "L J' "# ZJ''
     .):FBBE"L	    !* If it's going to move over or next to another begin or end,!
      FK F=1[3 FKD	    !* flush that one,!
      Q3"N Q2,.''		    !* and if they are different flush them both.!
    Q2J "L:-1+'FWL I1	    !* Move it <arg> words.  If backwds, to end of word.!
    "L .+FK,Q2-FK'
    Q2,.


!^R Embolden Region:! !^R Puts emboldens a la R around the region.
A negative argument removes emboldens in or next to region.
Embolden Begin and Embolden End may be set to the strings
or characters to be used to begin and end emboldens.!

    0FO..Q Embolden_Begin[B QB"E UB'
    0FO..Q Embolden_End[E QE"E UE'
    [0 [1  .,(W.)f u1u0	    !* Q0 gets region start, Q1 gets region end.!
    +1"g
      q0j iB		    !* Insert start-embolden front.!
      q1j fkr iE		    !* Insert end-embolden at end.!
      .u1'
    "l			    !* With negative arg, take out underlinings.!
      q1j :fwl z-.u1
      q0j -:fwl <.,z-q1:fbBE; fkd> z-q1u1 q1j'
    q0:			    !* Set mark at front, now that we are at end.!
    q0,q1			    !* Return range pointing to region.!

!& Get Real Filename:! !S Returns the real filename of the string arg.
No string argument implies to take the current buffer filename.  Q..6
is used as the buffer string input temporarily.  If the flag
FSDVERSION is nonzero then the real version number will be returned.!
    f[dfile
    :I*[..6			    !* Get the string argument!
    FSHSNAME[B
    :IBBFOO..0
    FQ..6:"G
	FQBuffer_Filenames"G
	    QBuffer_Filenames U..6'
	"# W:I*B '		    !* Set the default to <home>Foo!
	'
    f[dversion
    1:<
	F[BBIND		    !* Get a temporary buffer!
	E[
	1,111110000001.ez..6
	J:X* fsdfile		    !* This becomes the default filename!
	E]			    !* Pop the input file!
	F]BBind		    !* and the temporary buffer!
	>"N :I*B'		    !* Set the default to <home>foo on error!
    f]dversion
    fsdversionF"E fsdversion'	    !* Set the version number!
    fs d file		    !* Print out the default filename!



!& Pub Replace Macro:! !S Replaces macro definitions on ^R characters.
Takes two arguments. The first is the macro to be replaced and
the second is the replacement. It pushes the old definitions.!

    -1[..9  [A   		    !* Q..9 - Character counter !
    < %..9, :F U..9 Q..9:;	    !* Find next char whose def. matches !
	:IA Q..9/200.F"G,46:IA'
	:IAA..9
        1, M.QAW >	    !* and push on the new definition !

    u2 [3 [4 [5 [6 [7 [8 [9 
    F[B BIND GPrefix_Char_List J	!* Now do the same for the!
					!* prefix characters!
    < .-Z;			!* For all the prefix characters!
	FB__			!* Get the dispatch vector (q6)!
	2r 0X8 2c		!* 8:  The prefix character name!
	M(:X*)U6 1c:X7 1L	!* and its name(Q7)!
	.(W-1U5			!* For the whole vector!
	    < %5,Q3F6 U5 q5:;	!* find every occurence!
		:I4Q2 U:7(5) Wm4>
					!* up!
		   )J>			!* Get back to where we were!



!Run PUB Program:! !C Takes the buffer and executes PUB
reading in the resulting file into a new buffer called DOC.  If the
current connected directory is not the same as the one the file is
stored on, the user will be switched to that directory if possible
and back again upon completion.
The string argument is used as a SUBCOMMAND to PUB.  Any numeric
argument is a signal to save the file before executing PUB!

    0FO..QBuffer_Filenames[b
    FQB"G QBuffer_Filenames[A
	M(M.M Set_Visited_Filename)A
	QBuffer_FilenamesFSDfilew
	]a'
    "# !"!:I*CSorry,_but_I_can't_get_a_filename
	fsechodisp
	0fsechoactive'
    ]b
    FF"N WM(M.M ^R_Save_File)'
    M(M.M &_Get_Real_Filename)FSDFILE    !* Get the real filename!
    fs d fileub		    !* QB gets the default name of the file!
    fsmsname[g			    !* QG gets the connected directory name!
    0[F				    !* QE and QF are temporary registers!
    0[A F[BBIND		    !* Get a temporary buffer!
    1,110000000001.ezB	    !* Get the default directory of!
    J:L 0XF			    !* the file!

    1,1000000001.ezB	    !* Get the true filename of the file!
    J:L 0XA
    F]BBIND			    !* Kill the temporary buffer!
    F~FG"N			    !* If we are not connected to that!
				    !* directory already then do so!
	:I*CConnecting_to_F_fsechodisp
	1:<QFfsmsname>"E :I*succeeded. fsechodisp
	    0fsechoactive' "#
	    :I*FAILEDfsechodisp 0fsechoactive
	    QGUF'' "# 0UG'
    3,FPub_Subcommand(s):[E	    !* QE gets any subcommands!
    :IBPUB_B
    FQE"G :IBB,
    E'
    :iEFa.DOC.0		    !* QE now gets the full output name!
    -(-1,FZNEW:PUB.EXE_B
	)FZ
    .(WJ :S
	.PRINTEKFLAG
	.XGPFLAG
	.TRANSPARENCY
	.DIABLOFLAG
	.QUMEFLAG
	.LPTFLAG
	.TTYFLAGW
	fs s value[S
	QS+6"E :FBfalse"L QS-1US''
	QS"E WJ :FB.PRINTEKFLAG.XGPFLAG.TRANSPARENCY.DIABLOFLAG.QUMEFLAG.LPTFLAG.TTYFLAG
	    fs s valueUS
	    QS+6"E :FBfalse"L QS-1US'''
	)J

    
    QS"'E+(QS+6"'E)"N
	m(m.mSelect_Buffer)LST	!* Get its own buffer, and kill!
					!* anything! 
	hk
	M(M.M ^R_Buffer_Not_modified)	!* in it.!
	1m(m.m ^R_Visit_file)FA.LST	!* Read only protection on it!
	odone
	'
    QS+4"G
	m(m.mSelect_Buffer)XGP	!* Get its own buffer, and kill!
					!* anything!
	hk
	M(M.M ^R_Buffer_Not_modified)	    !* in it.!
	1m(m.m ^R_Visit_file)FA.XGP	!* Read only protection on it!
	odone'

    QS+6"G
	m(m.mSelect_Buffer)DIABLO	!* Get its own buffer, and kill!
					!* anything! 
	hk
	M(M.M ^R_Buffer_Not_modified)	!* in it.!
	1m(m.m ^R_Visit_file)FA.DIABLO	!* Read only protection on it!
	odone
	'
    QS+7"E
	m(m.mSelect_Buffer)DOC	!* Get its own buffer, and kill!
					!* anything! 
	hk
	M(M.M ^R_Buffer_Not_modified)	!* in it.!
	1m(m.m ^R_Visit_file)FA.DOC	!* Read only protection on it!
	odone
	'

!done!
    QG"N
	:I*CRe-connecting_to_G_fsechodisp
	1:<QGfsmsname>"E :I*succeeded.'"# :I*FAILED' fsechodisp
	0fsechoactive'
    

!Run EXEC-PUB Program:! !C Takes the buffer and executes PUB
reading in the resulting file into a new buffer called DOC.
The user is responsible for giving the filename to PUB!
[E
fs d fn1:f6[a
fs d file[b
!m(m.m Write_file)b!
fs d device[c
fs d sname[d
0FZCONNECT
ps:<pub>PUB.EXE
COPY_A.DOC_C:<D>
CONNECT_C:<D>
POP

:iEC:<D>a.DOC.0
m(m.mSelect_Buffer)DOC
m(m.m Visit_ file)E


!Convert SPELL Dictionary:! !C Converts SPELL dictionaries to new form. 
The extension on the file in buffer will be  set to SPELL.!

    J <:S,;			    !* Remove all commas in the buffer!
	-1D :K>			    !* and the rest of the line!
				    !* following!
    !<<<<!
    J M(M.M Replace_String)_>__>>_>
				    !* Replace the misspelling symbol!

    ETSPELL
    M(M.M Set_Visited_Filename)SPELL    !* Set the extension!
    

!Insert .REQUIRE files:! !C Replaces the .REQUIRE statements by the file.
Each .REQUIRE must be on its own line with nothing else on it.  The whole line
    gets killed.!

    [F [B [E
    <.-z;
	0,1a-."E
	    :FBREQUIRE"L
		:FB "!'!"L
		   .,(W:FB "!'!"L1R'.)XF
		   FQF "G 0L 1K WM(M.M INSERT_FILE)F
		      -1@L''''
	1L>
    JW


!* 
/ Local Modes: \
/ MM Compile: 1:<M(M.MDate Edit)>
M(M.M^R Save File)
M(M.MGenerate Library)PUBPUB
1:<M(M.MDelete File)PUB.COMPRS>W \
/ End: \
!    