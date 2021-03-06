!*-*-TECO-*-!
!* <GERGELY.NEMACS>NOVICE.EMACS.7, 25-May-82 08:56:34, Edit by GERGELY!
        
!* To use this feature, give the user a profile file
(uname EPRFIL or EMACS.PROFILE) containing 512 characters,
one for each command character, each being either E to enable
the command character or D to disable it.

Then put in the user's init file the commands
    :ej emacs;novice :ej
    m(m.m& Load Disable Profile)
which disable commands according to the profile.
The profile file is automatically updated if the
user turns any commands on or off.!

!~Filename~:! !Implement automatically-expanding restricted subset of EMACS.!
NOVICE

!^R Disabled Command:! !^R This command has been turned off.
To turn it back on, try to use it and answer "Y".
The original command q0,(q:Disabled Command Definitions(q0))m(m.m^R Describe)!

    fs qp ptr[9
    q..0fs^r indir[0
    q:Disabled_Command_Definitions(q0)[1
    Q0 :FC [2
    [C					!* Temporary register!
    Q0-Q2"N
	Q1-(Q2@FS^RCMACRO)"E
	    q:Disabled_Command_Definitions(Q0),Q0 @FS^RCMACRO
	    q0:fDisabled_Command_Profile E
	    m(m.m&_Save_Disable_Profile)
	    F:@M(Q0(Q9FSQPUNWINDW)@FS^RCMACRO)''
    ]2

    fq1"l m(m.m &_Load_Bare)'

    !Startover!
    q0,q1m(m.m &_^R_Briefly_Describe)
    ft 
This_key_has_been_turned_off_to_avoid_confusing_you.


  !Retype!
    ft
You_have_several_options,_according_to_the_next_character_you_type:
_Space__Execute_the_function_just_once.__Leave_the_key_turned_off.
_Y______Execute_the_function_and_leave_the_key_turned_on_permanently.
________It_may_be_turned_off_again_with_the_command_M-X_Disable_Command.
_N______Do_not_execute_the_function.__Leave_the_key_turned_off.
_?______Show_a_full_description_of_what_the_function_does.


    0f[helpmac

    !Ques-Retype!
    ft (Type_Y,_Space,_N,_or_?)_
    fi:fcuC

    f]helpmac

    qC-4110."n
	ftC
' "#
	:ft

	o Startover'
    qC-_"e
	0u..h F F:@m(q:Disabled_Command_Definitions(q0) (q9fsqpunw))'

    qC-?"e
	:ft
	q0m(m.m&_Charprint)  ft
_
	q0,(q:Disabled_Command_Definitions(q0))m(m.m ^R_Describe)
	ft

	o Retype'

    qC-Y"e
      !* Turn the command on and tell the user.!
	q:Disabled_Command_Definitions(q0),Q0 @FS^RCMACRO
	ft
Command_now_turned_on.

      !* Mark this command as enabled in the profile, and save the profile.!
	q0:fDisabled_Command_Profile E
	Q0 :FC [2
	Q2-Q0"N
	    Q0@FS^RCMACRO-(q:Disabled_Command_Definitions(Q2))"E
		q:Disabled_Command_Definitions(Q2),Q2 @FS^RCMACRO
		q2:fDisabled_Command_Profile E''
	]2
	m(m.m&_Save_Disable_Profile)
	0U..H F
	F:@M(Q0(Q9FSQPUNWINDW)@FS^RCMACRO)'
    
    qC-N"n  o Ques-Retype'
    ft
Command_remains_turned_off.__Type_a_SPACE_to_restore_the_screen.

    0

!Disable Command:! !C Disable a particular command character.
Prompts for you to type the character;
you may use bit prefix characters to type it.
Asks for confirmation.  A Numeric argument serves as a repeat count!

    [.1
    F"N  ' "#W1'<
	:I*C FS Echo disp
	@ft Disable_key:_
	m(m.m &_Read_Q-reg)U.1	!* Ask what character to put it in.!
	@ft__Go_ahead 1m(m.m&_Yes_or_No)"e 0'
	1m(m.m &_Disable_Commands).1
	>
    

!Enable Command:! !C Enable a particular command character.
Prompts for you to type the character;
you may use bit prefix characters to type it.
Asks for confirmation.  A numeric argument serves as a repeat count!

    [.1
    F"N  ' "#W1'<
	:I*C FS Echo disp
	@ft Enable_key:_
	m(m.m &_Read_Q-reg)U.1	!* Ask what character to put it in.!
	@ft__Go_ahead 1m(m.m&_Yes_or_No)"e 0'
	1m(m.m &_Enable_Commands).1
	>
    

!& Setup Novice Variables:! !& Creates the necessary variables for NOVICE.!

    0fo..q Disabled_Command_Definitions"e

	512*5fs qvectoru1
	q1m.v Disabled_Command_Definitions

	512,E:i1
	q1m.v Disabled_Command_Profile'
    

!& Disable Commands:! !S Turn off some commands.
Takes any number of string args, each specifying a command
to be turned off, as a q-register name
(such as ...W for C-M-W, or ..[ for M-).
These commands are disabled until the user tries to use 
them and asks for then to be enabled again.
A null string argument terminates the call.
A numeric argument says convert lower-case characters to upper, etc.!

    [0 [1 [2

!* Save the definitions of all commands, if we haven't already.!
    M(M.M &_Setup_Novice_Variables)

    m.m^R_Disabled_Commandu1

    < :i0 -fq0;		    !* Get next arg, exit if null.!
	f0u2
	"n q2fs^r indirectu2'
	q2:fDisabled_Command_Profile D
	Q2 @FS ^R CMACRO-q1"n
	    Q2 @FS ^R CMACRO u:Disabled_Command_Definitions(q2)'
      q1,q2 @FS ^R CMACRO >		    !* Disable the next one.!

    :m(m.m &_Save_Disable_Profile)

!& Enable Commands:! !S Turn on some commands.
Takes any number of string args, each specifying a command
to be turned off, as a q-register name
(such as ...W for C-M-W, or ..[ for M-).
A null string argument terminates the call.
A numeric argument says convert lower-case characters to upper, etc.!

    [0 [1 [2 0[3

!* Save the definitions of all commands, if we haven't already.!
    M(M.M &_Setup_Novice_Variables)

    m.m^R_Disabled_Commandu1

    0U3					!* Q3:  Nonzero means to save profile!
    < :i0 -fq0;			!* Get next arg, exit if null.!
	f0u2
	"n q2fs^r indirectu2'
	Q2 @FS ^R CMACRO-Q1"E
	    %3W
	    q2:fDisabled_Command_Profile E
	    Q:Disabled_Command_Definitions(q2), Q2 @FS ^R CMACRO'
	>				!* Enable the next one.!

    Q3"N m(m.m &_Save_Disable_Profile)'
    

!& Save Disable Profile:! !S Record user's profile of disabled commands.
We write the profile as 512 characters, each E or D
for enabled or disabled, into the file
<uname> EPRFIL or EMACS.PROFILE.!

    f[b bind
    gDisabled_Command_Profile
    f[d file
    fs hsname fs dsname
    fs osteco"e etFOO_EPRFIL fs xuname fs d fn1'
    "# etEMACS.PROFILE'
    eihpef
    0

!& Load Disable Profile:! !S Disable commands according to user's profile.
The profile is a file containing 512 characters, each E or D.
We disable each command whose character is a D.
Returns -1 if the profile file exists, 0 if not.!

    f[b bind
    f[d file
    fs hsname fs dsname
    fs osteco"e etFOO_EPRFIL fs xuname fs d fn1'
    "# etEMACS.PROFILE'
    e?"N 0'				!* Error messages may be positive!

    er @y				!* Read the data.!
    Z"E m(m.m&_Disable_commands)'	!* Create the database if empty!
    "# M(M.M &_Setup_Novice_Variables)'	!* Or else just the variables!

    512[0
    m.m^R_Disabled_Command[1

    512< Q0-1U0 Q0J
	0,1a-D"e			!* If marked for disabling!
	    Q0 FS^R INDIRECT @fs ^R CMACRO (
		)U:Disabled_Command_Definitions(Q0)	!* Get the indirect!
							!* command deft.!
	    q1,Q0 @FS ^R CMACRO' >	!* Disable commands that have D in!
					!* profile.!
    hxDisabled_Command_Profile   !* Record the profile.!
    -1


!*
/ Local Modes: \
/ MM Compile: 1:<M(M.M^R Date Edit)>
M(M.M^R Save File)
M(M.MGenerate Library)NOVICENOVICE
1:<M(M.MDelete File)NOVICE.COMPRS>W \
/ End: \
!
 