!* <EMACS162>STANLIB.EMACS.45, 15-Aug-84 04:22:17, Edit by BRADFORD!
!* Moved ^R Zap to Character and ^R Reverse Zap to Character to WRDLST!
!* <EMACS162>STANLIB.EMACS.44,  5-Nov-83 06:11:03, Edit by JLH.BRADFORD!
!* Add ^R Reverse Zap to Character !
!* SX:<EMACS162>STANLIB.EMACS.43,  3-Jun-82 02:44:00, Edit by K.KANEF!
!* Flushed PCL Mode, since Twenex library now has a proper one!
!* SX:<EMACS>STANLIB.EMACS.40,  2-Apr-81 23:04:00, Edit by E.ETHAN!
!* Changed line with VEDIT so it didn't look like this files VEDIT!
!* SX:<EMACS>STANLIB.EMACS.38,  3-Nov-80 03:47:48, EMACSculated by K.KANEF!
!* FAIL Mode: set Comment Start as well as Comment Begin  !
!* SX:<EMACS>STANLIB.EMACS.37,  3-Nov-80 01:21:23, EMACSculated by K.KANEF!
!* Added a PCL Mode, of sorts!
!* SX:<EMACS>STANLIB.EMACS.36, 14-Oct-80 23:34:29, EMACSculated by K.KANEF!
!* When in autosave mode, make Last ccl save under visited filename, not  !
!* autosave filename !
!* SX:<EMACS>STANLIB.EMACS.35, 12-Sep-80 00:13:54, Edit by E.ETHAN!
!* <EMACS>STANLIB.EMACS.35, 12-Sep-80 00:13:37, Edit by E.ETHAN!
!* <EMACS>STANLIB.EMACS.30,  8-Sep-80 20:43:19, Edit by E.ETHAN!
!~Filename~:! !Random -*-teco-*- macros.!
STANLIB

