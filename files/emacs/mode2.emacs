!* -*-TECO-*-!
!* <GERGELY>MODE2.EMACS.3, 29-May-83 13:50:43, Edit by GERGELY!
!* <HOLMES>MODE2.EMACS, Designed and created by Raymond D. Holmes!

!~Filename~:! !Add a second fancy mode line.!
MODE2

!& Setup MODE2 Library:! !Define second mode line stuff.!

    FS OSTECO"N :I*DTLBCHX[0'
    "# :I*DTVBSFX[0'
    Q0M.C Mode_2_Options*_What_the_2nd_mode_line_contains._See_documentation_of_Mode_2_Macro.
    :I***_ M.CMode_2_Prefix*_String_that_starts_the_second_mode_line.
				    !* [PJG] New option follows!
    :I*__ M.CMode_2_Field_Separator! *_String_separating_items_on_the_second_mode_line
    ! 1fsmodechange
    :I*X M.V ..J 		    !* Current Second Mode Line !
    F[ B Bind 32<IM9___> 96<I_@___>
    HFX* M.VDecontrolify_Dispatch F] B Bind
    !<<!0 M.C Mode_2! *_>0_=>_Second_Mode_Line_is_active.!
	 "E 0 FS LINES'
	"# FS HEIGHT -(FSTOPLIN)-(FS ECHO LINES) -2 FS LINES
	    1 FS MODE CHANGE' 
    0 FO..QSet_Mode_Line_Hook "E :I* M.VSet_Mode_Line_Hook'
    QSet_Mode_Line_Hook U0
    :I*0(M(M.M&_Set_MODE2)W) USet_Mode_Line_Hook
    FS REFRESH U0 Q0 "E :I0'
    @:I*\0
	0U..H 1FSMODECH \ FS REFRESH
    0 FO..Q MODE2_Setup_Hook [0
    fq0 "G :M0'
    @:I*\1 FS ECHO FLUSH
    :I*CMODE2_has_already_been_loaded FS ECHO DISPLAY
    0 FS ECHO ACTIVE \ M.V MODE2_Setup_Hook
    1 UMode_2
    0


!Mode 2:! !C Toggles the display of the second mode line.
When on, the second mode line is displayed according to the value of the
option Mode 2 Options. Each character is interpreted in turn to insert
the corresponding information into the mode line. The codes are:

    B -- Previous Buffer (default for Select Buffer)
    C -- Working Directory
    D -- Date
    F -- Current TAGS File Name
    R -- Range of column numbers (clobbers all else)
    S -- Last Search String
    T -- Time
    V -- EMACS Version Number[TECO Version Number]
    H -- Last FORK Handle (Twenex only)
    L -- Load Average (Twenex only)
    X -- Whatever is inserted by Set Mode 2 Hook
!

    FF"E
	QMode_2 "E 1 UMode_2' "# 0 UMode_2''
    "# UMode_2'



!& Set MODE2:! !S Computes the new second mode line.!

    QMode_2 "E 0'
    1:<fsInvModfsScrInv>	    !* [fHsu] same for 2nd modeline!
    @fn|fsInvMod"n 1:<0fsScrInv>'|!* [fHsu] clean up on exit!
    QMode_2_Options[0 [1 [2 [3
    QMode_2_Field_Separator[A	    !* [PJG] Allow the user to!
				    !* [PJG] define his own separator!
    QDecontrolify_Dispatch[4
    [9 :I9-D94IQ..0+64I
    F[ B BIND GMode_2_Prefix
    FQ0 U2 0U1
!LOOP!
    Q2-Q1 "E B,ZF4
        ZJ 0F  "E -2D'
	HFX2 FQ2-(FS Width) "G 0,(FS Width) :G2 U2'
	F=..J2 "E 0'
	Q2 U..J
	FS HEIGHT-(FS ECHO LI)-2F[TOP LIN
	:FT2
	-1fstypeout
	0U..H
	0'
    Q1,%1 :G0 U3 3 FBCDFHLRSTVX "L OLOOP'
    Q1 "N GA' O3		    !* [PJG] Used the defined separator!

!B!
    GPrevious_Buffer I: OLOOP
!C!
    FS MS NAME:F6U3 G3
    FS OSTECO"N
      F~(FS HS NAME:F6)3"E FKD IC<>''
    "# I;'
    O LOOP
!D!
    FS OSTECO"E FS DATEFS FDCONV -9D O LOOP'
    :I*002FO..Q Mode_2_Date_Format U3
    3400000000.,fsdatefsfdconvert OLOOP
!F!
    0 FO..Q Tag_Table_Filenames F"N U3 G3 FKC
	FSHSNAME:F6 U3
	FQ3   F~3 "E FQ3 D IT<>'
	ZJ <0A :F"D -. "E -D' 0;' W-D>
	.-5,. F~ .TAGS "E -5D'
	FSXUNAME:F6U3 -fq3 F~3"E -FQ3D' !* [PJG] If tags are defined as!
				    !* <LOGIN>USER.TAGS with!
				    !* USER the user name then set the default!
	'
    "# -FQAF"L D''		    !* [PJG] If nothing then no field!
				    !* separator!
    
    OLOOP
!H!
    1:< G(M(M.M&_Get_Last_Handle)) >"N -fqa F"L D''	    !* [PJG] On error!
				    !* [PJG] get rid of the separator!
	OLOOP
!L!
    1:< G(FS LOAD AV) > OLOOP
!R!
    HK FS Width/10+1 <I123456789^> OLOOP
!S!
    34I QSearch_Default_Ring [..O
    .FS Word U3 ]..O
    FQ3 "L :I3' G3 34I OLOOP
!T!
    FS OSTECO"E FS DATEFS FD CONV 8R-9D 8C  O LOOP'
    :I*300FO..Q Mode_2_Time_Format U3
    4003000000.,fsdatefsfdconvert -2 FC OLOOP
!V!
    IV F~(QEditor_Name)EMACS"N
      QEditor_Nameu3
      0FO..Q3_Versionu3
      Q3"N G3 45i''
    GEMACS_Version 91I G(FSVERSION) 93I  OLOOP	!* add the TECO!
							!* version number!
!X!
    0 FO..Q Set_Mode_2_Hook "N
	MSet_Mode_2_Hook '
    OLOOP



!& Get Last Handle:! !S Get the last fork handle as a string.!

    Qforklist [1
    FQ1 [2 0[3 0[4 [5
    Qfrk "E :I*EXEC '
    < Q3-Q2 ;
	Q3 :G1 -27 "E
	    Q4,Q3 :G1 U5
	    FQ5"G Qfrk5 - Qfrk "E Q5 ''
	    %3 U4 '
	%3 >
    :I* 


!Set Mode 2 Timeout:! !C Have Second Mode Line Updated at Arg Minute Intervals.!

    FF "E 1[0 ' "# [0'
    Q0*60*60 FS CLK INTERVAL
    @:I*\M(M.M&_Set_Mode2)w 0\ FS CLK MACRO
    0


!Edit Mode 2 Options:! !C Enter MiniBuffer on Mode 2 Options.
g(m.m ~DOC~ Mode 2)jk!

    QMode_2_Options [1
    M(M.M&_Mini_Initialized):I*1_UMode_2_OptionsMode_2_Options
    1 FS Mode Change W 


!*
/ Local Modes: \
/ MM Compile: 1:<M(M.MDate Edit)>
M(M.M^R Save File)
M(M.MGenerate Library)MODE2MODE2
1:<M(M.MDelete File)MODE2.COMPRS>W \
/ End: \
!
