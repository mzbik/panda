!* -*-TECO-*-!
!* <GERGELY.EMACS>NVT132.EMACS.4, 21-May-81 08:41:28, Edit by GERGELY!
!* <GERGELY.EMACS>VT132..59,  6-May-80 08:39:13, Edit by GERGELY!

!~Filename~:! !VT132 Keypad Definitions!
NVT132

!& Setup NVT132 Library:! !S Sets up the defaults for the VT132
keypad upon the entrance of the library.  The fork hooks are
defined so that the keypad is left in numeric mode upon
exiting.!
  0FO..QVT132_Setup_Hook[0 fq0"G :M0'
    M.M ^R_Toggle_Terminal_Width U...(   !* On C-M-(!
  M.VVT132_SETUP_HOOK
  @:iVT132_SETUP_HOOK/:i*CVT132_Library_has_already_been_loaded
fs echo display 0 fs echo active/
 
0M.CTemporary_Vt132_storage Intermediate_storage_for_VT132_mode

1M.CVT132_Mode! *_Non-zero_activates_alternate_Keypad!
"'N-(q$Temporary_Vt132_storage$"'N)"E'
1FSMODECH$ 
"N :M(M.M VT132_Alternate_Keypad$)'
__"# :M(M.M VT132_Normal_Keypad$)'

M(M.M_&_SET_VT132_MODE_LINE)

   0fo..q Exit_to_Inferior_Hookf"E
        :i*M.V Exit_to_Inferior_HookW:i*'"#'[1
@:iExit_to_Inferior_Hook|1WM(M.M VT132_NORMAL_KEYPAD)|

    0fo..q Exit_to_superior_hookf"E
        :i*M.V Exit_To_Superior_Hookw:i*'"#'[2
@:iExit_to_superior_hook|2WM(M.M VT132_NORMAL_KEYPAD)|

    0fo..q Return_From_Inferior_Hookf"E
        :i*M.V Return_From_Inferior_HookW:i*'"#'[3
@:iReturn_From_Inferior_Hook|3W M(M.M VT132_ALTERNATE_KEYPAD)|

    0fo..q Return_From_Superior_Hookf"E
	:i*M.VReturn_From_Superior_Hookw:i*'"#'[4
@:iReturn_From_Superior_Hook|4 WM(M.M VT132_ALTERNATE_KEYPAD)|

  :M(M.M VT132_ALTERNATE_KEYPAD)'

!VT132 ALTERNATE KEYPAD:! !C Sets alternate keypad mode for VT132's
When this command is executed, the keypad on the left and the arrow
keys are now executable commands.
  The terminal is put in CURSOR KEYS MODE and KEYPAD APPLICATION MODE.
This mode switching is done by valretting to DDT so if this job
does not have a DDT superior this command will fail.!

128 M(M.M MAKE_PREFIX_CHARACTER).OU..O	!* Define the prefix key!
0FO..QEMacs_Version-146"LM.M &_VT132_PREFIX_CHARACTER_DRIVERU.P'
				    !* [PJG] and its driver if an old!
				    !* release of emacs!

M.M ^R_UP_REAL_LINE U:.O(A)			!* Up-Arrow!
M.M ^R_DOWN_REAL_LINE U:.O(B)		!* Down-Arrow!
6 fs ^R INIT U:.O(C)			!* Forward-Arrow!
2 fs ^R init U:.O(D)			!* Backward-Arrow!

M.M ^R_KILL_LINE U:.O(P)			!* PF1!
M.M ^R_EXECUTE_MINIBUFFER U:.O(Q)		!* PF2!
M.M ^R_UN-KILL U:.O(R)			!* PF3!
5 fs ^R init U:.O(S)			!* PF4!

M.M ^R_KILL_WORD U:.O(l)			!* Comma-key!
M.M ^R_FORWARD_WORD U:.O(m)			!* Minus-key!
M.M ^R_PREVIOUS_Several_SCREENU:.O(n)	!* Dot-key!
M.M ^R_NEXT_Several_SCREEN U:.O(M)		!* Enter Key!

14 fs ^R init U:.O(p)			!* 0-key!
M.M ^R_GOTO_BEGINNING U:.O(q)		!* 1-key!
M.M ^R_GOTO_END	U:.O(r)			!* 2-key!
1 fs ^R init U:.O(s)			!* 3-key!
16 fs ^R init U:.O(t)			!* 4-key!
M.M ^R_Proper_Delete_Character U:.O(u)	!* 5-key!
M.M ^R_Delete_Last_Searched_Item U:.O(v)	!* 6-key!
15 fs ^R init U:.O(w)			!* 7-key!
1,M.M &_SETUP_PAGE_LIBRARY"E	    		!* 8-KEY!
  M.M ^R_NEXT_PAGE U:.O(x)'
 "#   M.M ^R_GOTO_PAGE U:.O(x)'
M.M ^R_QUOTED_INSERT U:.O(y)		!* 9-key!
@:I*/[?1h/FS IMAGE OUT			!* Turn on CURSOR KEY!
@:I*/=/FS IMAGE OUT				!* Turn on APPLICATION MODE!
1M(M.M &_Set_VT132_Mode_line)
.(f[ b bind			    !* Temporary Buffer!
gprefix_char_list		    !* Update the Prefix list!
j :s Meta-O__"EJ i Meta-O__Q.O
'				    !* Let it recognize M-O!
HFXPrefix_char_list		    !* Put the new one in!
f] b bind)J
1uTemporary_Vt132_storage
1UVT132_MODE


!VT132 NORMAL KEYPAD:! !C Undos alternate keypad mode for VT132's!
@:I*/[?1l > /FS IMAGE OUT    !* Turn off everything!
M.M ^R_SPLIT_LINEU..O			!* Restore Meta-O!
M.M &_PREFIX_CHARACTER_DRIVERU.P		!* Restore Prefix-Driver!
.(f[ b bind			    !* Temporary Buffer!
gprefix_char_list		    !* Update the Prefix list!
j :s Meta-O__"N0lk'		    !* Let it not recognize M-O!
HFXPrefix_char_list		    !* Put the new one in!
f] b bind)J
0uTemporary_Vt132_storage
0UVT132_MODE


!& VT132 Prefix Character Driver:! !S VT132 M.P: handles a prefix character.
Given a q-vector as argument, it reads a character
and returns the q-vector element it selects.
The character read is left in Q..1.!

    [0 Q..0[1 0F[HELPM
    Q1M.I FIU0			    !* READ THE SUBCOMMAND CHARACTER.!
    Q1-335"N Q0:FCU0'		    !* IF NOT THE SPECIAL PREFIX M-O THEN!
				    !* UPPERCASE THE LETTER READ IN!
    F]HELPM  Q0-4110."E ?U0'
    Q0-?"E
       FS ^R LASTU0		    !* IF IT IS "?', USER WANTS DOCUMENTATION ON THIS PREFIX.!
       Q0,(Q0 @FS ^R CMAC) M(M.M ^R_PREFIX_DESCRIBE)
       :I*0_'
    Q0U..1			    !* PUT CHAR INTO Q..1.!
    Q:()(Q0) F"E W :I* FG'	    !* Index into qvector.  If slot is 0, return command to ring bell.!

!& Set VT132 Mode Line:! !S Set the Mode line hook for the library!
qSet_Mode_line_hook[1
f[ b bind
fq1"L :i1'
g1 j
:@S/VT132_MODE/"E @I/
0FO..QVT132_MODE"N
FSRGETTY-18"E I_VT100'"#I_VT132''/'
HXSET_MODE_LINE_HOOK
1fs mode change


!^R Proper Delete Character:! !^R Delete the character after the point.
Negative arguments delete backwards!
F"G M(4FS ^R INIT)'
"#   FS ^R RUBOUT'
 

!^R Delete Last Searched Item:! !^R Deletes last searched item in buffer.
Will only work if the pointer hasn't moved!
[0 [..O					!* Q0 holds the last search item!
					!* and push the buffer!
QSEARCH_DEFAULT_RINGU..O		!* These store the search items!
.FSWORDU0				!* Get the last searched item!
]..O					!* Pop up the buffer!
  -FQ0 F~0"E -FQ0 @:M(M.M&_KILL_TEXT) '	!* If a forward search!
  "# FQ0 F~0"E FQ0 @:M(M.M&_KILL_TEXT) ''	!* A Reverse Search!
0

!Set Terminal Width:! !C Set the terminal and display widths.
The only argument is the width of the display (a number between 80 and
132 inclusive).  The default is 80.!

    80[a			    !* QA gets the default terminal!
				    !* width!
    [B			    !* QB is the argument temporarily!
    QB-79"G
	QB-133"L		    !* Check if argument [80,132]!
	    QBUA''
    QA-80"G
	:@I*`<[?3h[0q[1q[2q`fsimageout'!>!
    "#w:@I*`<[?3l[0q[1q`FSimageout'!>!
    4				    !* sleep for 4 30ths of a second!
				    !* which is the delay time for!
				    !* 9600 baud!
    QA-1fswidth		    !* Change the width for teco!
    0FO..QWindow_2_Size"N	    !* Some fancy stuff if in two!
				    !* window mode!
	M.M &_Multi-Window_RefreshF[refresh'
    1fsmodechange		    !* get the mode line as well!
    0f[lines
    

!VT132 Info:! !C Prints out the key definitions in display mode!

ft-----------------------------------------
|__"PF1"__|__"PF2"__|__"PF3"__|__"PF4"__|
|__Save___|__TECO___|_Unsave__|___End___|_C-M-(__Toggles_80/132_column_mode
|__text___|_Command_|__text___|_of_line_|
|---------+---------+---------+---------|
|___"7"___|___"8"___|___"9"___|___"-"___|
|__Open___|__Page___|__Quote__|_Forward_|___Arrow_keys_are_defined_to_move
|__line___|_________|__next___|__Word___|___cursor_one_position_in_direction
|---------+---------+---------+---------|___indicated.
|___"4"___|___"5"___|___"6"___|___","___|
|___Up____|_Delete__|_Delete__|__Kill___|
|__line___|Character|__last___|__Word___|
|---------+---------+---------+---------|
|___"1"___|___"2"___|___"3"___|_"ENTER"_|
|___Top___|_Bottom__|__Start__|_________|
|_of_page_|_of_page_|_of_line_|_________|
|---------+---------+---------|__Next___|
|________"0"________|___"."___|_Screen__|
|_____Down_Line_____|Previous_|_________|
|___________________|_Screen__|_________|
|-------------------+---------+---------|


!VT132 Number Keypad:! !C Turns off the keypad to allow using the numbers.
The key definitions for the pad are still there upon returning with
VT132 Transmit Keypad!
    !<!@:I*/>/FS IMAGE OUT	    !* Turn off everything!
    

!VT132 Transmit Keypad:! !C Sets the keypad to transmit their escape seq.
If the key definitions need to be reset the user should use
VT132 Alternate Keypad.  This command is the opposite of
VT132 Number Keypad!
    @:I*/=/FS IMAGE OUT	    !* Turn on APPLICATION MODE!
    



!^R Kill Real Line:! !^R Kill lines including the CRLF!
    :@M(M.M ^R_KILL_LINE )
    

!Fix VT52 PHOTO File:! !S Strips a PHOTO file if created on a VT52!
    [8 [9
    j<:@s`[D[J`; FKD -D>	    !* Take care of deletes!
    j<:@s`[J`; 0k>		    !* Clear lines,!
    j<:s ; fkd>	    !* Stray control characters!
    j<:s; fkd 4<13i 10i>>	    !* CTRL-P are really half-page!
    j<:s
; r 13i>			    !* Stray linefeeds!
    j

!^R Toggle Terminal Width:! !^R Toggles window between 80 and 132 columns!
    FSWIDTH+1[a
    QA-80"G 80' "#132' :M(M.M Set_Terminal_Width)
    