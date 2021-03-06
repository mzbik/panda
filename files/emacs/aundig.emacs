!* -*- TECO -*-!
!~FILENAME~:! !GZ's library for automatic digest handling in Babyl!
AUNDIG

!& Maybe Undigestify:! !S If the selected message is a digest, undigestify.!

!* This is intended for use in automatic-undigestify schemes, of which none!
!* yet exist. !

 z-b-400"l '				!* Dont bother if very short msg.!
 [l[d .:\[0 fn0j			!* Self-restoring . in case not a!
					!* digest.!
 0f[vb -s
l				        !* Back to status line.!
 :fb, unseen,"e '			!* Dont touch unless labeled unseen.!
 f]vb					!* Back to old bounds!
	!* Parse subject and start of message to see if it is a digest.!
 1:<
	!* if any errors occur, we will just exit without undigestifying.  So!
	!* we do the parsing inside an errset and dont have to insure against!
	!* SFL,NIB etc. errors!

    1m(m.m& Parse Header)		!* Point is now at end of header.!
					!* QSubject: is set to subject line,!
					!* 0, or null.!
    f[BBind gSubject: j		!* Insert subject or a 0 into!
					!* temporary buffer.!
      z-12"l '			!* no subject or not long enough!
      @f	 l .,(fb 	r).x0	!* 0: first word of subject!
					!* or get out on SFL error!

      !* Make sure rest of subject parses correctly, exiting if not: !

      @f	 l 6 f~digest"n ' 6c	!* next word is digest!
      @f	 l 
      !* the Vnn #nn is optional !
      1a-13"n			    !* if not at end!
         1a-V"n ' c \"e '	    !* next is Vnn!
         @f	 l 1a-#"n ' c \"e '	!* next is #nn!
         @f	 l 1a-13"n ''	!* and finally just CR.!
      f]BBind				!* Back to buffer with message.!

   @f	 
l .,(fb	  r).xl		!* L: first word of message.!
   f~l0"n '			!* Must be the same as first word of!
					!* subject.!
   fbDigest				!* Then eventually there must be!
					!* digest.!
!* Volume nnn : Issue nnn stuff is optional!
   :fbVolume"n				!* Then eventually Volume.!
    @f	 l  \"e '			!* Then nnn.!
    @f	 l  1a-:"n ' c		!* Then colon.!
    @f	 l  5 f~issue"n ' 5c	!* Then issue.!
    @f	 l  \"e ' '			!* Then nnn.!

!* Todays Topics: is optional!
!* l @f	 
l %"% 15 f~Today's Topics:"n '	%* Then a Todays Topics line.!

   m.m& Find Digest Dash SeparatoruD	!* D: dash finder.!
   67,73md"e '			!* Then ~70 dash line.!
   @f	 
l .-z"e '				!* And there better be something!
					!* afterward.!
>"n '					!* Exit if got any errors!
 :i..n					!* ..N: Ok, get rid of self-restoring!
					!* point.!
:i*CUndigestifying...
fsechodisplay	0fsechoactive	        !* Own up!
 f:m(m.m& Babylize Digest Contents)	!* And undigestify.!
 