!^R Date edit:! ! Write edit message at start of file.
Inserts name of presumed output file (TWENEX format), time and date
of edit and user.  See also ^R Whoedit.!

    qComment_Start[0
    q0"e :i0;_'		    !* Use ; as default comment starter.!
    qComment_Beginf"E w Q0'[b
    0fo..qComment_Endf"E w :i*'[e !* no default comment end.!

    j gb
    qbuffer_filenames f"n f[ dfile'
    <i g(fs dsname) >i g(fs dfn1) .i g(fs dfn2) .i
    fs d versi f"e w e?"n 1'"# e[ er e] fs if vers+1'' \ i,_
    0,-1fs f dconv fs xunam[0 i,_Edit_by_0gei 

    0,.

!^R Whoedit:! ! Write edit message at start of file.
Very similar to ^R Date Edit.  Inserts name of presumed output file
(Tops-20 style punctuation), time and date of edit, user, and
space for a comment describing what you have changed in this version.
If you have a variable, VEDIT, defined in the first 500 lines via
"VEDIT==", it is incremented.  Format:
(* SX:<J.JQJOHNSON>FOO.PAS, 10-Sep-79 16:45:14, Edit by J.JQJOHNSON *)
(* this is a comment *)
!
    qComment_Start[0
    q0"e :i0;_'		    !* Use ; as default comment starter.!
    qComment_Beginf"E w Q0'[b
    0fo..qComment_Endf"E w :i*'[e !* no default comment end.!

    j gb
    qbuffer_filenames f"n f[ dfile'
    f=(fs d device)PS"N	    !* insert device if not PS!
        g(fs d device) :i
	'
    <i g(fs dsname) >i
    g(fs dfn1) .i g(fs dfn2) .i
    fs d versi f"e w e?"n 1'"# e[ er e] fs if vers+1'' \
    i,_  0,-1fs f dconv fs xunam:f6 [0
    i,_Edit_by_0 ge  i 

    gb				    !* put in the line!
    .(				    !* save point.!
    ge i 

    0,.@v			    !* minimize redisplay!
				    !* should maybe flush the following?!
    1<500:fb 
vedit==;	    !* Avoid CRLF together or looks like
    							   Stanlib's VEDIT!
      8[..e 8f[ibase		    !* work in octal!
      .( @f_L		    !* skip leading spaces!
      \u1 ),.k %1\		    !* update vedit, if any!
      >

    )j 			    !* Cursor to a reasonable place!
    

!^R Last ccl:! ! repeat last ccl command
Writes out current buffer if changed.!
    QBuffer_Filenames"N
      M(M.M^R_Save_File) '	    !* Save current buffer.!
    0FS Echo Char		    !* Dont echo when continued.!
    FS OSTeco"N		    !* On Twenex,!
      0f[lines 0f[top line 0f[refresh !* set to one window, and !
      F+ '			    !* clear screen, then go to top.!
    Ex				    !* Repeat last load-class command.!
    

!^R Display Date and Time:! !^R Display the Date and Time in the echo area.
Includes date, time and load average.  
Primarily useful on consoles without a who-line. !
    F[B BIND
    FS WIDTH /8-6, 11.I
    M( M.M Insert_Date)
    @FT				    !* Print it in the echo area!
..O
    FS OSTeco"N		    !* On Twenex,!
      FS Load avu0 @FT__Load_0  !*  display the load average.!
      '
    0FS ECHO ACT

!Print File:! !C Send  buffer to LPT:
Writes virtual buffer to LPT:EMACS.LST, without formatting.
This routine should maybe be completely reworked, to reformat into
neat pages or something.!

    :I*lpt:emacs.lst[1
    ET1
    E[ E\ FN E^ E]                 !* PUSH OPEN FILES!
    Q..O[0 		   	    !* PUT CURRENT BUFFER IN Q0.!
    HF (
        F[ B BIND                  !* READ FILE INTO NEW BUFFER.!
        EW			    !* START COPYING OLD FILE INTO NEW FILE!
        1:<ER>"E
          5FY                       !* READ 1 WD AHEAD SO DETECT EOF AND REMOVE PADDING!
          < ZJ 51200 FY             !* COPY 10K AT A TIME.!
            Z-51200-5:;             !* GOT ALL WE ASKED FOR =) COPY OUT,!
            B,51200P B,51200K>      !* SAVING THE LAST WORD FOR NEXT TIME.!
          ZJ 5<0,0A-3"N 1,0A:@;' -D>  !* DELETE TRAILING ^C OR ^@S IN LAST WORD!
          '
        ) G0                        !* THEN STICK ON THE REGION WE ARE APPENDING!
    M(M.M&_Maybe_Display_Directory)!* SOMETHING TO READ WHILE TAPE IS SPINNING.!
    HP EF 0
          ZJ 5<0,0A-3"N 1,0A:@;' -D>  !* DELETE TRAILING ^C OR ^@S IN LAST WORD!

!FAIL Mode:! !C Setup things for editting FAIL code, LOTS style.!

    M(M.M MIDAS_Mode)
    1,(:I*+1) M.L Comment_Rounding
    1,(:I*;) M.L Comment_begin    !* in case someone else changes it.!
    1,(:I*;) M.L Comment_start
    1,(:I*) M.L Comment_end
    1,(:I*^L) M.L Paragraph_Delimiter
    :IModeFAIL
    0fo..qFail_Mode_Hook[2 Q2"N M2'
    :M(M.M &_Set_Mode_Line)

!Increment:! !^R Find number and increment it by <arg>.
The default arguments are repeat once, increment by one.
It can be given a repetion count, but you must use the Mini-Buffer
to give the MM version a pre-comma arg (e.g. 2,3 MM Increment) = find two 
#'s and increment them by three (see the info node on MiniBuffer).

A zero increment argument or a zero repetion argument means repeat for-
ever, querying at each one (which can be exited...just type a "?" when it 
asks for a response).!
!* Increment should not be copied without & Increment Query !
 [p[b[c[0[n			    !* save Q-reg's 		             !
 :In0123456789			    !* The set of all digits		     !
 1M.VQuery?W 			    !* Default no query unless otherwise told!
 -1M.VQuitW -1M.VSkipW	    !* set switches of query to do nothing   !

 U0 Uc			    !* reg 0 is repetion, reg c is increment !

 ff[x
 (Qx&1)"E1Uc'			    !* 0 or 2 arguments = no increment arg   !
 (Qx/2)"E1U0'			    !* 0 or 1 arguments = no repeat arg      !

 Q0"E -1UQuery? 99999U0'	    !* Zero repetion is infinite & query     !
 Qc"E 1Uc -1UQuery? 99999U0'	    !* 0 increment is infinite rept & query  !
 Q0"L-1'"#1'Us			    !* Sign of repetion argument	     !
 Q0  U0			    !* And repetion gets the absolute value  !
 Q0<				    !* abs(Pre-comma arg) iterations	     !
    Qs@:fnL		    !* find # (as in Qn)		     !
    ((1-Qs)*.)+((1+Qs)*(Z-.)) @;    !* not found, quit			     !
    -@fnL			    !* back to start of number               !
    .Up \Ub			    !* mark posit grab #		     !
    Qp:"E((Qp-.)A--)"E-QbUb Qp-1Up''  !* maybe negate			     !
    (Qb+Qc)Ub			    !* add increment			     !
    QQuery?"L			    !* If querying,			     !
        M(M.M&_Query)Increment_Query'  !* ask user			     !
    QSkip"G Ojump'		    !* quit repetion for <bs> or <esc>	     !
    Qp,.K Qb\			    !* kill old #, insert new #		     !
    QQuery?"L Qp,.@v'		    !* If querying, display changes	     !
    Qs"L QpJ'			    !* Go to start of # for reverse search   !
    !jump! QQuit;>  	    !* End on <esc> or . from query	     !

!& Query:! !S Query and continue macro execution.
Reads a character and sets the Variables Query?, Quit, and Skip accordingly.
Quit is intended to flag termination of the repetion loop, 
Skip is to flag termination of this execution,
and Query? is to flag whether continued queries will be made.
For all variables, a command to quit or skip or query no more will yield +1,
and a command which continues yields a -1.!

    [0[1 [..j :i..j
    -1M.VQuit -1M.VSkip	    !* set continuation flags to continue!
    0fstyi source( 0fs tyi sink(  !* Turn off macros so can read from kbd!
    !Read!			    !* Label!
    2,m.i @:fiu1 fiu0		    !* get character, really from tty!
    q0-?"e ftType:
<space>_________to_accept_the_change;
!_(<excl>)______to_accept_this_change_and_all_further_ones_automatically;
._(<period>)____to_accept_this_change,_but_no_more;
<rubout>________to_reject_this_change_at_this_point_but_continue_on;
<escape>________to_reject_this_change_and_quit;
<control-R>_____to_enter_recursive_^R_mode_(pop_back_with_C-M-Z);
<control-L>_____to_redisplay_screen;
?_______________to_get_this_cruft.
 Oread'	    		    !* help message!
    q0-"e f+ Oread'	    !* Clear display and reread!
    q0-"e 0 Oread'	    !* Enter ^R and reread on exit!
    )fs tyi sink		    !* Pop the two flags.  Don't use qreg pdl!
    )fs tyi source		    !* because we want remain 0 if we quit.!
    q0-32"e 0'		    !* space continues on!
    q0-!"e 1M.VQuery? 0'	    !* <excl> means quit asking, do forever !
    q0-."e 1UQuit '	    !* . = set quit after this repetion!
    q0-"e 1UQuit'		    !* <Esc> = set quit after this time, and!
    q0f:"l 1USkip'	    !* Both <Rub> and <Esc> end repetition!
    1UQuit 1USkip		    !* Other characters quit macro execution!
    q1fs reread		    !* and are unread.!

!^R GOTO Line:! !^R goes to specified line on current page.
No argument means go to the first line of the current page.  With a
negative argument, moves back that many lines from the end of the
page.  Motion stops at end of page if argument is large.!

!* This routine needs work[exclamation point]!

    [7[8[9 FF"NU9'"#1u9'	    !* default args if necessary!
    .u8				    !* save point!
    m(m.m^R_Mark_Page)		    !* go to beginning (slow)!
    q9"L			    !* negative arg.!
	.u7q9l		    !* Save start, goto end, then back up!
	q7-."Gq7j'		    !* if too far, then back to beginning!
    '"# q9-1F"Gl		    !* go to line if not already there!
            :-."Lw1:R'	    !* if past page boundary, then back up!
		"#.u9 wq9j'	    !* else just pop mark!
	    '"#.u9 wq9j'	    !* no arg.  Just pop mark!
    '
    q8 mMM_&_Maybe_Push_Point	    !* Maybe leave mark at old point!

    
   