!* -*-TECO-*-!
!* <GERGELY.EMACS>MICRO-DAT.EMACS.16, 24-Oct-80 13:15:30, Edit by GERGELY!
!~Filename~:! !Data Reducing Macroes!
MICRO-DAT

!& Get Date Lines:! !S Strips Files and leaves just the date line and
one after.!
M(M.M Strip_SOS)
M(M.M Fundamental_Mode)
[0 [1 [2 [3			    !* Push some temporary registers!
J<:S

; 3R 2d 13i 10i>
J<.-z;				    !* For the whole file!
  0,1A"D w 2@L'			    !* Get the ascii value for the!
				    !* first character, and the value!
				    !* indicates a digit then skip 2 lines!
  "# 1@K'>			    !* Otherwise kill this line!
@FT
Conversion_ complete0fsechoactive !* Type a message when done to here!
J

!Get Date Fields:! !C Grabs the data fields of interest!
M(M.M &_Get_Date_Lines)	    !* Obvious!
@FT
Starting_Part_Two
0fsechoactive
[a [B 0[c [d				    !* push the temporary registers!
J<.-z;				    !* for the whole file!
  :L 12-FSHPos"G		    !* If less than 12 chars it must!
				    !* be the date!
    0l 3FWFXA 0l 2@K'		    !* get the date and kill the!
				    !* current line and the one after it!
  "# 0l GA 4,32i		    !* OTHERWISE,!
				    !* Insert the date at the head of!
				    !* each record and four spaces!
    3fwl 2fwK			    !* get the time and kill the next!
				    !* two words!

    M(M.M ^R_Delete_Horizontal_Space)	    !* and whatever whitespace!
					    !* there is!
    4,32i			    !* add four spaces!
    \UB qb"G			    !* check to see if a number!
      -1,1a-63"E 1d'"# -d'	    !* check the flag!
      1fwl -1fwl		    !* go to the start of the next field!
      \ub qb"G			    !* as above!
	-1,1a-63"E 1d'"# -d'''"# -4d'	    !* If no numbers then!
				    !* delete the four spaces that we inserted!
    2@K				    !* Kill the current and the!
				    !* following line!
    13i 10i'			    !* add a CRLF!
  .*10/Z-QCF"N+QCUC
  QC:\UD			    !* At every ten percent!
  :IDD0%_Completed		    !* Print a message in the echo area.!
  :I*CDfsechodisp0fsechoactive'    >
J				    !* Done!

!Prepare Data Fields:! !C Puts only the fields defined in the string argument.
The string argument consists of numbers separated by commas, with the
default set to 0=Date, 1=Time, 4=TD1, 5=TD2 .  A
numeric argument specifies the number of fields to process, with the
default set to 9. !
0,fszM(m.M &_Save_For_Undo) Data_Preparation
M(M.M Fundamental_Mode)
[a [B 0[c [d [e [f [g [h [i [J	    !* push the temporary registers!
FF"N '"#9'+1uh		    !* Get the number of fields!
QH*5FSQvectorUE		    !* Setup the vector to hold the fields!
QH*5FSQvectorUF		    !* Setup the vector to hold the!
				    !* number of the field of interest!
1,FFields_to_Use:_UG		    !* QG gets the string argument!
FQG:"G :iG0,1,4,5'		    !* If none given, then use the default!
  f[bbind			    !* Temporary Buffer!
  0ui GG			    !* QI will contain the number of keys!
  J3 F~ALL"E QH UI'		    !* If the word all has been!
				    !* specified then done here!
  "# J<:S; W%i>		    !* Otherwise, Find out the number!
				    !* of keys we will use!
  %I
  J -1uJ			    !* Here we will read in the keys!
  QIF"G<1M(M.M ^R_Read_Word)u:F(%J)>''
  HK -1uJ QIF"G<		    !* And convert them to numbers!
    G(Q:F(%J)) FKC \U:F(QJ)>'
  f]bbind			    !* Done with the temporary buffer!
M(M.M &_Get_Date_Lines)	    !* Obvious!
@FT
Starting_Part_Two
0fsechoactive			    !* Notify user of location in the!
				    !* transaction!
J<.-z;				    !* for the whole file!
  :L 12-FSHPos"G		    !* If less than 12 chars it must!
				    !* be the date!
    0l 3FWFX* U:E(0) 0l 2@K'	    !* get the date and kill the!
				    !* current line and the one after it!
  "# 0UJ			    !* Otherwise...!
    0l				    !* Beginning of the line!
    3M(M.M ^R_Read_Word)U:E(%J)    !* Time is composed of three words!
    QH-2F"G<			    !* Read all the rest of the fields!
      1M(M.M ^R_Read_Word)U:E(%J)>'
    1@L-2@K			    !* To the next line and kill the!
				    !* previous data statement!
    -1uJ
    QI-qH"E			    !* If the user specified all then!
				    !* do this loop which is faster!
      -1uJ QH<G(Q:E(%J)) 2,32i>'
    "# QIF"G<			    !* Othewise pick up on the field!
				    !* numbers that he wants!
      G(Q:E(Q:F(%J))) 2,32i>''
    13i 10i'			    !* Done insert a CRLF!
  .*10/Z-QCF"N+QCUC		    !* Do a pointer calculation!
  QC:\UD			    !* At every ten percent!
  :IDD0%_Completed		    !* Print a message in the echo area.!
  :I*CDfsechodisp0fsechoactive'    >
J				    !* Done!

!^R Read Word:! !^R Read the following word and return.
Negative Arguments make sense.!

[A [B				    !* Push temporary registers!
FF"E 1UA' "#UA'		    !* Default argument is 1!
QA FWL W -QAFWXB 
QB

!Parse DATA Fields:! !C Parses data fields replacing with the users request.
The absolute value of the only argument or the post-comma argument is
the number of lines in a data record (Default: 1).  The pre-comma
argument, if given, sets the maximum number of fields that can be
processed in a data record (Default:50).
    The string argument specifies which fields are requested.  If no
string argument is given then the macro will exit with an error
message.  The string argument is specified by either the word ALL or 
<pos. number of field 1><comma><pos. num. of field 2><comma>....
<comma><pos. num. of last field>.  If a pos. num. is given as zero,
then the date is used.  If no date is found on its own line, then the
default date that is set is 99 99 9999.   The word ALL uses all the
fields in a record with no error processing.!

    fsruntime[9 @FN` FSruntime-q9u9
    F[BBIND
    Q9\ FK+3"L
	3R 0X9 :I99_Seconds.'
    "# 0x9 :I99_Milliseconds.'
    F]bbind
    :I*ARun_completed_in_9fsechodisp
    0fsechoactive`
    0,fsz M(M.M &_Save_For_Undo)Parsing_of_Data_Fields
    JM(M.M Untabify)
    1[A 50[b 0[c 0[d 0[j 0[s	    !* Push temporary registers.!
    0[0 0[1 0[2			    !* Push temporary registers.!
    q..d[..d			    !* Push the default dispatch table.!
    .*5:F..DA____		    !* Make the period a!
				    !* non-delimiter.!
    FF F"N-2:"L UB'	    !* QB gets the maximum number of!
				    !* fields.!
	UA'			    !* QA gets the number of lines in!
				    !* a data record.!
    1,FFields_to_use:_US	    !* QS gets the string argument.!
    FQS :"G :I*CNull_String_Argument.__No_processing_possible.
	fsechodisp
	0fsechoactive		    !* If no string argument then!
				    !* notify the user!
	0'			    !* and quit!
    F[BBIND			    !* Push to a temporary buffer!
    1uI GS 0uS			    !* QI is a counter, QS is a flag!
				    !* signifying 0 if the word ALL!
				    !* was used or no. of fields,!
				    !* otherwise.!
    J 3 F~ALL"E		    !* If the string argument is ALL!
	QB UI 0US'		    !* then set the maximum.!
    "# J<:S; W%IW>		    !* Otherwise set it to the number!
	QIUS'			    !* of delimiters as a first!
				    !* approx.!
    QI+1*5 FSQVECTORUD		    !* QD is the vector of position!
				    !* numbers!
    QSU:D(0)			    !* QD(0) gets the number of!
				    !* fields, 0=ALL!
    J 0UJ
    q:D(0) F"G<			    !* If we have a positive number of fields!
	    1M(M.M ^R_READ_WORD)U:D(%J)    !* read a word!
	    @F-Z;>		    !* Check to see if at end of buffer!
	QJ-q:D(0) "N QJ U:D(0)''    !* Update the number of fields!
				    !* then.!
    HK 0uj 0us			    !* QS will hold the maximum pos.!
				    !* number specified!
    Q:D(0) F"G<			    !* If not ALL, then for each entry!
	    G(Q:D(%J)) FKC \U:D(QJ) !* Convert to a number!
	    Q:D(QJ)-QSF"G+QS US'    !* Compute the maximum!
	    >'
    "# QBUS'			    !* If ALL then the maximum is QB!
    F]BBIND			    !* Pop back to our data buffer!

    QS-QB"G QB:\US		    !* Notify if maximum is too big!
	:IARequested_fields_greater_than_S.__Resetting_field_requests.
	fsechodisp 0fsechoactive
	QBUS'
    QS+1*5 FSQVECTORUC		    !* QC is the fields themselves!
    QB-QS"E 0US'		    !* Set QS to zero if at maximum.!
    J < @F0123456789-_.
	L			    !* Check for unwanted characters!
	.-z;			    !* If at the end of the file, quit!
	0,1a-47"E FShposition-4 :"G
		:L fshposition-11 "L	    !* A date field!
		   0L <W:FB/; -d 32i>
		   :L'''
	0@F FSboundaries	    !* Close bounds to beginning of!
				    !* the line!
	-:@F0123456789L	    !* Check to the beginning of the!
				    !* line for a number!
	.-B"N ZJ'		    !* If at the beginning then change!
				    !* pointer location!
	0,FSZFSBoundaries	    !* Open the bounds.!
	W:K			    !* Kill to the end of the line!
	FSHPosition:"G 1K'	    !* If a blank line then kill!
        >
				    !* Remove unwanted characters!
				    !* Section!
    J <.-z; :FB_"L
	    <:FB__; -D 1:R>'
	1@L>
    J <:S._; -:C; 48i>		    !* Replace period sp by .0!
    J <:S_
	; 2r -d>		    !* Delete trailing blanks!
    J <.-z; 0l
	:FB01234567890.-"E 0l 1@k'
	"# 1@L'>
    J 0,1a-32"E 1d'		    !* Delete the first blank if it!
				    !* exists!

				    !* PASS TWO SECTION!

    :I*CPass_One_Complete.AStarting_Pass_Two.fsechodisp
    0fsechoactive
    J 0,1a-32"E 1d'		    !* If the first thing in the file!
				    !* is a space then delete it.!
    :I*99_99_9999U:C(0)	    !* Default date!
    J <.-z"E OEND'
	:L fshposition-11 "L	    !* If less than 10 characters on a!
				    !* line, then it must be the date.!
	    0l <:FB-; -d 32i>	    !* Replace minus by spaces!
	    0l :X* U:C(0)	    !* Stuff the date in QC(0)!
	    0l 1@K		    !* Kill the whole thing!
	    '
	"# 0l 0UJ
	    QA@F  FSBoundaries    !* Narrow the bounds to encompass!
				    !* a single data record.!
	    J QSF"G'"# W'<
		1M(M.M ^R_Read_Word)U:C(%J)	    !* Read a field!
		qs-qj"N		    !* If the last field then skip!
		   :S"E	    !* If at the end of the record too!
				    !* early then!
		      QSF"E QB'"#'-QJ F"G<
				    !* Nullify the rest of the fields!
			  :I*U:C(%J)>'
		      QS"N %0	    !* Q0 gets the error count!
			W:I****_SHORT_RECORD_***U:C(QS)    !* Insert error!
			'	    !* message!
		   0;''
		"# 0;'
		>
	    HK 0UJ
	    Q:D(0) F"G<		    !* If not ALL!
		   g(Q:C(Q:D(%J)))  !* Insert the field!
		   FK; 2,32i	    !* Put in two spaces!
		   >'
	    "# W -1UJ
		QB F"G<		    !* Insert all the fields!
		      G(Q:C(%J))    !* Insert the fields in order!
		      FK; W2,32I    !* Put in two spaces if anything there.!
		      >'
		'
	    W -:S_:R W:K	    !* Strip trailing blanks!
	    13i 10i		    !* Insert CRLF!
	    '
	0,FSZFSBoundaries	    !* Open bounds to full!
	!END!
	.*10/Z-Q1 F"N+q1u1
	    q1:\u2
	    :I*C20%_Completed.fsechodisp
	    0fsechoactive'
	.-z;			    !* If the end then quit!
	.UJ :S"E .,zK
	    0,0a-12"N 13I 10I'
	    OEND' qjj
	>
    J q0"G q0:\U0		    !* In case of errors!
	:I*A0_Error(s)_have_occurred_[Noted_by:__***_SHORT_RECORD_***].(
	    )fsechodisp0fsechoactive
	'
    

!*
/ Local Modes: \
/ MM Compile: 1:<M(M.M^R Date Edit)>
M(M.M^R Save File)
M(M.MGenerate Library)MICRO-DATMICRO-DAT \
/ End: \
!
    