!* <EMACS>XON-XOFF.EMACS.3, 19-May-83 14:04:20, Edit by GERGELY!
!~Filename~:! !A library for hacking EMACS on VT100's!
XON/XOFF

!& Setup XON/XOFF Library:! !S Some initialization for this mode!

    0 FO..Q XON/XOFF_Setup_Hook[0 fq0"G :M0'"#]0'

    (13+1)*5 fsqvectorM.V XON/XOFF_Key_Commands

    0M.CTemporary_XON/XOFF_mode Intermediate_mode_for_XON/XOFF_mode

    1 FO..Q Default_XON/XOFF_ModeF(M.V XON/XOFF_Mode
	)M.V Default_XON/XOFF_Mode

    M.C XON/XOFF_Mode! *_Positive_implies_flow-control_is on!
    "'N-(q$Temporary_XON/XOFF_mode$"'N)"E'
    1 FS Modechange$ 
    F"N "G 1:M(M.M XON/XOFF_Mode$)'
	"# -1:M(M.M XON/XOFF_Mode)''
    "#W 1:M(M.M XON/XOFF_Mode$)'

    M(M.M_&_SET_XON/XOFF_MODE_LINE)

    QDefault_XON/XOFF_Mode:"L	!* Allows user to start with normal!
	1M(M.M XON/XOFF_Mode)'	!* keypad, ie. everything off!
    "# -1M(M.M XON/XOFF_Mode)'
    

!& Kill XON/XOFF Library:! !S Kill library specific functions!

    0 FO..W XON/XOFF_Kill_Hook[0 FQ0"G :M0' ]0

    -1 M(M.M XON/XOFF_Mode)		!* Reset the function!
    1:<M(M.M Kill_Variable)XON/XOFF_Mode>W
    1:<M(M.M Kill_Variable)Temporary_XON/XOFF_Mode>W
    1:<M(M.M Kill_Variable)XON/XOFF_Key_Commands>W
    


!XON/XOFF Mode:! !C Set Page Mode and change incremental search cmds.
 C-X C-S becomes C-X S
 C-X C-Q becomes C-X ~
 C-S becomes C-\
 C-Q within a search becomes C-^
 C-Q outside a search becomes C-^ Q (or C-` Q on VT100 kbd).

To insert a bare ^Q type M-*.

A negative arg turns this lossage off.!

    FF"N '"# 0-(1 FO..Q XON/XOFF_Mode)'[A
    QA-QTemporary_XON/XOFF_Mode"E 0'

    QA"L
	0[I						!* 0 is unused!
	Q:XON/XOFF_Key_Commands(%I) U.S		!* 1!
	Q:XON/XOFF_Key_Commands(%I) U.Q		!* 2!
	Q:XON/XOFF_Key_Commands(%I) U:.X()	!* 3!
	Q:XON/XOFF_Key_Commands(%I) U:.X(S)		!* 4!
	Q:XON/XOFF_Key_Commands(%I) U:.X()	!* 5!
	Q:XON/XOFF_Key_Commands(%I) U:.X(Q)		!* 6!
	Q:XON/XOFF_Key_Commands(%I) U		!* 7 Backspace!
	Q:XON/XOFF_Key_Commands(%I) M.V XON/XOFF_Search_Command
							!* 8 Search Command!
	Q:XON/XOFF_Key_Commands(%I) M.V XON/XOFF_Search_Quote
							!* 9 Search-Quote!
	Q:XON/XOFF_Key_Commands(%I) U:.X(~)		!* 10 C-X ~!
	Q:XON/XOFF_Key_Commands(%I) U..*		!* 11 M-*!
	Q:XON/XOFF_Key_Commands(%I) U.\		!* 12 C-\!
	Q:XON/XOFF_Key_Commands(%I) U		!* 13 C-^!

	1fstty page mode wfstty init
	-1uTemporary_XON/XOFF_mode
	-1UXON/XOFF_mode
	1fsmodechange
	0
	'

    0[I							!* 0 is unused!
    Q.S U:XON/XOFF_Key_Commands(%I)			!* 1!
    Q.Q U:XON/XOFF_Key_Commands(%I)			!* 2!
    Q:.X() U:XON/XOFF_Key_Commands(%I)		!* 3!
    Q:.X(S) U:XON/XOFF_Key_Commands(%I)		!* 4!
    Q:.X() U:XON/XOFF_Key_Commands(%I)	!* 5!
    Q:.X(Q) U:XON/XOFF_Key_Commands(%I)		!* 6!
    Q U:XON/XOFF_Key_Commands(%I)			!* 7 Backspace!
    0   U:XON/XOFF_Key_Commands(%I)			!* 8 Search Command!
    0   U:XON/XOFF_Key_Commands(%I)			!* 9 Search-Quote!
    Q:.X(~) U:XON/XOFF_Key_Commands(%I)		!* 10 C-X ~!
    Q..* U:XON/XOFF_Key_Commands(%I)		!* 11 M-*!
    Q.\ U:XON/XOFF_Key_Commands(%I)			!* 12 C-\!
    Q U:XON/XOFF_Key_Commands(%I)		!* 13 C-^!

    Q.S FO..Q XON/XOFF_Search_Command F(U.\
	) U:XON/XOFF_Key_Commands(8)	!* C-\ is search command.!
     FO..Q XON/XOFF Search_QuoteU:XON/XOFF_Key_Commands(9)
					!* C-^ becomes search quote.!

    -1fstty page mode			!* Disable Xon/Xoff processing!
    @:i*\-1fstty pag mode\U.S	!* If EMACS drops page mode!
    @:i*\-1fstty pag mode\U.Q	!*  - this will re-init it (I hope).!
    Q:.X()U:.X(S)		!* C-X C-S becomes C-X S!
    Q:.X()U:.X(~)		!* C-X C-Q becomes C-X ~!
    :i*21.iU..*			!* M-* inserts bare ^Q!
    m.m^R_Quoted_Insert,8fs^R CMAC    !* Backspace becomes C-Q!

    1uTemporary_XON/XOFF_mode
    1UXON/XOFF_mode
    1fsmodechange
    0

!& Set XON/XOFF Mode Line:! !S Set the Mode line hook for the library!
    0 FO..Q Set_Mode_line_hook F"E
	W:I*m.v Set_Mode_Line_hook w :I*'[1
    f[ b bind
    fq1"L :i1'
    g1 j
    :@S`XON/XOFF_MODE`"E @I`
	0 FO..QXON/XOFF_MODE"G I_XON' 
	`'
    HXSET_MODE_LINE_HOOK
    1fs mode change


!* 
/ Local Modes: \
/ MM Compile: 1:<M(M.MDate Edit)>
M(M.M^R Save File)
M(M.MGenerate Library)XON-XOFFXON-XOFF
1:<M(M.MDelete File)XON-XOFF.COMPRS>W \
/ End: \
!    