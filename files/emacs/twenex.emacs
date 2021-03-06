!* -*-TECO-*- *!
!* [MIT-OZ]TINMAN:<EMACS>TWENEX.EMACS.112, 28-Jun-83 22:19:18, Edit by SHSU!
!~Filename~:! !EMACS macros for Twenex environment.!
TWENEX

!& Read Filename:! !S Read a filename from the tty.
The numeric argument indicates GTJFN flags;the 1 bit on means
to set GJ%FOU, the 2 bit means GJ%IFG, 4 means GJ%OLD.
The prompt should be supplied as a string argument, without
trailing colon or space.  Returns a string of the filename read.!

  :I*[1			    !* Read prompt argument.!
  FS JRN IN"N			    !* If replaying journal, use the names!
    :M(M.M &_Journal_String)'	    !* remembered from when we wrote the journal.!
  QBuffer_Filenames[2		    !* Assume using buffer filenames.!
  fsDFile[0 f[DFile

  &2"N ET*.* -3FS D VERS	    !* If looking for multiple filespec.!
    37.F[ :ETMOD 1U2'		    !* Default all fields nicely.!

  FSRGETTY"N FS:ETMODE"N
    FQ2:"L F=02"N 0U2''
    Q2"N FR'"# :I11_(Default_0)'''

  < FS ^RMODE"N :'1<		    !* In ^R mode, keep trying to read a filename!
				    !* until we read one without error.!
    FN @FT
 				    !* On exit, put a CRLF after the filename.!

    FS RGETTY"N
      FS ECHO DIS CFS ECHO DIS'	    !* Clear echo area.!
    "# FS :ET MOD "N :FT Default_is_0
''				    !* No mode line in printing tty.!

    :i*1:_,(			    !* Push ahead prompt to use...!
    &1"N 400000.'+(&2"N 100.')+(&4"N 100000.')):ET    !* Get filename from tty.!
    FS JRN OUT"N		    !* If making a journal, store in it!
      FS D FILE FS JRN WR	    !* the filenames we got, terminated by Altmode.!
       FS JRN WR'
    FS D FILE		    !* And return a string of it.!
    >fg -fstypeoutw 0fs errflg >  !* In ^R, print message and try again.!

!& Subset Directory Listing:! !S Lists subset of current directory, selected by FN1.!

    FS LISTEN"N  '		    !* Stop right away if typeahead.!
    F[ B BIND F[ WINDOW	    !* Save state.!
    G(FS D FILE) fsosteco-1"e -S.'"# -s;' :K I
   :FT HT			    !* Type filename defaults.!
    FS D FN1[1 FS D FN2[2
    1:<EZ1.2.-3>		    !* Get directory in buffer.!
    0[2 0[3 JL 0S,		    !* Make things a bit faster.!
    < .-Z; %2W FB -D 9I
      \+Q3U3 FB -D 9I
      FB -D 2,32I		    !* Make it look nicer.!
      .,.+11F=16-Nov-1858 "E @:F,K I---'	    !* Handle case of file not read!
      0TT FS LISTEN"N  ' FS FLUSHED"N 0u..h  ' L>	    !* Stop if flushed.!
    HK I Total_of_ Q3\ I_page
    Q3-1"Nsi' I_in_ Q2\ I_file
    Q2-1"Nsi' i.
   HT 

!Strip SOS Line Numbers:! !C Remove SOS line numbers from the current buffer.
Deletes all words with the low order bit set, and flushes all nulls.
An explicit argument inhibits checking for nulls unless the file has line numbers.!

    z"e '
    j .fsword&1"e ff"n ''    !* No line nums and explicit arg => do nothing.!
    "# 0s			    !* File has line-nums => flush them.!
      < .-z;
	0,.fsword(		    !* Replace word with nulls (and clear low bits)!
	  5:c; )&(-2)"e !<!>'	    !* Looping over any words of all nulls already.!
	0,1a-11."e		    !* Plus if the next char is a tab.!
	  f '		    !* Replace it with a null (we'll delete).!
	:s; ,1a-"e r f  c'	    !* Find end of line; turn CR FF into just LF.!
	.+5/5*5:j;>'		    !* Move to next word boundary!
    j 0s  <:s; r ^ f k>	    !* Then delete all nulls.!
    j 

!Date Edit:! !^R Write date of edit at start of file.
Inserts as the first line of the file ( or the second, if the first
is a "Mode" comment) a comment containing the file name, the date
and time of the edit, and the phrase "Edit by " user. If there is
already such a comment there, the behaviour depends on the arg:
With no argument, the previous one is replaced. With any argument
a new comment is added before the previous one.!

    1[1 [2
    0FO..QBuffer_Filenames"E
	:I*CNo_Output_Filename_in_effect
	fsechodisp 0fsechoactive w'

    1,M.M&_Setup_PAGE_Library"N
	M(m.m ^R_Widen_Bounds)W'
    "# M(m.m ^R_Set_Bounds_Full)W'
    QBUFFER_FILENAMES FSDFILE    !* Default to buffer file.!
    .				    !* Push the current value on the ring!
    j 1l  -2:s-*-"n		    !* If mode line then!
	1l'"# j'		    !* skip to second line!
    FF"e			    !* If no argument then!
	1l -1:s_Edit_by_"n	    !* Is there a previous comment!
	    0lk'"# -1l''	    !* If so. Delete it!
    "#f~(qmode)BASIC20 "e
	    <:s00002	REM_;>	    !* Search for last Date Edit line!
	    l'			    !* Go to next line!
	"# f~(fsdfn2)B20 "e
		<:s00002	REM_;>	    !* Search for last Date Edit line!
		l' '		    !* Go to next line!
	'
    
    f~(fsdfn2)FOR "E IC_______ o done '
    f~(fsdfn2)SAI "E ICOMMENT_ 0U1 o done '
    f~(fsdfn2)B20 "E I00002 9i iREM_ o done '
    f~(qMode)FORTRAN "E IC_______ o done '
    f~(qMode)SAIL "E ICOMMENT_ 0U1 o done '
    f~(qMode)BASIC "E I00002 9i iREM_ o done '

    f~(qMode)CLU "E I%%%_ 0u1 o done'
    f~(qMode)TASM "E I;;;_ 0u1 o done'
    
    1U1 0FO..QComment_BeginF"E W 0FO..QComment_Start'u2
    fq2"G G2 0u1'		    !* Start a new comment!
    !done!
    qbuffer_filenames f"n f[ dfile'	    !* Check for filename present!
    i[ g(fsMachine) i]	    !* local host!
    g(fs d device) i:		    !* and device (structure) name!
    <i g(fs dsname)		    !* Insert directory name!
    >i g(fs dfn1)		    !* File name!
    .i g(fs dfn2) .i	    !* and Extension!
    fs d versi f"e w e?"E
	    e[ er fs if vers (ece])'"#fs d versi' +1' \  !* Version no.!
    i, _ 0,-1fs f dconv	    !* Date and time!
    fs xunam[0 i,_Edit_by_0	    !* Edit by "User"!
    q1"E gcomment_end'	    !* End of comment!
    13i10i			    !* Add a <crlf>!
    b,. 			    !* And quit!


!Rerun CCL:! !C Repeat last CCL command.
Unless we are given a numeric arg, we offer to save all files.!

    FF"E M(M.M Save_All_Files)'
    :FR				    !* Clear mode line.!
    :I*Z FS ECHODIS		    !* Put cursor at bottom of screen.!
    0fsecho char		    !* dont echo when continued.!
    ex				    !* Exit and repeat CCL command.!

!Push to EXEC:! !C "Push" to new or existing EXEC inferior to EMACS.
If an inferior EXEC already exists, it is resumed, with its own
inferiors still intact.  The variable Exec Name can be a string giving
the filename to load.  Runs Exit Hook and Exit to Inferior Hook
leaving and Return From Inferior Hook returning.!

    fm(m.m &_Exit_EMACS)	    !* Clear mode line, auto save, etc.!
    0fo..q Exit_to_Inferior_Hook[1
    q1"n m1'
    0fo..q Exec_Name[1 q1"e fz'   !* Use default if no name given!
    "# 0fo..q Exec_Fork"e	    !* Otherwise do same thing with specified EXEC name,!
        -1,0fz1 1m.v Exec_Fork' !* which means create if necessary,!
       "# fz''			    !* otherwise resume.!
    0fo..q Return_From_Inferior_Hook[1
    q1"n m1'
    

!Check Mail:! !C Say if new mail exists.!

 !* Nonzero pre-comma argument inhibits typeout.  Returns nonzero if new mail.!
 f[DFile
 fsOSTeco-1"e etDSK:MAIL.TXT.1'	!* set filename to the official!
 "# etMESSAGE.TXT;1'			!* mailbox filename,!
 fsHSnamefsDSnamew			!* which is in the home directory!
 1:<1,er>"e				!* open mail file without setting!
					!* reference date!
    fsIFCdate-(15.fsIFFDB)(ec)"g	!* if write date greater than read date!
      "e @ft[New_mail_exists] 0fsEchoActivew'
      1''				!* return nonzero for ^R or subroutine!
 "e @ft[No_new_mail_exists] 0fsEchoActivew'
 0					!* return zero for ^R or subroutine!

!List Files:! !C Make a quick directory listing!

    f[b bind f[ s string
    qBuffer_Filenamef"e w fs d file' [2  !* If there are any, ...!
    f[ d file et2 et*.*	    !* Set up default filenames from buffer.!
    5,2f List_files[0 et0	    !* Get files to do.!
    fs d fn1u0  fs d fn2u2  0[3   !* 3 is maximum length of name seen!
    1,1110000001.ez0.2.-3	    !* Get directory into buffer.!
    :i*[1 j			    !* 1 is string to check names against.!
    < .-z; .u2			    !* 2 is start of this line.!
      fsosteco-1"e 2<fb. r>'  !* Move past filename and extension.!
      fsosteco-2"e fb. r fb; r'
      q2,.f=1"e		    !* If names the same, ...!
        q2-2,.k f,		    !* Make one longer line.!
	'"# q2,.x1'		    !* Else get new string to use.!
      :l 0,0:fm			    !* Make sure know where we are.!
      fs ^r hpos, q3 f  u3	    !* Keep track of the longest line so far.!
      l > j
    fs width / (q3+1) u2	    !* Get number per line.!
    fs width / q2 u3		    !* Get rounded size for them.!
    < 0u1
      q2< :l 0,0:fm .+2-z;
          %1-q2"n q3*q1 - (fs ^r hpos) , 40.i 2d'
	  > 2:c; >
    fs d dev:f6u1 fs d snam:f6u0
    :ft1:<0>

    ht :fv 0

!^R Dired:! !^R Run MM Dired  for the directory of the current buffer file.
With no argument, edits that directory.
With an argument of 1, shows only the versions of the file in the buffer.
With an argument of 4, asks for input, only versions of that file are shown.!

 QBuffer_Filenamesf"n fs D File  !* If we don't have buffer file names,!
				    !* assume arg of 4!
   FF"E m(m.m DIRED) '	    !* With no arg, pass null string.!
   "# -4"L FSDFN1[..0	    !* With arg of 1 use the FN1 name!
     M(M.M DIRED) ..0 '''
   5,2F Directory_ [..0	    !* With an arg of 4,!
				    !* or no buffer file names!
 m(m.m DIRED) ..0 	    !* We ask for a string arg!
				    !* and pass it along!

!Set Terminal Type:! !C Specify terminal type (as string argument).
To get a list of all terminal types, do M-X List LibraryTRMTYP<cr>.
The screen size must have been set by Terminal Length and Terminal Width in EXEC.!

    :m(m.aTRMTYP&_Set_Terminal_Type)

!List Directories:! !Compare Directories:! !C Command available only on ITS.!
    :i*Command_available_only_on_ITS? fs err

!MACRO Mode:! !C Set things for editing MACRO code.!

    :I*MACRO,:M(M.M MIDAS_Mode)

!FAIL Mode:! !C Set things for editing FAIL code.!

    :I*FAIL,:M(M.M MIDAS_Mode)

!BCPL Mode:! !C Set up to edit BCPL code.!

    m(m.mLoad_Library)BCPL
    :m(m.mBCPL_Mode)

!BLISS Mode:! !C Set up to edit BLISS code.!

    m(m.mLoad_Library)BLISS
    :m(m.mBLISS_Mode)

!SAIL Mode:! !C Set up to edit SAIL code.!

    m(m.mLoad_Library)SAIL
    :m(m.mSAIL_Mode)

!FORTRAN Mode:! !C Set up to edit FORTRAN code.!

    m(m.mLoad_Library)FORTRAN
    :m(m.m FORTRAN_Mode)

!PASCAL Mode:! !C Set up to edit PASCAL code.!

    m(m.mLoad_Library)PASCAL
    :m(m.mPASCAL_Mode)

!CLU Mode:! !C Set up to edit CLU code.!

    m(m.mLoad_Library)CLU
    :m(m.mCLU_Mode)

!BASIC20 Mode:! !C Set up to edit BASIC code.!

    m(m.mLoad_Library)BASIC20
    :m(m.m BASIC20_Mode)

!PCL Mode:! !C Set up to edit PCL command files.!

    m(m.mLoad_Library)PCL
    :m(m.m PCL_Mode)

!Interlisp Mode:! !C Set things up for editing Interlisp code.
Puts ^R Indent for LISP on Tab, puts tab-hacking rubout on Rubout.
Facilitates an approximation to Interlisp lexical analysis,
but notably ignores square brackets.
Paragraphs are delimited only by blank lines.!

    M(M.M &_Init_Buffer_Locals)    !* A standard mode changing incantation.!
    M.M ^R_Indent_for_Lisp  M.Q I
    1,1M.L Space_Indent_Flag
    1,Q(1,Q. M.QW )M.Q .  !* Exchange rubout flavors.!
    1,10 M.L Comment_Column
    1,(:I*(*_) M.L Comment_Start
    1,(:I*(*_) M.L Comment_Begin
    1,(:I*)) M.L Comment_End
    1,(:I*) M.L Paragraph_Delimiter
    QPermit_Unmatched_Paren"L
      1,0M.LPermit_Unmatched_Paren'
    M.Q ..D
    0FO..Q Interlisp_..D F"N U..D'	    !* Select the Lisp syntax table!
    "# W :G..D U..D		    !* creating it if doesn't exist.!
	Q..D M.V Interlisp_..D
        !* Several characters are handled specially.!
	-1[0 40.< %0*5+1:F..DA > ]0	    !* Make all control chars!
				    !* part of symbols.  We override this for some.!
	95*5+1:F..DA		    !* Back arrows get converted to spaces!
				    !* by Purify.!
        !* The following label, together with the arguments!
	!* to & Alter ..D that are single or double gritches,!
	!* balance.!
	!"!
	1M(M.M &_Alter_..D)	_
______!A"|#A$A%/&A''(())*A+A,A-A.A/A:A;A<A=A>A?A@A[A\A]A^A`A{A|A}A~AA'
    1M(M.M&_Set_Mode_Line) Interlisp 

!& TXT Mode:! !& HLP Mode:! !& PUB Mode:! !& RNO Mode:! !& INFO Mode:! !& R Mode:! !& MRN Mode:! !& DOC Mode:! !& TEXT Mode:! !S Set up for editing text from FN2.!

    :m(m.mText_Mode)

!& TEX Mode:! !S Set to for editing TEX input from FN2.!

    :m(m.m TEX_Mode)

!& MID Mode:! !S Set up for editing MIDAS code from FN2.!

    :m(m.mMIDAS_Mode)

!& TASM Mode:! !S TASM is same as MIDAS!
    m(m.mMIDAS_Mode)
    :iModeTASM
    :m(m.m&_Set_Mode_Line)
    

!CMD Mode:! !& CMD Mode:! !& CTL Mode:! !S Set up for CMD files!
    m(m.mLoad_Library)CMD
    :m(m.mCMD_Mode)
    

!BIBLIO Mode:! !C Set up for editing Scribe BIB databases!
[0
    f~(qMode)SCRIBE"n m(m.mScribe_Mode)'
    1,m.mBIBLIOf"nu0			!* 0: 0 or function!
      ff&1"n			!* given arg?!
        m0'				!* yes. use it!
      "#  m0''				!* toggle!
    "#
      e?EMACS:BIBLIO.:EJ"e		!* is there?!
          m(m.mLoad_Library)BIBLIO'	!* loading it goes into BIB submode!
    '
    

!* This doesn't seem to work [wew] 7-apr-85 !
!* & BIB Mode:! !* S Set up for editing Scribe BIB databases!
!*   1m(m.mBIBLIO_Mode) !
!*    !

!& FAI Mode:! !S Set up for editing FAIL code from FN2.!

    :m(m.mFAIL_Mode)

!& MAC Mode:! !& M11 Mode:! !& P11 Mode:! !S Set up for editing assembler code from FN2!

    :m(m.mMACRO_Mode)

!& B36 Mode:! !& BLI Mode:! !& REQ Mode:! !& R36 Mode:! !S Set up for editing BLISS code from FN2.!

    :m(m.mBLISS_Mode)

!& ALG Mode:! !& A68 Mode:! !S Set up for editing ALGOL code from FN2.!

    1,1M.LCompiler_Filename

!& SNO Mode:! !S Set up for editing SNOBOL code from FN2.!

    1,1M.LCompiler_Filename

!& PAS Mode:! !& PGO Mode:! !S Set up for editing PASCAL code from FN2.!

    :m(m.mPASCAL_Mode)

!& SIM Mode:! !S Set up for editing SIMULA code from FN2.!

    1,1M.LCompiler_Filename

!& CLU Mode:! !& SPECS Mode:! !& EQUATE Mode:! !S Set up for editing CLU code from FN2.!

    :m(m.mCLU_Mode)

!& LSP Mode:! !& LISP Mode:! !S Set up for editing LISP code from extension!

    :m(m.mLISP_Mode)

!& MUD Mode:! !S Set up for editing MUDDLE code from extension!

    :m(m.mMuddle_Mode)

!& SAI Mode:! !S Set up for editing SAIL code from extension!

    :m(m.mSAIL_Mode)

!& EMACS Mode:! !& TEC Mode:! !S Set up for editing TECO code from extension!

    :m(m.mTECO_Mode)

!& BCP Mode:! !& B11 Mode:! !S Set up for editing BCPL code from FN2.!

    :m(m.mBCPL_Mode)

!& RUN Mode:! !S Set up for editing Runfiles from FN2.!

    :m(m.mFundamental_Mode)

!& FOR Mode:! !S set up for editing Fortran files.!
    :m(m.m Fortran_Mode)

!& B20 Mode:! !S Detect a BASIC file.!
    :m(m.m BASIC20_Mode)

!& PCL Mode:! !S Set up for editing PCL code from extension!
    :m(m.mPCL_Mode)

!& MSS Mode:! !& MAK Mode:! !& LIB Mode:! !& DEV Mode:! !& BIB Mode:! !S Set up for editing SCRIBE source text.!

    :m(m.m SCRIBE_Mode)

!^R Exit to Exec:! !^R Immediate return to Exec.!
          !* Will never be executed.  Just for sake of self-doc of ^C.!

!Connect to Directory:! !C Connect to directory.
First argument is directory name.
Second argument is password (ignored if not needed).!

    1,fDirectory:_:fc[1	    !* 1: directory name!
    fq1"e fsHSnameu1'		    !* default to login directory!
    1:< q1 fsMSnamew >"e	    !* Connect (by settin msname)!
      :f:"l f*' '	    !* Discard second string arg if called byy macro.!
!* Connecting without the password doesn't work.!
    1,fPassword:_:fc[2	    !* 2: password!
    fq2"e 1,m(m.m&_Read_Line)Password:_:fcu2'
				    !* if null password from command!
				    !* line, read one from terminal!
    q2,q1 fsMSname		    !* connect with password!
    

!Expunge Directory:! !C Expunge a directory.
Connects to the directory first.
Takes arguments like Connect to Directory.!

    f[ MSname			    !* Don't stay connected.!
    fn fs expunge 
    :m(m.mConnect_to_Directory)
 