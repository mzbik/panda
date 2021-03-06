!* -*-TECO-*- �
!~FILENAME~:! !Alternate kbd macro pkg that allows dumping and restoring.!
KBDALT

!* The following up until Write Kbd Macro File is just KBDMAC !

!* A keyboard macro's data is represented using two ascii characters
 to describe each 9-bit character.  The first ascii character holds
 the top 2 bits of the 9-bit character, and the second ascii character
 holds the low 7 bits.  When the macro is run, pairs of characters are
 converted back into single 9-bit characters.
 Keyboard macros are encapsulated in TECO macros by putting the 37 chars
 "<Excl>temp<Excl>fm(m.m& Immediate Kbd Macro)" in front.
 This serves to make the TECO macro recognizable and to make
 it push the kbd macro when invoked.

 The keyboard macro call stack is a qvector in q..m.
 It has three slots for each call on the stack.
 The first slot contains the macro string.
   This string includes the call to & Immediate Kbd Macro.
 The second slot contains the index at which we are fetching from the string.
   The initial value of this slot is 37.
 The third slot contains the repeat count.!


!& Setup KBDALT Library:! !S Put commands on keys.  Create execution stack.!

    :i* m.v Last_Kbd_Macro
    :i*Kbd_Macro_Query m.v Kbd_Macro_Query

    20.*5fs q vectoru..m
    q..m[..o hk

    0FO..Q KBDALT_Setup_Hook F"N [0 M0'

    m.m ^R_Start_Kbd_Macro u:.x(()
    m.m ^R_End_Kbd_Macro u:.x())
    m.m ^R_End_Named_Kbd_Macro u:.X(>)    !* my addition: easy to name it!
    m.m ^R_Call_Last u:.x(E)
    m.m ^R_Kbd_Macro_Query u:.x(Q)
    0

!& Run Kbd Macro:! !S This is the FS TYI SOURCE for running keyboard macros.!

    fq..m/5-3[2
    q:..m(q2)[0			    !* Get innermost running keyboard macro string.!
    q:..m(%2)[1			    !* Fetch and increment the index at which we are fetching.!
    q1:g0*200.+(%1:g0) fs reread   !* Form next input character, from next!
				    !* two elements of string.!
    %1u:..m(q2)			    !* Store back index into string.!
    q1-fq0"l 0'		    !* If string is exhausted,!
    q:..m(%2)-1u0		    !* decrement repeat count,!
    q0f"nf"gu:..m(q2)'		    !* If not exhausted, decrement count unless it was 0!
       37u:..m(q2-1) 0'	    !* and anyway jump back to start of macro.!
    q..m[..o  zj -15d		    !* Repeat count exhausted => pop it off the pdl,!
    z"e 0 fs tyi source'	    !* and if the pdl is empty we are no longer in a macro.!
    0				    !* Return value for ^R, in case ^R is reading the char.!

!& Immediate Kbd Macro:! !S Push a kbd macro onto the execution stack of such.
Supply the repeat count as pre-comma argument
and a string pointer to the macro as post-comma argument.!

    q..m[..o
    fs tyi source"e hk'	    !* If an error turned off macro execution,!
				    !* clear out macro call stack.!
    zj 15,0i			    !* Make three more words in the call stack.!
    -1fsback str,.-15fs word	    !* Fill them with string, starting index, and rpt count.!
    37,.-10fs word
    ff"e 1' "#',.-5fs word

    m.m &_Run_Kbd_Macro fs tyi source
    0

!^R Call Last Kbd Macro:! !^R Run the last defined temporary keyboard macro.
A numeric argument is a repeat count.!

    f:mLast_Kbd_Macro

!^R Start Kbd Macro:! !C Begin defining keyboad macro.
After you type this command, everything you type becomes
part of the accumulating keyboard macro as well as being executed.!

    0 fs b consm.v Kbd_Macro_Defining_Body
    0 m.v Kbd_Macro_Defining_Index
    m.m &_Define_Kbd_Macro fs tyi sink
    fsvers-751"g 1fs mode ch'
    0

!& Define Kbd Macro:! !S FS TYI SINK for defining kbd macros.
Takes characters typed and accumulates them in a buffer
which will be formed into a keyboard macro when the definition is finished.!

    qKbd_Macro_Defining_Body[..o zj	    !* Select the buffer we use to accumulate.!
    fs tyi beg-(fs tyi count-1)"e	    !* If this is 1st char of ^R command,!
      zuKbd_Macro_Defining_Index'	    !* update index in buffer of last such.!
    /200.i &177.i 0	    !* Insert the two characters for this command character.!

!^R End Kbd Macro:! !C Terminate definition of a keyboard macro.
All that you have typed since starting the definition,
except this command itself, becomes the definition.
An argument means re-execute the macro immediately, with the
argument as repeat count, counting defining the macro as once.
^R Call Last Kbd Macro re-executes the last macro defined.!

    fs tyi sink"e @fe nimfs err' !* Complain if not defining a macro.!
    qKbd_Macro_Defining_Body[..o
    qKbd_Macro_Defining_Indexj .,zk	!* Flush the End Kbd Macro command from the string.!
    j i !temp!fm(m.m&_Immediate_Kbd_Macro)  !* Put command to call kbd macro at beginning.!
    hx* m.v Last_Kbd_Macro	    !* make mLast_Kbd_Macro call the macro.!
    Q..o( ]..o
          ) fs bkill		    !* Flush the data structures used in defining.!
    0 fs tyi sink
    fsvers-751"g 1fs mode ch'
    -1"e 0'			    !* If arg is 1, we are done.!
    f"g-1'mLast_Kbd_Macro'	    !* Else, repeat appropriate number of extra times.!
    0

!Name Kbd Macro:! !C Give a name to the last kbd macro defined.
A function is created with the name you specify,
which when invoked runs that keyboard macro.
Then, you are asked to give the command character to
put the macro on.  Type C-G if you don't want one.
Combinations with C-X may be used.!

    1,fFunction_name:_[1	    !* Read name of MM command, and define it unless null.!
    fq1"g qLast_Kbd_Macro m.v MM_1'
    @ft Put_kbd_macro_on_key:_
    m(m.m &_Read_Q-reg)[2	    !* Ask what character to put it in.!
    f=2"e 0'
    f=2"e 0'		    !* If he said CR or rubout, don't.!
    q2m(m.m &_Check_Redefinition)  !* Verify that this char is ok to redefine.!
    qLast_Kbd_Macrou2	    !* Redefine it.!
    0

!View Kbd Macro:! !C Print definition of a keyboard macro.
Supply a suffix string argument containing the command name.
If the string argument is null, you will be asked to type
the character which runs the macro.!

    1,fFunction_name:_[0	    !* Get the string arg.!
    fq0"e @ftCommand_key:_
	  m(m.m &_Read_Q-reg)u0'	    !* If null, read character from terminal.!
    "# :i0 MM_0'	    !* Otherwise, attach MM to get name of variable.!
    q0[1			    !* Get contents of string.!
    m.m ^R_Call_Last_Kbd-q1"e	    !* If it's the ^X^E command,!
      qLast_Kbd_Macrou1	    !* get the macro it would run.!
      :i0Last_Kbd_Macro'
    f[b bind 1:< g1>		    !* Get the thing in a buffer.!
    j 6 f~!temp!"n		    !* Prevent error in G cmd - get it here instead.!
      :i*Not_a_kbd_macro fs err'  !* Complain if command is not a kbd macro.!
    j s) 0,.k		    !* Flush the call to & immediate kbd macro.!
    ft
Definition_of_keyboard_macro:


    m.m&_Charprint[2
    j z/2< 1a*200.+(2c0a) m2 ft_>
    ft

    0

!^R Kbd Macro Query:! !^R Query and continue macro execution.
If called from a macro, reads a character:
Space continues execution.
Rubout terminates this repetition of the macro.
Altmode terminates all repetitions of the macro.
. terminates after the end of this repetition of the macro.
^R enters a recursive edit;  when you exit, you are asked again.
^L clears the screen and asks you again.
Anything else exits all macros and is reread as a command.

With an argument, we unconditionally enter a recursive editing level
and proceed with the macro when it is exited.  This is the same as
what we do with no argument if the user were to type ^R Space;
but it is done even when the macro is being defined.!


    ff"n 0f[tyi sink	    !* With arg, temporarily turn of defining!
      0f[tyi source		    !* and when re-running turn off that!
      [..j :i..j Kbd_Macro_Edit    !* so that in either case the ^R reads things!
       0'			    !* which are not part of the macro.!

    fs tyi source"e 0'	    !* if not from inside macro, do nothing!
    [0[1 QKbd_Macro_Query[..j	    !* Want the same string (eq) each time.!
    0fstyi source( 0fs tyi sink(  !* Turn off macros so we can read from kbd.!
    !Read! 
    2,m.i @:fiu1 fiu0		    !* get character, really from tty!
    q0-"e f+ Oread'
    q0-"e 0 Oread'
    )fs tyi sink		    !* Pop the two flags.  Don't use qreg pdl!
    )fs tyi source		    !* because we want them to remain 0 if we quit.!
    q0-32"e 0'		    !* space continues on!
    q0-."e 1u:..m(fq..m/5-1) 0' !* . ends after this, set rpt count to 1.!
    q0-"e 1u:..m(fq..m/5-1)'	    !* For Altmode, set rpt count to 1 so flush all repeats.!
    q0f:"l		    !* Both Rubout and Altmode end this repetition!
      fq:..m(fq..m/5-3)-2	    !* by skipping up to the last char
! u:..m(fq..m/5-2)
      fi '			    !* and reading it, causing macro to be popped.!
    0fs tyi source		    !* Other characters quit macro execution!
    q1fs reread		    !* and are unread.!

!Write Kbd Macro File:! !C Dumps a file of kbd macros.
Give output filename as string argument; default is EMACS.MACROS.
Then type each macro-invoking character that you want dumped.
To dump extend commands, just precede them with ^R Extended Command.
Finish with CR.!

  5,1 fWrite_Macro_File [1	    !* get output filename!
  fq1"E FS UName [1		    !* get login dir!
      :i1 <1>EMACS.MACROS'	    !* to use default!
  [2 [3 f[ B Bind		    !* set up temp buffer!
  0[..F				    !* say we're screwing with buffer!
  -1F[ ^R Inhibit		    !* inhibit display!
  1:<ER1>"E			    !* there's an old version!
    @FTUpdate_old_version
    1M(m.m&_Yes_or_No)"L
      @Y'			    !* yes, pull in old contents!
     "# EC''			    !* else close it back up!
  :EW1 			    !* open output file!
  Z"G PW HK'			    !* copy old contents out right away!
  @FT(Type_macro_commands,_CR_to_finish)

  :i..0			    !* no prompt!
  m.m^R_Extended_Command [X	    !* def of [X]!
  <  M(m.m&_Read_Q-reg) u2	    !* get the command!
    f=2  @;		    !* if CR, then exit!
    Q2 u3			    !* get what it invokes!
    Q3-QX"E			    !* typed [X] or synonym!
      M(m.m &_Read_Command_Name) Full_name_of_command:_ u3
      Q3"E !<!>'		    !* if deleted it, just loop!
      :i2 MM_3		    !* put MM name in 2!
      0@FO..Q2 u3		    !* and def in 3!
      @FT
(continue)_'
    Q3 FP - 101"E		    !* if impure string!
      F~(0,6:G3)!Temp! "E	    !* that starts right!
        G2 15.i 12.i		    !* insert command, crlf!
	G3 15.i 12.i 14.i	    !* insert definition, pagemark!
	PW HK			    !* output buffer to file and kill!
	!<!>''			    !* iterate!
    Q2M(m.m&_Command_Print)	    !* complain!
    FT_not_a_kbd_macro
   >
  :EF				    !* close file!
  FS O File u1			    !* get file's name!
  @FT 1_written.
				    !* print message!
  0FS Echo Active
  0u..H				    !* allow display!
  0

!Read Kbd Macro File:! !C Reads in a file of kbd macros
that was written by Write Kbd Macro File.  Filename is string argument,
defaults to EMACS.MACROS.  Pre-comma arg inhibits printing.!

!* Each page of file looks like:
   Line 1: command name (a q-reg string)
   Line 2: definition (starts with funny Temp string etc)
!
  5,fRead_Macro_File [1	    !* get filename!
  fq1"E FS UName [1		    !* get login dir!
      :i1 <1>EMACS.MACROS'	    !* to use default!
  F[B Bind [2			    !* get a buffer!
  ER1 @Y			    !* read in file!
  0j				    !* go to start!
  < .-z;			    !* quit if at end!
    1@L -2D			    !* go to end of line 1, kill crlf!
    0,. FX2			    !* put line in Q2!
    1@L -2D			    !* next line!
    (0,6F~!Temp!)  (0,1A-14.)"N  !* definition looks wrong!
      :i*IMD_Illegal_Macro_Definition FS ERR'	    !* barf!
    0,.FX3			    !* definition in 3!
    0:G2-M"E			    !* command is MM ---!
       Q3 M.V2'		    !* so define a MM variable!
     "# Q3 u 2'		    !* else put definition on char in 2!
    "E			    !* if allowing trace...!
      Q2 M(m.m&_Command_Print)	    !* tell what we just defined!
      FT,_'
    D >				    !* delete the ^L and iterate!
  "EFT done
'				    !* indicate completion!
  0

!& Check Redefinition:! !S Verify that a certain command can be redefined.
If the char is already defined, asks user for confirmation before
redefining it.  The command is specified with a q-register name in a
string passed as a numeric arg.!

  [1
  q1[0			    !* Q0 gets old definition.!
  q0FP-101"L			    !* a number or pure string, etc!
    200.@ fs^rinit-q0"E '	    !* undefined!
    Q0"E '			    !* Undef slots in dispatch prefix are 0!
    q1M(m.m&_Command_Print)	    !* tell the char!
    Q0-(A FS ^R Init)"E	    !* self-inserting char!
       FT_normally_inserts_itself'
     "# FT_runs_the_function_  [2
        Q0FP+4"E  M(m.m&_Load_BARE)'	    !* funny number, probably builtin!
        Q0M(m.m&_Macro_Name) F"N U2	    !* get name of this def!
	   FT2'
	 "# FT (unknown)''
    FT.
Are_you_sure_you_want_to_redefine_it'
   "# FT Redefine_the_
      (FQ0-7"'L)  (f~(0,6:g0)!Temp!) "E  !* Is a string made by a kbdmacro!
         FT kbd_macro_'
       "# Q0M(m.m&_Macro_Name) F"N [2
          FT impure_string_2_on_'
	"# FT garbage_on_''
      q1M(m.m&_Command_Print)'
  M(m.m&_Yes_or_No) "E FG 0FS ERR'
  0u..H				    !* allow display!
  Hf

!& Command Print:! !S Prettyprints a ^R q-reg given as a string.
Pass the string as a numeric arg.!

  [0 [1
  Q0:F"N F0 U1'	    !* simple q-reg command!
    "# 0:G0 - :"E		    !* start of a ^X command?!
       F~(1,3:G0).X"N OLose'	    !* not really!
       FT^X_			    !* print ^X!
       m(3,FQ0:G0) u1'		    !* compute second char!
      "# OLose''
  q1M(m.m&_Charprint)
  
!Lose!
  FT 0			    !* default -- print original string!
  

!^R End Named Kbd Macro:! !^R Ends macro definition and assigns to a character.
I.e. is ^R End Kbd Macro followed by Name Kbd Macro.  Argument
is as with former.!

  F@M(m.m^R_End_Kbd_Macro)	    !* end it!
  :M(m.m Name_Kbd_Macro)	    !* define it!
 