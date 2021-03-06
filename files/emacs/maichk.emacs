!* -*-TECO-*- !
!~FILENAME~:! !Command to automatically check mail!
MAICHK

!& Setup MAICHK Library:! !S Init checker!
  0M.VMail_Checker		    !* stores mailcheck code (buffer)!
  1M.CMail_Watch*_Flag_indicating_status_of_Automatic_Mail_Checking_(-1,0,1,2)
_______0_=>_OFF,_<0_=>_ON,_only_reporting_first_occurrence_of_new_mail
_________________>0_=>_ON,_reporting_new_mail_until_read_(_=1_prints
_______________________message_[NO_NEW_MAIL]_as_well)

  F[BBIND			    !* Push for a temporary buffer!
  FQ..F"G G..F'			    !* Get what is in Secretary Macro!
    "# 28I'			    !* If nothing then put the CTRL-\ to pop!
  J :SMAIL_WATCH"E J		    !* If the words Mail Watch are NOT there!
      @I\QMAIL_WATCHF"N M(M.M CHECK_MAIL)'\ 13I 10I '   !* add this line.!
  HFX..F			    !* Everything goes back to ..F!
  F]BBIND			    !* Pop the buffer.!
  Q..FU.F			    !* Store it in .F also, since emacs has a!
				    !* convention that normally ..F=.F!
  0


!Check Mail:! !C Checks to see if user has new mail.
Give this command a following string argument of a username (no
brackets, no recognition) to check someone else's mail.!

!* Taken from the library MAICHK!

!* Terrible hack: EMACS has no way of checking fdb's without opening the file,
so need to execute some machine code of our own to do it.!

[..O 1[1
    FF"N			    !* [PJG] To prevent a mishap in!
				    !* the calling!
	"L 0'"# 'U1'
    
  q1"E QBuffer_Filenames"E ''   !* don't do automatic check if not!
				    !* editing a file.  Mainly this!
				    !* avoids doing it on startup, I think!
  3,fUser:_ [2		    !* get desired username in 2!
  QMail_CheckerF"N U..O'"#	    !* get code if it exists!
    FS B CREATE F[D FILE	    !* create new buffer, save state!
    EREMACS:MAICHK.CODE FY EC	    !* Read code into buffer!
    Q..O UMail_Checker'	    !* And save it for future!
  10f2 			    !* insert username in buffer, plus null!
  q1M(FS REALAD/5)		    !* execute the buffer!
  10J 1A"N			    !* If there's anything to say, it's!
				    !* in a string starting at word 2!
    :I*CFSECHO DISPLAY	    !* Clear Echo Area!
    q1"E 7FSECHO DISPLAY'	    !* Ring bell if unexpected!
    @T'"#			    !* print message!
    q1-1"E :i*C[No_new_mail]
FSECHODISP''			    !* If explicit arg and no mail, say so!
  0FS ECHO ACTIVE
  0
 