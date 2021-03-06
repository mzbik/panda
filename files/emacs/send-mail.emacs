!* -*-TECO-*- *!
!~FILENAME~:! !Send mail!
SEND-MAIL

!Continue Mail:! !C Continue editing previously-aborted mail.
Queued on  exit.!
 1:m(m.mSend Mail)

!Send Mail:! !C Enter recursive ^R mode editing mail, queued on ^R exit.
Given a numeric argument, continues editing previously-aborted (or sent) mail.
User is prompted initially for TO, CC, and SUBJECT fields.
Then user edits the message in a recursive ^R.  (The user in that ^R can
    change the header if desired.)
Upon ^R exit (e.g. by C-M-Z, ^Z^Z) the message is queued for mailing.
The message is edited in an EMACS buffer named *Mail*, and the text in it
    will stay around even after the mail is queued.!

 [1[2[3 [Previous Buffer	    !* save q-regs!
 qBuffer Nameu2		    !* 2: Orig EMACS buffer.!
 @fn|m(m.mSelect Buffer)2|	    !* When done, back to orig buffer.!
 m(m.mSelect Buffer)*Mail*w	    !* select mail sending buffer!
 0fo..qSend Mail Hookf"nu1 m1'	    !* macro Send Mail Hook if any!
 "#w m(m.mText Mode)'		    !* otherwise just do mmText Mode!

 ff"e			    !* No NUMARG, reset mail buffer.!
    0,fsZfsBoundw hk		    !* kill old text!
    0uBuffer Filenames	    !* reset buffer filenames!
    0u:.b(qBuffer Index+2)	    !* ...!
    m(m.m& Set Mode Line)	    !* calculate new mode line!
    m(m.m& Make Header)"e '	    !* create new header!
    '

 				    !* Recursive ^R to edit message.!
 0fo..qSend Mail Signaturef"nu1    !* see if he wants to sign it!
    zj .(i
 g1),.@v'w
 m(m.m& Send-Mail Buffer)	    !* Off it goes...!
 0fsModifiedw			    !* Not modified iff we sent the mail.!
 

!Reset Mail Buffer:! !C Give buffer a (maybe new) mail header.
Returns 0 if aborted (nothing changed), non-0 if all well.
Removes any old mail header, but leaves old text of mail if any.
    Old header is on the kill stack.
Given a NUMARG, kills old text too.
Asks for To, Cc, Re.!
 
 [1[3 z-.:\u1 fnz-1:j"e zj'	    !* Auto-restoring point.!
 bj 5 f~Date:"e :s

		  "e zj'	    !* To end of old header.!
		  b,.m(m.m& Kill Text)'    !* Kill and save.!
 ff&1"n hm(m.m& Kill Text)'    !* NUMARG means kill old text too.!
 fsZ-.f[VZ			    !* Empty vbuf.!
 m(m.m& Make Header)"n '
 hk @m(m.m^R Un-kill)f 0	    !* Return aborted.!

!& Make Header:! !S Not War.!
 iDate:  332221000000.,fsdatefsfdconvertw	    !* let TNX do the work!
 -s  i  zj			    !* put a space between date and time!
 0fo..qDay of Week Flag"n b+6j .(s,r),.fx3	    !* 3: Day.!
			   2d zj i (3)'	    !* Use (day).!
 i
				    !* End of date field.!

 iFrom:  .u1			    !* start FROM field!
 g(fsXUname:f6)		    !* put in user name!
 fsMachine:f6u3		    !* 3: host name!
 fq3"g i at  g3'		    !* put in " at <host>'!
 0fo..qUser Namef"n u3		    !* if User Name then maybe hack Sender!
   q1,.f~3"n q1j g3 :fx3 0l iSender: 3
 :l''
 i
				    !* finish FROM with CRLF!
 0fo..qPersonal Namef"n u3 -l 6c g3 i < :l i> l'

 1,m(m.m& Read Line)To: f"e 'u1 !* 1: To field.!
 fq1"e 0'			    !* Exit if no To field.!
 iTo: 1
				    !* Put in To field.!

 1,(0fo..qCC tof"ew')m(m.m& Read Line)Cc: f"nu3  !* 3: CC field.!
    fq3"g iCc: 3
				    !* Put in Cc field.!
	  ''w			    !* ...!

 1,m(m.m& Read Line)Re: f"nu3	    !* 3: Subject field.!
    fq3"g iSubject: 3
				    !* Put in subject field.!
	  ''w			    !* ...!

 i
				    !* Blank line before text.!

 hf				    !* Tell  of changes.!
 1				    !* Return alls-well.!

!Shorten From Field For Stupid Local Mail Reader:! !C Only username.
Nice for Hermes, so other people can see your subject line in a survey.
Removes the "at ...." and the personal name part, e.g. leaves only:
From: Ciccarelli
This is an illegal header technically, but that hasn't stopped Send-Mail yet!

 z-.[1				    !* 1: Original Z-.!
 bj s
From: .,(:k i  g(fsHSName:f6)).f	    !* Just username.!
 z-q1j 1			    !* Back to original point.!

!& Send-Mail Buffer:! !S Write buffer out to unsent-mail file.
Allows multiple To:s, Cc:s.!

 f[dfilew [1 [4
 0u1				    !* 1: 0 while havent found recipient.!
 j <				    !* Iterate down header lines.!
    .-z; 1a-15."e 1;'		    !* Done header at blank line.!
    fwf~To"n fwf~Cc"n l !<!>''    !* Skip header line if not To or Cc.!
    2c @f	 l 0,1a-:"n l !<!>'	    !* Skip line if To or Cc not!
    c				    !* followed by : after whitespace.!
				    !* Now pick up each recipient: *!
    < @f,	 l		    !* Past recipient-separators.!
      :f  "e l 0,1af	 :; !<!>'  !* hack continuation or stop!
      .,(:f :fb,:).x1		    !* 1: Recipient.!
      q1m(m.m& Queue One Mail File)	    !* write message to!
				    !* unsent-mail file.!
      >				    !* Repeat for other recips in this line.!
    >				    !* Next header line.!

 q1"e				    !* if no TO field then ask for one.!
    1,m(m.m& Read Line)To: f"ew'u1	    !* 1: TO field.!
    fq1"e '			    !* Abort.!
    bj l iTo: 1
				    !* Put it into the message.!
    q1m(m.m& Queue One Mail File)' !* write message to unsent-mail file.!
 -(@fz<EMACS>QUEUE-MAIL.SAV)fz'   !* use inferior to set bit!
				    !* in MAILER.FLAGS to queue it.!
 

!& Queue One Mail File:! !S Name of recipient is in NUMARG string.!

 [1[2				    !* 1: NUMARG, recipient name.!
 f[bbind g() j :s at "l @'
 "# j :s@"e zji@'' .,z@fc
 hx1 j z<1a:"u i' c> hx2 f]bbind
 etDSK: fsHSnamefsDSnamew
 et[--UNSENT-MAIL--].2 ei hp ef !* Write mail file for this!
 @ft(Mail to 1 queued)
 0 fs echo activew 

!& Next Mail Recipient:! !S Return next TO or CC from point.
String returned, or 0 if no more.!

 .[1				    !* 1: Original point.!
 :s
Cc:"l :fwl :x4'		    !* 4: 1-line CC field.!
 "# 0u4'			    !* 4: 0 if no CC.!
