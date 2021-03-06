!~Filename~:! !Moon's -*-TECO-*- Library!
LUNAR

!& Load Airless Environment:! !S This is my init file
It's here so that comments will get compressed.
Argument is a string which is the user name!
 
!* process job command line !
 hk fj 0,0a-3"E -d'		    !* remove ^C at end if any!
 0,-1a-15."E -2d'		    !* remove crlf at end if any.!
 j:s"N			    !* check for commands to execute, save on paren pdl!
  .,(zj^i//).fx*(-d)'"#0'(	    !* Note extra alts at end of jcl to prevent CNM error!
 z"N hfx*'"#0'(			    !* save file name specified for processing later.!
 0fs Modified			    !* This buffer isn't really modified!

!* SET UP MODE LINE TO MAKE HOWARD NOT LAUGH *!

fsXUname:F6[1
F=1MOON5"E :I1MOON '		    !* CLONE!
Q1M.V User_Name		    !* SAVE USER NAME FOR LATER CONDS!
:I1EMACS_<1>		    !* PUT IN MODE LINE!
Q1UEditor_name :I..J1_EDITOR !* WEIRD STUFF IN ..J IS NECESSARY!
]1 M(M.M &_Set_Mode_Line)

!* Convert to Airless Environment!
m.m^R_Character_Search u.S	    !* Fix search!
m.m^R_Defun_Search u...S	    !* c-m-S is GSB's Defun Search!
1m.vTags_Find_File		    !* Tags use ^C^F!
	!* Next line can be deleted when EMACS 154 is installed!
1uInhibit_Write		    !* Make sure "Main" buffer not in ^X^E mode!
0 m.V Display_Matching_Paren	    !* Flashing paren off in Emacs 139 and >!
m.m^R_Reposition_Windowu.R	    !* ^R old way!
q:.X(26.)u:.X(5)		    !* Flush ^C^E - too dangerous!
m.m^R_View_This_Bufferu:.X(V)    !* ^CV views buffer!
m.m^R_Prefix_Controlu.^	    !* c-s-period prefix control!
m.m^R_Prefix_Control-Metau.\	    !* c-s-comma prefix control-meta!
10.^fs^RInit,10.^fs^RCmacro	    !* backspace normal!
"*5+1:F..D|		    !* Treat " like |!
`*5+1:F..D'		    !* Treat ` like '!
,*5+1:F..D'		    !* Treat , like '!
&*5+1:F..DA		    !* Treat & alphabetically!
:i*.!?m.vFill_Extra_Space_List    !* Brain damage inhibit!
^:I...!/ -1 fs pjatyw /	    !* Like in SUDS!
m.m^R_Twiddle_Charactersu.T	    !* c-T twiddle characters!
m.m^R_Twiddle_Wordsu..T	    !* m-T twiddle words!
m.m^R_Twiddle_Sexpsu...T	    !* c-m-T twiddle S-expressions!
m.m^R_Various_Quantitiesu.Q	    !* c-Q move, delete, etc. various quantites (or quote)!
m.m^R_Twiddle_Buffersu...L	    !* c-m-L like Zmacs!
m.m^R_McCapitalizeu...M	    !* c-m-M capitalizes Mc words!
fsOspeedf"N-1201"L		    !* At 1200 baud or below,!
  1m.vNext_Screen_Context_Lines    !* only 1 line overlap in ^V!
  -1 fs ^R More ''		    !* and less useless updating of mode line!
M.M^R_Select_Buffer u:.X(2)	    !* ^C^B Lists Buffers!
M.M^R_Mini_Visited_File u:.X(24.)  !* ^C^T as of yore!
0USpace_Indent_Flag		    !* Fix autofill mode to avoid losing tabs!
m.m^R_Exchange_Point_And_Marku..._	    !* c-m-space as in Zmacs, sort of!
 m.m^R_Set/Pop_Marku.._	    !* m-space as in Zmacs.!
q..?u.?			    !* Cretinously flushed in "NE"!
m.m^R_Load_Kbdmacu:.X(()	    !* ^X( should automatically load KBDMAC!
m.m^R_Indent_RelativeU.I	    !* c-tab does Indent Relative!

fs osteco-2 "E			    !* Generalized Symbolics stuff!
    f[d file
    m(m.m Load_Library)<EMACS>SYMBOLICS

    FS JNAME :F6 [J
    FS LISPT"N FS CCL FNAMU0
        0FS SUPERIOR
	F~jLEDIT"e
	 1, m(m.m_&_Get_Library_Pointer)LEDIT"e
		  m(m.m_Load_Library)<LM>LEDIT'''

    ]J f]d file
 '
F=User_NameDLW"E		    !* DLW-specific hacks!
 .*5:F..D_			    !* Make . be a delimiter!
 %*5:F..D_			    !* Make % be a delimiter!
 $*5:F..D_			    !* Make $ be a delimiter!
 fs osteco-2 "E		    !* DLW's Symbolics stuff!
  fs rgetty"E			    !* Not on an Ambassador!
    ft
Are_you_at_home? 
    fi:fc-Y"E ftYes.
   mmset_terminal_typec100 0fsi&dlinew 0fsi&dchrw '"# ftNo.
   ''
  q:.X(32.) u.Z		    !* c-Z to exit to exec!
  m.m^R_Prefix_Control-Metau.C  !* c-C is Control-Meta prefix!
  0 FS Echo Error		    !* Echo errors where they can be seen!
  '				    !* End of DLW's Symbolics stuff!
'				    !* End of DLW's stuff!
F=User_NameMOON"E		    !* Moon-specific hacks!

 fs osteco-2 "E		    !* Moon's Symbolics stuff!
  fs rgetty"E			    !* Not on an Ambassador!
    ft
Are_you_at_home? 
    fi:fc-Y"E ftYes.
   mmset_terminal_typedm2500 0fsi&dlinew 0fsi&dchrw '"# ftNo.
   ''
  q:.X(32.) u.Z		    !* c-Z to exit to exec!
  '				    !* End of Moon's Symbolics stuff!

 1000000.U.H			    !* Fix ^N and ^P!
 1uAuto_Directory		    !* Automatically list dir on writes only!
 q.Xu.C			    !* ^C misc command prefix!
 qEMACS_Version-154"L
   :i*C.X___uPrefix_Char_List '
 "# :i*Control-C__Q.X
uPrefix_Char_list '
 q.Wu.X			    !* ^X extract command!
 q.Gu.W			    !* Flush ^W!
 m.m^R_Just_One_Spaceu.._	    !* m-space reduces white space to just one!

fs osteco"E			    !* ITS only!
 !* set up for RMAIL:  is normal metizer, but  exits, c-m-Y gets msg!
 !* there's no minibuffer, but you can always hit ^G or meta-X!
 ^:I*|
  33.^fs^R init[..
  ^:I*/ :s--Text_follows_this_line--
w 
   fs H Pos"N 15.i12.i'	    !* (format nil "~&") !
   .F[VB FSZ-.F[VZ .:W G5
   FF"E
     z:w j 4m(m.m ^R_Indent_Rigidly)w  '
   B:w b( f]vzw f]vbw	    !* Prevent ^R Delete Blank Lines from screwing me!
   m.m^R_Delete_Blank_Lines[2 m2w )jm2w ZJ H
    /[...Y
  .-z( j:sHEADER-FORCE:"N 0kk'	    !* I never did like that dumb rfc anyway!
      )+zj
 |M.V RMAIL_Reply_Hook
 ^:I*/DSK:MOON;LSPISH_MAIL/M.V RMAIL_O_Filename
 '				    !* end ITS!
 '				    !* end Moon's stuff!

!* For alternate superiors.  This code from the default init. (almost)!
 1f[REREAD !* don't change mode line in here nor in file read-in below!
    FS XJNAME :F6 [J
    F~JLISPT"'E  (F~JMACST"'E)"N	    !* LISPT OR MACST!
        M(M.MLOAD_LIBRARY) LISPT '	    !* LIB WILL DO THE REST!
    F~JMAILT "E :IEditor_TYPE[MAIL]
	M(M.MTEXT_MODE) '
!    F~JRMAIL "E )w )w :i* MM RMAIL( 0( '!
]J

!* On non-meta keyboards, allow Alt 1 2 to mean an arg of 12.!
    FS %TOFCI"E
      M.M ^R_Autoarg[0 460.-1[1
      10.< Q0,%1^ FS ^R CMAC>
      ]1 ]0'

!* read in a file if requested to.!
fs msnamefsdsname et gazonk_.del

)F"N fsdfilew 1:< fsecho lines-3"G 3fsecho linesw' MM Find_File  >f"n ^:fg
                )w0(' '		    !* if lose, 0 commands!
f]reread
 13.f?				    !* GC after init!

0 fs Q Pun
5426m..l
0u..H
)f"N [0 1:< m(q0(]0)) >f"n ^fg '    !* execute jcl commands! '
				    !* Return to init file, which will enter ^R mode!

!*Still to be done ******* 
  New flavor lisp tab
  point/buffer/gea pdl, and good old save location macros!

!* NOTE: The twiddle subroutine and commands herein are probably
   currently the same as the exchange subroutine and commands in
   standard Emacs, however they are likely to change in the future
   and no warranty is express or implied.  If you are confused
   by this, well, don't be!

!& Twiddle Subr:! !S Subroutine used by twiddle functions.
arg1 is a string which is "fw" for the appropriate chunk-type.  It will
always get an arg.  arg2 is the ^R-arg, see the documentation of ^R Twiddle Characters.!

 [5 [2[3[4			    !* Q5 gets the chunk-isolator macro (like fw)!
 "G 15R -25L .[0 15R	    !* Q0 is start of chunk to left of point!
      < .u3 15R -15fx4 z-.u2  !* Iterate, exchanging chunks which point is between!
	 q3j -15fx3 g4 z-q2j g3 > !* Being careful not to err with text deleted!
      q0,.  '			    !* Return modified range, leaving point after it!
 "L -15L 15R .[0		    !* Q0 is end of chunk to left of point!
      -< z-.u3 -25L 15fx4 .u2 !* Iterate, exchanging chunks to left of point!
	   z-q3j -15fx3 g4 q2j g3 >
      q2,q0  '		    !* Leave point between two chunks, return modified range!
 .,(w). f  u2 j		    !* .,Q2 get dot and mark, sorted!
 15R -15L .u0		    !* Q0 gets start of left-hand chunk!
 q2j 15R -15fx4 z-.u2	    !* Pick up right-hand chunk!
 q0j 15fx3 g4 z-q2j .u2 g3	    !* Now they are swapped and Q0,. is modified region!
 q0 q0,.(q2j) 		    !* Leave dot and mark at the two chunks!

!^R Twiddle Characters:! !^R Interchange the characters before and after the cursor.
With a positive argument it interchanges the characters before and
after the cursor, moves right, and repeats the specified number of
times, dragging the character to the left of the cursor right.  With a
negative argument, it interchanges the two characters to the left of
the cursor, moves between them, and repeats the specified number of
times, exactly undoing the positive argument form.  With a zero
argument, it interchanges the characters at point and mark.
With no argument at the end of a line, as a special feature it twiddles
the two characters to the left rather than messing up the cr-lf!

 ff"E 13,1a-13"E		    !* Do special thing at end of line!
   0a( -d-c )i c -2   ''
 :i* , :m(m.m&_Twiddle_Subr)   !* 1  = .,.+1 !

!^R Twiddle Words:! !^R Interchange the words before and after the cursor.
With a positive argument it interchanges the words before and
after the cursor, moves right, and repeats the specified number of
times, dragging the word to the left of the cursor right.  With a
negative argument, it interchanges the two words to the left of
the cursor, moves between them, and repeats the specified number of
times, exactly undoing the positive argument form.  With a zero
argument, it interchanges the words at point and mark.!

 :i*fw, :m(m.m&_Twiddle_Subr)

!^R Twiddle Sexps:! !^R Interchange the S-expressions before and after the cursor.
With a positive argument it interchanges the S-expressions before and
after the cursor, moves right, and repeats the specified number of
times, dragging the S-expression to the left of the cursor right.  With a
negative argument, it interchanges the two S-expressions to the left of
the cursor, moves between them, and repeats the specified number of
times, exactly undoing the positive argument form.  With a zero
argument, it interchanges the S-expressions at point and mark.!

 :i*^fl, :m(m.m&_Twiddle_Subr)

!^R Various Quantities:! !^R Quotes non-letters, otherwise hacks various Quantities.
Note that @ and ? are letters.  If followed by a number, inserts that
octal character <arg> number of times.
First character following is operation:
  F forward, B backward, D delete, R rubout, T twiddle, @ mark region, S save,
  or M to change the Mode of ^F, ^B, ^D, rubout, and ^T but not ^@
Second character following is quantity type:
  C character, W word, S sentence, P paragraph, L line, A atom,
  - S-expression, ( or ) list, D defun, ^L page seperated by ^Ls
Numeric arguments are obeyed.  ? for help.
Note that Q-register .Q is used to remember the current mode.  It contains an "fw-macro"!

 q..0[2				    !* In case of ?, keep prompt correct!
!get1! M.I FI :FC[0 0[1		    !* Get canonical input character!
 q0"D q0-0 u1 -3u0		    !* ^Q digit: Octal-escape processing!
      < %0; M.I :FI"D q1*8+(FI-0)u1 !<!> ' 0;>
      .,( ,q1 I ).  '
 q0->"G q0-["L ofoo ''	    !* Letters (and @, ?) skip the next line!
  .,( ,Q0i ). 		    !* Non-letters self-insert!
!foo!  fs Echo Display C fs Echo Display
 q0-F"E ^ftForward_ :i1^R_Quantity_Forward '    !* Q1 gets name of operation!
 q0-B"E ^ftBackward_ :i1^R_Quantity_Backward '
 q0-D"E ^ftDelete_ :i1^R_Quantity_Delete '
 q0-R"E ^ftRubout_ :i1^R_Quantity_Rubout '
 q0-T"E ^ftTwiddle_ :i1^R_Quantity_Twiddle '
 q0-@"E ^ftMark_ :i1^R_Quantity_Mark '
 q0-U"E ^ftUppercase_ :i1^R_Quantity_Uppercase '
 q0-L"E ^ftLowercase_ :i1^R_Quantity_Lowercase '
 q0-S"E ^ftSave_ :i1^R_Quantity_Save '
 q0-M"E ^ftMode_(mungs_^F,_^B,_^D,_Rubout,_^T):_ :i1&_Quantity_Mode_Set '
 q0-?"E :ft m(m.m Describe_Macro) ^R_Various_Quantities
	q2u..0 ]1]0 oget1 '
 q1"E :i*IQO	Invalid_Quantity_Operation:_0 FG '
 [7				    !* Q7 will get mode name, Quantity Mode Set!
!get2! 0fs Echo Active		    !* Don't clear echo area while in here!
 fsListen"E 0^ v '		    !* Keep cursor up top!
 FI :FCu0 0[2			    !* Get second canonical input character (quan type)!
 q0-C"E :i7Character :i2  '    !* Q2 gets "fw-macro" for quantity type!
 q0-W"E :i7Word :i2fw '
 q0-A"E :i7Atom :i2@fw '
 q0-S"E :i7Sentence		    !* ^R Forward Sentence doesn't like negative args!
	^:i2/ [0 .[1
	      .,( q0"G q0m(m.m^R_Forward_Sentence) '
		    "# -q0m(m.m^R_Backward_Sentence) 'w). f  (q1j ]1]0)/ '
 q0-P"E :i7Paragraph ^:i2/ [0 .[1 .,( q0m(m.m^R_Forward_Paragraph)w). f  (q1j ]1]0)/ '
 q0-L"E :i7Line :i2 [0 .[1 .,(Q0L). f  (q1j ]1]0) '
 q0-&"E :i7Buffer :i2 h  '
 q0--"E :i7S-expression :i2^fl '
 (q0-()*(q0-))"E :i7List :i2fl '
 q0-D"E :i7Defun		    !* ^R End of Defun doesn't work, do it manually!
    ^:i2/ [0 .[1 .,( q0"L q0:S
("E J '"# L ' '"#		    !* Backwards case!
          q0:S
("E ZJ '"# R ' ' ). f  (q1j ]1]0)/ '	    !* Forwards case!
 q0-14."E :i7Page ^:i2/ [0
     .[1 .,( q0:s

"E '"# q0"G -2 '"# 3 'c '). f  (q1j ]1]0)/ '
 q0-?"E ^ft
Type_quantity_name:_C_character,_W_word,_S_sentence,_P_paragraph,
L_line,_-_S-expression,_(_or_)_list,_D_defun,_^L_page,_&_Buffer
	]2 oget2 '
 q2"E :i*IQT	Invalid_Quantity_Type:_0 FG  '
 !* At this point, Q1 has name of function to call, Q2 has mode macro!
 ^ft7 0fs Echo Active	    !* Type out mode name!
 q2[.Q :m(m.m1)		    !* Run function, temporarily switching mode!

!^R Quantity Forward:! !^R Forward by quantities determined by .Q!

 .[0 .Q R
 q0M(M.M &_Maybe_Push_Point)
 1 

!^R Quantity Backward:! !^R Backward by quantities determined by .Q!

 .[0 -.Q L
 q0M(M.M &_Maybe_Push_Point)
 1 

!^R Quantity Delete:! !^R Delete quantities determined by .Q!

 [9 .Q :m(m.m&_Kill_Text)

!^R Quantity Rubout:! !^R Rubout quantities determined by .Q!

 -[9 -.Q :m(m.m&_Kill_Text)

!^R Quantity Twiddle:! !^R Twiddle quantities determined by .Q
See documentation on ^R Twiddle Characters for how the argument is used!

 q.Q, :m(m.m&_Twiddle_Subr)

!^R Quantity Mark:! !^R Mark region as quantity determined by .Q!

 .Q R -.Q [2[1		    !* Q1,Q2 is the region of interest!
 "G q2j q1 '"# q1j q2': 1     !* Move dot to "far" end, mark to "near" end!

!^R Quantity Uppercase:! !^R Uppercase quantities determined by .Q!
 .Q f( f( @fc) r) 

!^R Quantity Lowercase:! !^R Lowercase quantities determined by .Q!
 .Q f( f( fc ) r) 

!^R Quantity Save:! !^R Put quantity determined by .Q on the kill-ring!
 FS^RPREV-1001"E		    !* Kill-merging!
   .Q @X:..K(0) 1  '
 Q..K[..O ZJ-5D J5,0I ]..O	    !* Otherwise, create a new kill-ring entry!
 .Q X:..K(0) 1 		    !* And extract into it!

!& Quantity Mode Set:! !S Subroutine for ^QMx!

 ]*				    !* Make binding of .Q permanent!
 0fo..Q Quantity_Mode_Set_Save_Vector [0
   q0"E 6*5 fs Q Vector u0 q0 m.V Quantity_Mode_Set_Save_Vector
        q.F u:0(0)		    !* Save normal bindings if haven't already!
	q.B u:0(1)
	q.D u:0(2)
	q? u:0(3)
	q.T u:0(4)
	qSet_Mode_Line_Hook u:0(5)
	m.m&_Maybe_Push_Point m.v MM_&_Maybe_Push_Point '
 f=.Q "E			    !* If switching into character mode!
	q:0(0) u.F		    !* restore normal Emacs commands!
	q:0(1) u.B
	q:0(2) u.D
	q:0(3) u?
	q:0(4) u.T
	q:0(5) uSet_Mode_Line_Hook
	M(m.m &_Set_Mode_Line)
	1  '	    !* Otherwise install special commands!
 m.m^R_Quantity_Forward u.F
 m.m^R_Quantity_Backward u.B
 m.m^R_Quantity_Delete u.D
 m.m^R_Quantity_Rubout u?
 m.m^R_Quantity_Twiddle u.T
 q:0(5) u0			    !* Q0 gets previous set mode line hook!
 ^:ISet_Mode_Line_Hook/ 0 +0[1 FQ1"L :I1 ' :I*1_<7> (]1) /
 M(m.m &_Set_Mode_Line)
 1 

!^R Twiddle Buffers:! !^R Select Previous Buffer!

  QPrevious_Buffer[3			    !* Get name of previous buffer!
  1,Q3M(M.M &_Find_Buffer)"L Q:.B(1)U3'    !* If non-existent, use first buffer!
  q3m(m.m Select_Buffer) 		    !* Select him!

!Create Lunar Macros:! !C Generate my library!

fs osteco"E 
  MM Run_LibraryPurifyGenerate_Library DSK:MOON;LUNAR DSK:MOON;LUNAR_>
'"# MM Run_LibraryPurifyGenerate_Library DSK:<MOON>LUNAR DSK:<MOON>LUNAR.EMACS '

!Install Lunar Macros:! !C Copy Lunar macros to other machines!

 [0[1[2
 ^:i1{ :i2 f62u0 fsMachine-q0"N
        ^ft_->_2 e_dsk:moon;lunar_:ej2: ' {
 m1 AI m1 ML m1 MC
 1 

!& Reinitialize Airless Environment:! !S My ..L!

!*commented out here are flags already set OK by emacs:
 1fs_disablew 1fsbothcasew -1fsnoopaltw 
 -1fs^idisablew  1fsrubcrlfw  1fs^rscanw
 0fs%topw 0fs%bottomw !

 1fs^Pcasew 1fs^Mprintw 0FS Sail
 F=User_NameMOON"E		    !* Moon-specific hacks!
  0fsfnamsyntax '		    !* Assume single word is FN2!
 35fs%end			    !* At eof, use most of screen if fast, little if slow!
 fs O speedf"N-1201"L 85fs%end ''
 75fsadline
 75uFill_Column		    !* Looks good on 80-column terminal!
 fsrgetty"e 1fslinesw 1fsttmode'
 fs%TOOVR"n :i..A_[]H'
 fsecho lines-3"G 3fsecho lines'  !* Not too many echo lines!
 1fsEcho Errors		    !* Error messages in the echo area (great win)!
 fsosteco-2"e f=User_NameDLW"e  !* If DLW at Symbolics, don't do this.!
  0fsecho error''
 :ft				    !* defuse screen clear!
 fs%tolwr"e ^FT___---_ .(	    !* half ascii terminal nonsense!
    200[0 Z-200"LZU0' 0J Q0<1A-140."G 1A-173."L 0;''C>
    q0-."E ^FTUPPER '"# ^FTLOWER -1F$\^'
    ^FT_CASE_---
 ]0w 30 )J'
    '
 qEmacs_Version :\ [1		    !* GET VERSION AS A STRING!
 ^FT
Emacs_1_in_Teco_
fsVersion^:= ^ft_in_operation.__
Z"E ^ft(empty)'"# ^ft(bloated)'
0fsEcho Activew ]1
-5426"N 0u..H   '		    !* Normal call enter ^R mode, otherwise return to init!

!Failed Mail:! !C Process Comsat dead letters file!

endsk:.mail.;failed_stuffbad_>
mmrmaildsk:.mail.;bad_> 

!SAIL Character Set:! !C Convert Buffer from SAIL to ITS Character set!
 [0 .( 
  j<:s ; .-1,(:s "Nr'"#zj').k >
  j<:s_; r1a#107.id >
  j<:s^; r1a#125.id >
  ^:i*/~}/[1
  j<:s}~f(u0); -d -q0-1,-q0g1 >
  )j {

!Spice Output:! !C Renders Spice output in buffer legible!
 j<:s ;-d>
 j:sTRANSIENT_ANALYSIS"N
   s-_-_-_- l
   <.-z;w @f_k :l -@f_k l> '
 j 

!^R Select Buffer:! !C Display information about all buffers.
A recursive ^R is entered on a list of all buffers.  On exit the buffer
on the current line is selected.  D will mark buffer for deletion on
exit, S will mark for saving, U will unmark buffer, and ~ will
clear modified flags of buffer.
Point is initially on line of current buffer and space is bound
to exit ^R mode, so this is very much like MM List Buffers.
  (Borrowed from Tmacs)!
	!* This used to be called List Buffers, but Emacs was changed
	   so that I was not allowed to redefine that name any more!

    [0[1[2[3[4[5[6[7[8			!* save regs!
    fsQPPtru8				!* 8: point to unwind before!
					!* selecting a different buffer!
    fsBCons[..O			!* get us a buffer!
    i_____#_Buffer____(Mode)_________Filename___[$_r/o,_*_mod,_-_no_auto_sv,_._cur]   

   2u7					!* 7: line count!
    0u4 fq.b/5u5			!* 4: .B index, 5: stopping point!
    < q4-q5;				!* Go thru buffer table; stop at end!
      q:.b(q4+4)[..o			!* make the buffer current so can!
					!* check modified, readonly, etc.!
      0u1				!* 1: flag bits!
      fsReadOnly"n q11u1'		!* 1&1: nonzero if readonly!
      fsModified"n q12u1'		!* 1&2: nonzero if modified!
      fsXModified"n q14u1'		!* 1&4: nonzero if Xmodified!
      fsZu3				!* 3: no. of characters in buffer!
      ]..o				!* back to listing buffer!
      .u0 4,32i				!* 0: start address of this line!
      q1&2"n .-3f*'			!* indicate if modified!
      q1&1"n .-3f$'			!* indicate if readonly!
      q1&4"n .-2f-'			!* indicate if not auto saved!
      2,q:.b(q4+7)\			!* Type the buffer's number!
      i_ g:.b(q4+1)			!* Type buffer's name,!
      17-(.-q0):f"gw 1',32i		!* move to column 17!
      q:.b(q4+3)u1			!* 1: buffer's major mode!
      qBuffer_Index-q4"e		!* if current buffer!
	qModeu1 q0u6			!* then use current mode, and save .!
	.( q0+3j 2a-32"ec' f. )j '	!* and put dot next to number!
      i(1)				!* Type major mode!
      32-(.-q0):f"gw 1',32i		!* move to column 30!
      q:.b(q4+2)u1 q1"n g1		!* and its filenames if it has them!
        qEmacs_Version-153"G		!* Current version in Emacs 154!
	  Q:.B(Q4+9):"L
	    I___( Q:.B(Q4+9)\ I) '
	  Q:.B(Q4+12)"G I_(R-O)'
	  Q:.B(Q4+12)"L I_(Buf R-O)' ''
      "# q3\ i_Characters'		!* No filename, type the size!
      i
     %7w				!* add CRLF, increment line count!
      q:.b(q4)+q4u4			!* advance past this buffer!
      >
    q6"n q6j'				!* goto line with current buffer!
    fsLinesu6 q6"e fsHeight-(fsEchoLines)-1u6'   !* 6: current fsLines!
    q7+1-q6"l q7+1f[Lines'		!* set fsLines so that only the amount!
					!* of screen needed is used, reducing!
					!* redisplay of rest of buffer.!
    0f[Window				!* start display at top!
    0fs^RInitf[^RNormal		!* make normals undefined!
    33.fs^Rinit[_w			!* space exits ^R mode!
    :i*Buffer_Menu[..J			!* Use a short mode line!
    1f[ Read Only			!* Don't spastically modify it!
    0[..F				!* Fellate!
    !* HELP: describe us!
    @:i*| m(m.mDescribe)^R_Select_Buffer |f[HelpMac
    !* ~: clear modified flag!
    @:i*| 0l @fDS_*-$.l \[1 q1"e 0l fg 1'	!* 1: buffer number!
          q1m(m.m&_Find_Buffer)u1	!* Buffer number to buffer index!
	  q:.b(q1+4)[..o 0fsModifiedw 0fsXModifiedw ]..o
	  0f[ Read Only
	  0l .+1f__ .+1,.+3 |[~
    !* D, c-D: mark buffer for deletion!
    @:i*| 0l 0,1a-32"n fg 1'		!* Must not be marked already!
	  0f[ Read Only
          fD 1  |[D qD[.D
    !* S: mark buffer for saving!
    @:i*| 0l 0,1a-32"n fg 1'		!* Must not be marked already!
	  0f[ Read Only
          fS 1  |[S
    !* U: unmark buffer!
    @:i*| 0l 0,1a-D"n 0,1a-S"n fg 1''	!* Must be marked!
	  0f[ Read Only
	  f_ 1  |[U
    !BACK! 				!* let user see buffer, and move around!
    0l 0,1a-D"e			!* don't exit on marked buffer!
       @ft Killing_Current_Buffer;_Select_Another 0 fs Echo Act
       fg oBACK'
    @fS_*-$.l \u1			!* 1: buffer index of new buffer!
    q..ou2 q8fsQPUnwind		!* 2: buffer menu buffer!
					!* cleanup all pushed stuff!
    q2[..o jl				!* menu buffer, move past header!
    <	:s
_;					!* find first marked buffer!
	0a-D"e @f_*-$.l \u3 q3"n	!* D: kill it!
		q3-q:.b(qBuffer_Index+7)"e	!* if killing selected buffer,!
		    q1"n ]..o q1m(m.mSelect_Buffer)w q2[..o''
					!* select new one first!
		q3m(m.mKill_Buffer)' !<!>'
	0a-S"e @f_*-$.l \u3 q3"n	!* S: save it!
		]..o q3m(m.mSelect_Buffer)
		m(m.m^R_Save_File)w q2[..o' !<!>'
	>
    ]..o				!* restore selected buffer!
    q1"n q1-q:.b(qBuffer_Index+7)"n	!* if new buffer index, and if!
					!* different from current buffer!
      q1m(m.mSelect_Buffer)''		!* select new buffer!
    q2fsBKill 			!* kill menu buffer!

!Type Mailing List:! !C Prints entry for STRINGARG in .MAIL.;NAMES.
If STRINGARG is of form <name>@<site>, <site>:.MAIL.;NAMES is used.
    Only final @ indicates site, so you can do something like:
    MM Type Mailing List$BUG-@@AI$
A numeric ARG limits depth of recursion on EQV-LIST members.
(Default depth is 3.)
<name>@<site> entries in EQV-LIST are not followed.
Prints "Done." when done, since it sometimes is slow.

(Auto-loads from Tmacs)!

MM Run_Library TMACS Type_Mailing_List

!Show Queue:! !C Asks Comsat to mail his queue back to you.
Use Rmail to haul it out of your mail file when it arrives.
(Maybe someday this will mail to a file and wait for the file
to appear?)!

m(m.m&_Send_Comsat_Special_Request)(SPECIAL-REQ_SHOW-Q) 0 

!Show Message:! !C Asks Comsat to disgorge a particular message
by mailing it back to you, also qsending so you know when you have it.
String argument is the number part of the message-ID.!

fs Machine:f6 [1
:i1(SPECIAL-REQ_SHOW-MSG_<[MIT-1].>)
m(m.m&_Send_Comsat_Special_Request)1 0

!Kill Message:! !C Asks Comsat to flush a particular message
by causing it to fail to all recipients.  Also mails it back to you.
String argument is the number part of the message-ID.!

fs Machine:f6 [1
:i1(SPECIAL-REQ_KILL-MSG_<[MIT-1].>)
m(m.m&_Send_Comsat_Special_Request)1 0

!& Send Comsat Special Request:! !S Subroutine for doing what its name says
String argument is what to put after "attribute:"
Claims message is from a dummy name so that a CLI will happen.!

f[ B Bind			    !* Build mail request in this buffer!
iFROM-JOB: fs Jnamef6 i
SENT-BY: fs Unamef6 i'
AUTHOR: fs Xunamef6 i
HEADER-FORCE:ITS
TO:"( fsXunamef6 i_(R-OPTION_SMALL-CLI))
ATTRIBUTE:
TEXT;0

etDSK:.MAIL.;MAIL_> eipwef 
@ft
Comsat_Request_Entered
 0 fs Echo Active 

!Load Teco File:! !C Takes a file name, executes that file as Teco commands.!

 [1 f[ B Bind			    !* Get a temporary buffer!
 er ^y hx1 ]..o		    !* Get the file into Q1 !
 :m(q1 (]1))			    !* Call the macro!

!^R Load KBDMAC:! !^R Load up keyboard macros and start defining one.!

    m(m.mload)kbdmac		    !* load up keyboard macro library.!
    @:m:.X(()			    !* and call ^X( from there.!

!^R Load WORDAB:! !^R Load up wordab and call expander.!

    m(m.mload)wordab		    !* load word abbrev library.!
    m(m.mwordab)		    !* get into word abbrev mode.!
    @:m..._			    !* and call c-m-space from there.!

!^R Defun Search:! !^R Search for the 'definition' of something.
What a 'definition' is depends on the major mode.  What to search for
is asked for in the echo area; typing just a blank line searches for
the same thing as last time.  Search-magic characters (^B, ^X, ^O) work
in the name of the something.  Normally it searches from the front of
the file; an argument of ^U searches from where you are, an argument of
-1 searches backwards from the end of the file, and other negative
arguments search backwards from where you are.!

    f[s stringw f[inslen qmode[.2
    (m.m &_Find_.2_Defun)u.2
    :i*Forwards_[.5 [.7	    !* Prepare the prompt!
    "L :i.5Backwards_'
    -1"E :i.5BJ_' +1"E :i.5ZJ_'
    1,(:i*)m(m.m &_Read_Line).5Defun_Search:_ [.1
    fq.1"L fg 0'
    fq.1"E qDefun_Search_Last u.1'"# q.1m.vDefun_Search_Last'
    .[.4 fn q.4j
    -1"E bj'"# +1"E zj''
    "L b[.6 -1'"# z[.6 1'[.3
    "L 0'@l			    !* So ^U c-m-S <cr> finds the next instance!
    <(q.3m.2f(u.7))"L (.-q.6)"E fg 0''
     .u.5 :s.1w
     q.5-."n q.5j 0;'
     q.3@l
     >
    q.4m(m.m &_Maybe_Push_Point)
    q.7j 0@l
    .( 0@L
    QComment_Start[1		    !* Choose the window by moving up!
    Q1"E :i1; '		    !* I'm not sure why Emacs has this bug!
    < B-.; -@L
	   @F	_R
	   1A-13"N FQ1 F~1"N    !* till we find a non-blank non-comment line.!
	     < @L @F	_R !* then moving down over blank lines!
	       1A-13 :@; >
	     0; ''
	 >
    -1F[^R Inhibitw 0@v F]^R Inhibit	    !* GSB says this makes it display better!
    0 @:f			    !* Put this line at the top!
    )J .u.4			    !* Put point at the defun!
    0 

!& Find Lisp Defun:! !S See Defun Search!
  !retry!
   :s(def"E -1'
   .[1					!* Save place to jump to!
   "G fkc' c				!* Position to after the open paren!
   7 f~defprop"E "Lr' oretry'	!* Don't treat defprop as a definition !
   @fwl @f_
	L	!* Move over "defun', move over blanks,!
   <(0,1a*5+1:g..d-()"n 0;' c>	!* If next chars are open-parens,!
   q1					!* move over them too.!

!& Find .Fasl Defun:! !S See Defun Search!
    "L b'"# z'[1
    0@l
    <q1-."E -1'
     (.,(.+7)f~.entry_)*(.,(.+7)f~.entry	)"E 0;'
     @l>
    .u1 6c @f_	l q1

!& Find Teco Defun:! !S See Defun Search!
  :s

!*"E -1'
  "L fkc' r .-1

!& Find Midas Defun:! !& Find Fundamental Defun:! !S See Defun Search!
  "L b'"# z'[1 0@l [2
  <q1-."E -1'
   0,1a*5:g..d-A"E
	.u2 fwl 0,1a-:"E q2j .''
   @l>

!^R Mini Visited File:! !^R Minibuffer setting defaults to buffer filenames.
With no argument, runs a minibuffer initialized with
an ET command containing the current buffer's filenames.
Thus, the default filenames get set to the buffer filenames.
With an argument, puts the old defaults in the ET.
This doesn't change the defaults;  it just shows them.!
    [1 FF"E :I1Buffer_Filenames'
	    "# :I1Minibuffer'
    [0 q..o,2( f[ b bind           !* Set up new buffer with ETs and default names!
	      iET_ g(FF"n fs d file' "# qBuffer_Filenames f"ew fs d file'')
	      i__
        )m(m.m&_mini buffer)1   !* Edit it, passing mode along.!
    f=:.n(0)..o"n		    !* If this command not same as previous minibuffer,!
      q.n[..o zj-5d		    !* push this command onto ring buffer of!
      j 5,0i ]..o		    !* minibuffer commands.!
      hx:.n(0)'
    f] b bind ]0 ]1 m:.n(0) 	    !* Run the edited text.!

!Rain Damage:! !C Compensate for moisture in the phone line.
This disables the rubout key.  Use meta-rubout or control-D.
Safe when used as directed.!

:i* 0  u 

!^R View This Buffer:! !^R View the current buffer without asking which buffer!

m(m.mView_Buffer) w 

!Reverse Mail:! !C Reverse order of messages in buffer.
The buffer should contain a sequences of text items separated by
control-underscores.  Their order is reversed.!

bj 0u0
<:s; 5,q0\w %0w>		    !* Put ASCII numbers after each c-_ !
:s$:ll			    !* Reverse-sort using numbers as keys!
bj <:s;w :kw>		    !* Get rid of the numbers!

!Interlisp:! !C Format Interlisp code in the buffer for Dover and print it.
This works on a file produced by the Interlisp prettyprinter to have
many fonts; it translates the Interlisp font change codes, and produces
output suitable for the Dover.  You read the file into your buffer,
and it formats it and writes it out to a file called ". .", and
then it valrets a :DOVER command without the CR at the end.  You type
CR if you want to run :DOVER.  The contents of the buffer are destroyed.
Fonts used:
    0  GACHA8		not used
    1  GACHA8		Normal text
    2  GACHA8I		Clisp words
    3  TIMESROMAN8I	Comments
    4  TIMESROMAN12B	Function headings
!

bj i ;lftmar_150
;rgtmar_0
;dfont_GACHA8,GACHA8,GACHA8I,TIMESROMAN8I,TIMESROMAN12B
;skip_1
;list
 14.I 15.I 12.I
< :S; 3 f=| "E -d3d '	    !* Remove change bar!
  "# 1A F"L @FT Unknown_font_here!_  '
     -D 177.I 1I C ' >		    !* Change font spec to XGP!
bj fs msname fsd sname
etdsk:._. eipwef 
:dover_._./xgp/delete

!Bolio Mode:! !C Set up for editing text which is Bolio source code!

  m(m.m Text_Mode)
  m.mMake_Local_Q-Register [.q
  ^:i*{ 6i 60.i .-2,. { m.q ...0 
  ^:i*{ 6i 61.i .-2,. { m.q ...1 
  ^:i*{ 6i 62.i .-2,. { m.q ...2 
  ^:i*{ 6i 63.i .-2,. { m.q ...3 
  ^:i*{ 6i 64.i .-2,. { m.q ...4 
  ^:i*{ 6i 65.i .-2,. { m.q ...5 
  ^:i*{ 6i 66.i .-2,. { m.q ...6 
  ^:i*{ 6i 67.i .-2,. { m.q ...7 
  ^:i*{ 6i 70.i .-2,. { m.q ...8 
  ^:i*{ 6i 71.i .-2,. { m.q ...9 
  ^:i*{ 6i i* .-2,. { m.q ...* 
  ^:i*{ 6i i* .-2,. { m.q ...: 
  1,m(m.m&_Get_Library_Pointer) WORDAB "E
    m(m.mLoad_Library)WORDAB
    m(m.mRead_Word_Abbrev_File)ai:lmman;.dlw_wordab
    1m(m.mWord_Abbrev_Mode) '
  1M(M.M&_Set_Mode_Line) Bolio 

!& WRDAB Process Options Hook:! !? Dead, fucking bears!

				    !* Due to bug in WORDAB library I guess!
  

!^R McCapitalize:! !^R Capitalize Mc word!

 m.m^R_Forward_Word[0
 "L m0 '"# 1m0w -1m0 '	    !* Position to start of first word to do!
 .,(   f"e w 1 ' <		    !* Iterate abs of arg times, but at least once!
	fw@fc			    !* Uppercase this word!
	.( <fw:fbMc; -1 fc > )j   !* Fix Mc!
	.( <fw:fbMac; -2 fc > )j  !* Fix Mac!
	fwr > ). 		    !* Return range of buffer modified!
