!* -*- Teco -*- Library created and maintained by KMP@MC *!

!~Filename~:! !Backquote hacks!
BACKQ

!& Setup BACKQ Library:! !S Set up , and ,@ and ,. to work!

@:i*| @ft(Not_in_backquote_or_too_many_commas) 0fsechoactive
    | m.vBackquote:_Too_Many_Commas
:i*fgfo..qAnnounce_Backquote_Errorm.vAnnounce_Backquote_Error
:i*
:i*fo..QLisp_Mode_Hook[0	    !* Get old lisp mode hook	!
@:i*|0w m.m^R_Backquoted_,m.q,
	   m.m^R_Show_Matching_Backquotem.q..`
           m.m^R_Backquoted_@f(m.q@w)m.q.w |m.vLisp_Mode_Hook


!^R Show Matching Backquote:! !^R Show the ` corresponding to innermost ,
It is an error to invoke this command when not in a comma context.!

.[0 fnq0j [0			    !* Save this place to return to	!
				    !*  Push q0 so no one can change it	!
1:<-@fl(>"n.,b'"#)': :fb,"e	    !* Find innermost comma context	!
  :<-:@fl: :fb,:;-ful>"l
 @ft(Not_in_comma_context) 0fsechoactivew 0''

qBackquote:_Too_Many_Commas[Announce_Backquote_Error    !* Bind msg	!

qDisplay_Matching_Paren[0 q0:"g    !* Make sure the guy gets to see	!
 q0"e2'"#-q0'[Display_Matching_Paren'	    !*  something after all	!

:m(m.m &_Flash_Matching_Backquote) !* Go to it				!


!^R Backquoted ,:! !^R Flash backquote matching this ,-like char!

f@m(q_)f			    !* Do the insertion			!
:"g 0'			    !* Exit if an arg was given		!

.[0 fnq0j [0			    !* Save this place to return to	!
				    !*  Push q0 so no one can change it	!

_,-1a[0 q0*5+1:g..D[1		    !* q0: Get syntax of preceding char	!
q1-A"e q0-."n 0''		    !* If alpha and not dot, abort	!
q1-/"e 0'			    !* Abort on slashy things, too	!
r				    !* Back over the comma		!
:m(m.m &_Flash_Matching_Backquote)'!* Go flash things			!


!^R Backquoted @:! !^R Flash backquote matching this @-like char. 
Will work fairly well for ,. also by just putting this on dot !

f@m(qA)f			    !* Do the insertion first		!
:"g 0 '			    !* Exit if an arg			!
.[0 fnq0j [0			    !* Save this place to return to	!
0,-1a-,"e			    !* If ,@ only			!
 2r :m(m.m &_Flash_Matching_Backquote)'!* Go back over ,@ and ...	!
0				    !* Return				!


!& Flash Matching Backquote:! !S Internal entry to flashing `, pairs !

[0[1				    !* Bind old state to revert later	!
qDisplay_Matching_Parenu1	    !* Cache this value			!
0u0				    !* Init comma counter		!
:f<!Done!			    !* Catch unexpected errors		!
   <1:<-:@fl(>"nb,.'"#)': :fb`,;!* Look back to the previous sexp	!
    1a-`"e q0"e f;Done' %0'	    !* If right level, display		!
	  "# q0-1u0 ' >		    !* Account for commas, too		!
   -ful >"l			    !* If error,			!
            qAnnounce_Backquote_Errorf"n[0 m0w ]0'
	    0'		    !* And return			!
q1"e 0 '			    !* Return if no display wanted	!
q1"l .-(fswindow)"l 0 ' '	    !* Maybe exit If we are off screen	!
0@v30*(q1  ):		    !* Show it and wait			!
0

