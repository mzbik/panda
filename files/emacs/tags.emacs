!* -*-TECO-*-!
!* <EMACS>TAGS.EMACS.150, 23-Mar-83 13:52:32, Edit by GERGELY!

!* The variable QTag Table contains the tag table.
It has an entry for each file known.  Entries are terminated by ^_ CRLF.
The entry's first line holds the filename as FS D FILE would return it.
The next line contains the number of characters in the part,
including the filenames and the size and the ^_ CRLF at the end.
The first tag is described on the next line.
Each tag is described on a separate line.  The line ends with
a rubout followed by the character position of the tag in the file
(approximate only).  Before the rubout comes the tag, in context.
It should be possible to find the tag by searching for a line that
begins with that text.  For example, "(DEFUN FOO 534". !

!~Filename~:! !Jump directly to any tag, in any file.!
TAGS

!& File TAGS Loaded:! !S If this exists, TAGS is loaded.!
 Intentionally not left blank.

!& Setup Tags Library:! !S Set up TAGS's ^R commands.
^R Find Tag is put on Meta-Period.
^R Tags Continue Search or Query Replace is put on Control-period.
But if QTags Setup Hook is nonzero, it is run instead.!
    0FO..Q Tags_Setup_Hook[0
    FQ0"G M0 '
    M.M ^R_Find_Tag U...
    M.M ^R_Tags_Continue_Search_or_Query_Replace U..
    0M.C Tags_Search_or_Query_Replace<0=Search,_0=None,_>0=Query_Replace
    6*5 FS Q Vector M.C Tags_Search/Query_String!*
    !Parameters_for_continuing_a_search_or_query_replace

    f[D File etDSK:TAGS
    fs HSname fsDSnamew
    fs XUname fsDFN1w
    e?"e			    !* Does user have a private tag table?!
	er fs I File u1 ec	    !* If so, open it to find its real name!
				    !* (may be a link)!
	m(m.m Visit_Tag_Table)1 !* Visit it under its real name so List!
				    !* Buffers wins!
	@ft TAGS_file_1_loaded.
	'
    

!Find Tag:! !C Visit a tag (string argument).
Jump to the definition of the tag, switching files if necessary.
If we do not switch files, we leave behind a mark.
A string pointer to the tag name may be given as a
prefix arg.  A precomma arg says look for a second occurrence
of the tag (search tag table from previous tag, not beginning)!

    F"E W :I*' [0	    !* Q0 gets tag name.!
    0FO..QTag_Table_Buffer [1	    !* Q1 gets tag table.!
    Q1"E  :I*No_tag_table_loaded FS ERR'
    [2 [3 [5 [6  F[D FIL Q1[..O    !* ### Watch out ---	    ###	!
				    !* ### last 2 explicitly popped ###	!
    "E J'			    !* If no precomma arg,		!
				    !*   start from top of tag table.	!
    < :s0"e		    !* If can't find string,...		!
            ]..O		    !*    Restore buffer and punt	!
            "e :i*Tag_not_known'"# :i*No_more_such_tags' fserr'
      "# :fb"l r 0;''	    !* If it's in valid area, stop	!
    >				    !* Loop if more text and no success	!
    q0 m.v Last_Tag		    !* We won -- save tag name for later!
    .u2				    !* Save end of tag text in q2	!
    0L 1A-"E C' .,Q2X0	    !* Q0 gets tag in context, sans preceding CRLF or ^L.!
    Q2J C \U2			    !* Q2 gets char pos of definition in file.!

    .U3 J < .+(L \(-L))-Q3;	    !* Look at each file; stop if file contains this tag.!
	    .+(L \)J >		    !* Else skip past this file.!
    Q3( :X3 ET3 FS D FILEU3	    !* Q3 gets canonicalized filename.! 
	)J
    -2FSQPUN			    !* Pop ..O and FS D FILE.!
    QBuffer_Filenames[4
    Q4"E :I4'			    !* Compare with visited filename.!
    F~43"N			    !* If not same file as now, must switch.!
      0FO..Q Tags_Find_File"N
        M(M.M Find_File)3'
      "# 1,M(M.M Visit_File)3'  !* Select the desired file.!
      '
    "# .: QAuto_Push_Point_NotificationFS ECHO OUT
       0FSECHO ACT'		    !* If staying in same file, push point and notify.!
    0FSVBW 0FSVZ		    !* Flush any narrowing down in case tag is outside it.!
    Q2:J"E ZJ'			    !* Go to approximate position of tag.!
    .U2
    1000U3			    !* Fly a search pattern for it, searching!
				    !* widening areas around approx pos.!
    < Q2-Q3:J;			    !* Search pattern failed if reached start of file.!
      < .,Q2+Q3 :FB0;	    !* See if this part of file contains the tag,!
	13,FKA F_
"G '>   !* following a CRLF or a ^L.  If so, we found it.!
      Q3*3U3>			    !* Else search 3 times as far next pass.!
    J < :S0;		    !* Eventually, search the entire file.!
	13,FKA F_
"G '>
    :I*Tag_has_been_deleted FS ERR

!& Find Tag Display:! !S Find tag and choose a new window cleverly.
Passes numeric args on to Find Tag.!
    FM(M.M Find_Tag)		    !* Find the tag.!
    .( 0@L
    QComment_Start[1		    !* Choose the window by moving up!
    QPage_Delimiter[2
    Q1"N < 0@L B-.; -@L		    !* till we find a non-blank non-comment line.!
	   @F	_R
	   1A-13"N FQ1 F~1"N
	     0@L :S2	    !* Is this line a page starter?  If so, keep it on screen.!
	     FKC FK"E @L' 0;''>	    !* Else move down to the first blank line below it!
	 .U1 @F	_
R				    !* then moving down over blank lines!
	 .-Q1"N -@L'		    !* back up (upward) over one of them though.!
	 '
    -1f[^R inhibitw 0@v	    !* Make sure fs ^R Vpos is valid!
    0 @:f			    !* Position the display there if possible!
    )J
    0 

!^R Find Key Tag:! !^R Finds the source of the function which a character runs.
The command character is read from the terminal.
Meta and other bit-prefixes, as well as character-prefixes
(e.g. C-X) will be processed.  So you can type C-X C-B to see the
macro for C-X C-B.!
     m(m.m &_Read_Q-reg_Name)[0
    q0 m(m.m &_Macro_Get_Full_Name) :m(m.m &_Find_Tag_Display)

!^R Find Tag:! !^R Go to tag (read name from TTY).
The tag must be listed in the Tag Table.  See M-X Visit Tag Table.
With argument, visits next definition of last tag specified.!

    [0 [1 0[2
    FF"N QLast_TagU0
	1,Q0 :M(M.M &_Find_Tag_Display)'
    0FO..Q Tag_Table_BufferU0	    !* If there is no tag table buffer,!
    Q0FP"N 0U0'			    !* or it has been killed,!
    Q0"E			    !* we must visit a new one.!
  !NewTagFile!
      @M(M.M &_Visit_Tag_Table)    !* Read name from tty and visit it.!
      0FO..Q Tag_Table_Buffer"E 0''
    QTag_Table_FilenamesF[D FILE
    FS DFN1:F6(F]D FILE)U0	    !* Prompt should include name of tag table file.!
    fslisten"n
     :fi-"e oAltNoPrompt''
    :i*C Tag_(0):_fsechodis   !* Prompt the guy!
  !AltNoPrompt!
    :fi-"e			    !* If an ALT, visit new tag table.!
      fiw oNewTagFile'
    M(M.M &_Read_Line) Tag_(0):_U0    !* Read tag name, prompt already printed.!
    FQ0-1"L 0'
    Q0:M(M.M &_Find_Tag_Display)   !* Go to its definition.!

!^R Add Tag:! !^R Add tag on current line to tag table.
Point should be after enough information to identify the
tag(s) on the line.!
    0X*[0			    !* Push the info on this tag:  appearance!
    .[1				    !* and position in file.!
    QTag_Table_Buffer[..O	    !* Look at tag table,!
    QBuffer_Filenames M(M.M &_Tag_Table_Find_File)[2	    !* Find this file's entry.!
    Q2"L :I*File_not_listed_in_tag_table FS ERR'
    Q2J 2L			    !* Go to before 1st tag's line.!
    .,( G0 127I Q1\ I
				    !* Add the info on the new tag.!
	.) +(			    !* How many chars did we add?!
    Q2J L \)(0K)\		    !* Add that much to entry length field,!
    5-.+(0L.),0I		    !* which must be padded out to 5 digits.!
    0

!& Tag Table Find File:! !S Find a file's entry in the tag table.
The filenames (a la FS D FILE) should be a numeric argument.
The value is that address of the entry in the tag table,
or -1 if there is no entry for the file.  The tag table
should be the selected buffer in TECO.!

    [0 [1
    J < .-Z"E -1'		    !* Reached end of table => not found.!
	:X0 F~10"E .'	    !* Filename matches => found entry.!
	.+(L \)J >		    !* Else skip past this entry.!

!& Visit Tag Table:! !S Select a tag table file (string argument).
A tag table file is an index to the "tags" (labels, functions, etc.)
in one or more files of code, and allows the use of
^R Find Tag to go directly to any one of them.
See also the TAGS program which makes tag table files.
A numeric argument sets Tags Find File, which if nonzero
makes TAGS switch files using separate buffers.!


    FF"N M.V Tags_Find_File'
    1F[FNAM SY [1
    QBuffer_Filenames F"E W' F[D FILE    !* If no tag table already, set defaults!
				    !* as they are offered by ^R Find Tag.!
    0FO..Q Tag_Table_Filenames F"N FS D FILE'
    ET_TAGS
    5,4F Tag_TableU0		    !* Read arg before changing Q1, in case arg is ^]1.!
    ET0  FS D FILEU1
    1F[REREAD			    !* Prevent any alteration of mode line.!
    :I* *TAGS*[2
    1,Q2 M(M.M &_Find_Buffer)[3    !* Find the TAGS buffer index.!
    Q3"L			    !* If no TAGS buffer exists yet, create one.!
      Q2 M(M.M &_Create_Buffer) U3'
    0 M.V Tag_Table_Buffer	    !* We don't have a tag table, unless this visit wins.!
    Q:.B(Q3+4!*bufbuf!) [..O	    !* Select that buffer temporarily.!
    Q1 M.V Tag_Table_Filenames
    Q1 U:.B(Q3+2!*bufvis!)	    !* Remember Tag table name in buffer *TAGS*.!
    Q1 U:.B(Q3+5!*buftdf!)

    ER @Y			    !* Get name of tag file, defaulting FN2 to TAGS.!
				    !* Default FN1 and SNAME to old tag table.!
    0FS Modifw 0FS X Modif
    Q..O UTag_Table_Buffer	    !* Remember TECO buffer holding tag table.!
    				    !* This variable nonzero says we have a tag table.!

!? Save Tag Table:! !C Write out the tag table if it has been changed.!

    0FO..Q Tag_Table_BufferF"N [..O'
	"# '
    FS Modified"N
      QTag_Table_FilenamesF[D FILE
      0F[VZ 0F[VB
      E\  FN E^
      EI HP EF
      0FS MODIFIEDW 0FSX MODIF'
    

!Next File:! !C Select the next file in the tags table.
Each of the files described by the selected tags table
is visited one by one if you repeat this macro.
With an argument, we visit the first file in the tag table.
With any pre-comma arg (eg 1,) we returns -1 if successful or
0 if there were no more files (otherwise an error).
A pre-comma arg with the 2 bit set (eg 2,) will use
*Tags Search* buffer if file not in core and qTags Find File
is not in the set {0,2} -- good for things like Tag Search which tend
to run out of core easily for large tags file searches!

    QTag_Table_Buffer[..O		!* Bind buffer to tag table	    !
    FF&1"N J'			!* With explicit 2nd arg,	    !
					!*  select the first file.	    !
      "# :S"L L Z-."N O Win''	!* Otherwise select the next file.  !
	 "N 0'			!* Return 0 quietly if so asked	    !
	 :I*No_more_files FS ERR'	!* Complain if no precomma arg	    !
 !Win!					!* Come here if another file to do  !
    :X*(]..O)[1				!* Go back to selected EMACS buffer,!
					!*  saving file's name.!
    0fo..Q Tags_Find_File"e		!* If not Find File mode,...	    !
        1,m(m.m Visit_File)1'	!*  and then visit the file	    !
    "#					!* Else (if Tags Find File)	    !
      (&2)*(0fo..Q Tags_Find_File-2)"n	!*  If 2, bit is set		    !
	f[dfilew et1 fsdfile(	!*   Get filename in standard form  !
        f]dfile			!*   with some help from et	    !
	) m(m.m &_Find_File)f"e	!*   If no such buffer, get temp    !
	    :i* *Tags_Search*  m(m.m Select_Buffer)
            1,m(m.m Visit_File)1'   !*    Select the desired file.	    !
        "# m(m.m Select_Buffer)	!*   Else use buffer if we can,	    !
	    0fsvbw 0fsvz''		!*    widening its buffer bounds... !
      "#				!*  Else			    !
        m(m.m Find_File)1		!*   Find the file normally	    !
        0fsvbw 0fsvz''		!*   and widen bounds just in case  !
    "n -1'				!* Return a win value if requested  !

!Tags Search:! !C Search through all files in a Tags file.
Sets up ^R Tags Continue Search or Query Replace to continue the search to the next
occurance of the string through all the files in the current
tags table.  The default for the incremental search is also set to the search
string given for this function.  If no more files left, beeps and returns to
original buffer.  Example: MMTags Search$FOO$$ !

    1,FString:_  U:Tags_Search/Query_String(0)	!* Save search string!
    qBuffer_Name  U:Tags_Search/Query_String(4)	!* Save buffer name!
    -1 fo..q Mode_2U:Tags_Search/Query_String(5)	!* Save mode 2 var.!
    -1UTags_Search_or_Query_Replace	!* Say we are doing a search!

    Q:Tags_Search/Query_String(0) [2
    qSearch_Default_Ring [..o		!* New search char, save prev default.!
    fq(.fsword)-1"G
	F~(.fsword)2"E ]..O WOSET-UP'
	"# 5c .-z"e j'''		!* If previous default is worth!
					!* saving, push it!
    q2,.fsword				!* Store current (new) default!
    ]..o

!SET-UP!
    Q:Tags_Search/Query_String(5)"G 0M(M.M Mode_2)'
				    !* Turn off mode 2 temporarily!
    2,1m(m.m Next_File)WJ	    !* Jump to top of tags table and to the!
    WF			    !* top of that file!
    :M(M.M ^R_Tags_Continue_Search_or_Query_Replace)


!Tags Query Replace:! !C Query Replace through all files in a Tags file.
Takes two string arguments just like Query Replace.
Sets up ^R Tags Continue Search or Query Replace to continue the Query Replace to the next
occurance of the string through all the files in the current
tags table, in case you exit the Query Replace before it is finished.
"" means replace all the remaining instances in the current file only.
If no more files left, beeps and returns to the original buffer.!

    1,FReplace:_ U:Tags_Search/Query_String(0)
    1,Fby:_      U:Tags_Search/Query_String(1)
    qBuffer_Name  U:Tags_Search/Query_String(4)	!* Save buffer name!
    -1 fo..q Mode_2U:Tags_Search/Query_String(5)	!* Save mode 2 var.!
    1 UTags_Search_or_Query_Replace	!* Set flag to query replace!

    Q:Tags_Search/Query_String(5)"G 0M(M.M Mode_2)'
					!* Turn off mode 2 temporarily!
    2,1m(m.m Next_File)WJ		!* Jump to the top of the tags table!
    WF				!* and to the top of that file!

					!* Put the arguments as strings in the!
					!* right place!
    :\[4 FF&2"E :I4'"# :I44,' Q4 U:Tags_Search/Query_String(2)
    :\[3 FF&1"E :I3'             Q3 U:Tags_Search/Query_String(3)
    ]3 ]4
    :M(M.M ^R_Tags_Continue_Search_or_Query_Replace)


!^R Tags Continue Search or Query Replace:! !^R Continues either a Tags Search or a Tags Query Replace.!

!*
This function requires the following variables to be available:
Tags Search or Query Replace	= <0, Tags Search in progress
				   0, Nothing currently in progress
				  >0, Tags Query Replace in progress

Tags Search/Query String, a qvector containing
		(0) Either the search string or the string to replace
		(1) The Replacement string (If Query Replace)
		(2) Pre-Comma Argument (If Query Replace)
		(3) Post-Comma Argument (If Query Replace)
		(4) Buffer Name at time of search or query.
		(5) Value of the variable Mode 2
!

    0 FO ..Q Tags_Search_or_Query_Replace[9	    !* Q9:  Flag type!
    Q9 "E
	:I*CNo_Search_or_Query_Replace_in_effect. fsechodisp
	0fsechoactive wFG '

    Q:Tags_Search/Query_String(0) [0
    Q:Tags_Search/Query_String(1) [1
    Q:Tags_Search/Query_String(2) [2
    Q:Tags_Search/Query_String(3) [3
    Q:Tags_Search/Query_String(4) [4
    Q:Tags_Search/Query_String(5) [5

    1 fo..Q Tags_Search_Verbose"n
	QBuffer_Filenames[F FQF:"G :IF???'
	:I*CF fsechodisp 0fsechoactive
	]F'

    < Q9"L W :S0"l :I*A_Tags_Search_succeeded.  fsechodisp
		0fs echo actW0;''
	"# W 23M(M.M Query_Replace)0 1;'

	-1 FO ..Q Mode_2"G 0M(M.M Mode_2)'
	2,m(m.m Next_File)"e
	    m(m.m Select_Buffer)4
	    0 UTags_Search_or_Query_Replace
	    Q9 "L :I*A_Tags_Search_failed.  fsechodisp 0fsechoact'
	    FG W0;'
	"# j Wf
	    1 fo..Q Tags_Search_Verbose"n
		qBuffer_Filenames[F
		:I*AFfsechodisp 0fsechoactive
		]F
		''
	>
    Q5 F"G M(M.M Mode_2)'
    


!Tags File List:! !C Insert list of names of the files in the tag table.
The list comes from the currently-visited tag table,
and is sorted alphabetically.  Point is left before and mark after.!

    .f[VB fsz-.f[VZ		    !* Set virtual buffer boundaries!
    GTag_Table_Buffer		    !* Copy the tags file!
    J < .-z; L
        .u1 S L q1,.k>	    !* Delete all but the file names!
      :L  L 		    !* Sort it!
    Z:W J H			    !* Set point and mark around it, then widen!

!List Tags:! !C List all tags in current or specified file.
Specify file with a string arg.  All files in the tag table
which contain that argument string will be listed.!

    QTag_Table_Buffer[..O
    5,FFile:_[1		    !* Q1 gets string arg,!
    fq1"e fs d fileu1'		    !* or current file if arg is null.!
    .[2  fn q2j
    j < :fb1"n		    !* Is this the file we are interested in?!
	  0l .( .f[vb s fsz-.f[vz
		m(m.m Tags_Apropos)w )j
	  f]vz  f]vb'
	:s; l >
    

!Tags Apropos:! !C List all known tags whose names contain STRINGARG.!
   
    1,FSubstring:_[.1	    !* .1: STRINGARG.!
    fq.1"e :i.1'		    !* arg null => use a rubout, so we find every tag.!
    0[.4			    !* Filename, or 0 if filename already mentioned.!
    0[.3			    !* File's language.!
    m.m &_Maybe_Flush_Output[f	    !* F: & Maybe Flush.!
    QTag_Table_Buffer[..O
    .[.5  fn q.5j		    !* Preserve *TAGS* buffer's pointer.!
    bj

    <				    !* Find all tagnames matching string.!
      mf 1;			    !* Maybe flush output.!
      ."n :s.1; '	    !* Find next tagname containing string, !
				    !* ...or next source file.!
      ,0a-"E		    !* Found a new source file, or eof.!
	.-b"n l'
	z-."e 1;'		    !* If eof, return.!
	:x.4			    !* save its name.!
	l s, :x.3 l		    !* Save its language.  Move to next line.!
	!<!>'
				    !* Found a matching tagname.!
      :fb"e !<!>'		    !* Don't accept a match on the file-position number.!
      fq.4"g			    !* If this is first tag in this source file,!
	ft
.4__(.3)

				    !* Type filename, language and CRLFs.!
	0u.4'			    !* Prevent it from happening twice.!
      ft__			    !* Indent tagnames from filenames.!
      r 0@f t			    !* Type the whole defining line or as much as is known.!
      l				    !* Skip it so search won't find same tag again.!
      ft
				    !* And CRLF.!
      >				    !* Go find next match.!
    ft
Done
    0

!Tags Rescan:! !C Recompute the tag table and reload it.!

    m(m.mSave_All_Files)	    !* Makes sure table is made using latest versions.!
    QTag_Table_Filenames[0	    !* Tell DDT to regenerate the tag table.!
    fsOSTeco"e @:TAGS_0
    $P'
    "# :i*0
fsForkJCLw	    !* give filename to TAGS as command line!
       -(@fzEMACS:TAGS.EXE)fz'    !* create fork, run tags, kill fork!
    QTag_Table_Buffer[..O	    !* Now read in the updated table.!
    F[D FILE ER0 @Y
    0FS MODIFIED 0

!Args:! !View Arglist:! !C Print a function's arglist and comments.
The function is specified as a string argument.
The line on which the function is defined is printed
together with any preceding lines of comments.
Usually this will describe a subroutine and its arguments and results.!

    [1[2[3[4 [Previous_Buffer	    !* save regs!
    QTag_Table_Filenamesf[d file
    fs dfn1:f6(f]d file)[0	    !* Prompt should include name of tag table file.!
    1,fArgs_for_function_(0):_u1
    qBuffer_Nameu2 .u3	    !* Save current buffer name and point!
    fn q2m(m.mSelect_Buffer) q3j	    !* restore it later.!
    m.vTags_Find_File
    1[Tags_Find_File		    !* Don't clobber the buffer!
    m(m.mFind_Tag)1	    !* Find the tag!
    qComment_Startu4
    0l .u1			    !* Move to end of description!
    <	b-.; -l			    !* Move back line by line until one!
	fq4 f=4"n 1a-15."n 1;''	    !* starts with other than ; or CR!
	>			    !* That's the one we don't want to include.!
    l <	2 f=
"n 1;' l >			    !* Omit leading blank lines!
    .,q1t q1j t			    !* Type comments, and also the defining line.!
    

!What Tag?:! !C Name of current function from tag table.
Print in the echo area the name of the closest preceding tag.!

    .[1 f[s string [3 0[4	    !* q1 gets current location.!
    0fo..qtag_table_buffer [..o    !* select tags buffer.!
    qbuffer_filenames m(m.m &_tag_table_find_file)[2	    !* find this file.!
    q2"l :i*file_not_listed_in_tag_table fs err'
    q2j 2l
    <,1a - "e 0;'	    !* done when get to line with ^_.!
       fb \u3		    !* find the location.!
       q3-q1"l q3-q4"g		    !* If this tag before point but better than best so far!
         q3u4 .u2''		    !* Remember it as best (q4) and location in tag table(q2).!
       l>
    q2j -fwl r ^ 0t		    !* Type up to but not including the rubout, in echo area.!
    0FS ECHO ACT		    !* Don't erase when we return to ^R.!

!Tags Occur:!!Tags List Matching Lines:! !C Displays every occurrence of the string arg. from each tag file.
Two arguments may be given to this function.  The post-comma argument is the
number of lines to display around each occurrence.  If a pre-comma argument is
given, then the filename of the tag file will precede on each occurrence line.
Otherwise it is listed only when a file having a match is first entered.
    The buffer *Tags Search is used for the search.!

    1,f Pattern:_ [P			!* QP:  The pattern to search for!
    -1 fo..q Mode_2[M			!* QM:  Contains the mode2 deft if any!
    QM"G 0M(M.M Mode_2)'		!* Turn off mode 2 temporarily!
    QPrevious_Buffer[A		!* QA:  The previous buffer!
    QBuffer_Name[b			!* QB:  The current buffer name!
    FF&2"'N[F W[G			!* QF:  Filename flag!
					!* QG:  The current tag file name!
      [L FF"E 0UL'		!* QL:  # of lines to show!
    0[0					!* Q0:  Temporary storage.  Nonzero if!
					!* the filename has already been shown!
    M(M.M Select_Buffer)*Tags_Search*	!* Use this buffer always!
    M(M.M ^R_Buffer_Not_Modified)
    2,1 M(M.M Next_file)WJ		!* Get the first file!
    <QFu0 QBuffer_FilenamesUG fqG:"G :IG???' !<<<!:IG>>>G
	<:SP;
	    QF"'N+(Q0"'E) "N FTG

		Q0"E-1U0''
	    -QLT QL+1T
	    QL"N ft---
		'
	    1L>
	2, M(M.M Next_File);>
    M(M.M Select_Buffer)B
    QAUPrevious_Buffer
    FT Done

    QMF"G M(M.M Mode_2)'
    0fs echoactive
    

!Tags How Many:!!Tags Count Occurrences:! !C Count occurrences of a pattern in all tag files.
The string argument is the pattern.
    The buffer *Tags Search is used for the search.!

    1,f Pattern:_ [P			!* QP:  The pattern to search for!
    -1 fo..q Mode_2[M			!* QM:  Contains the mode2 deft if any!
    QM"G 0M(M.M Mode_2)'		!* Turn off mode 2 temporarily!
    QPrevious_Buffer[A		!* QA:  The previous buffer!
    QBuffer_Name[b			!* QB:  The current buffer name!
    M(M.M Select_Buffer)*Tags_Search*	!* Use this buffer always!
    M(M.M ^R_Buffer_Not_Modified)
    2,1 M(M.M Next_file)WJ		!* Get the first file!
    0[T					!* QT:  Total Occurrences!
    0[I					!* QI:  Occurrences in the file!
    :I*[F				!* QF:  The file name!
    0[0					!* Q0:  The number of files!
    0[1					!* Q1:  The total number of files!
    < 0UI %1
	<:SP; %I>
	QI"G QI+QT UT
	    %0
	    QI:= FT_occurrence
	    QBuffer_FilenamesUF FQF:"G :IF???'
	    QI-1"E ft_' "# FTs'
	    FT_in_F.
'
	2,M(M.M Next_File);>
    FT Done

    M(M.M Select_Buffer)B
    QAUPrevious_Buffer
    QMF"G M(M.M Mode_2)'
    QT :\ UF
    Q0 :\ U0
    Q1 :\ U1
    :IF"P"_occurred_F_times,_in_0_of_1_files.
    :I*CF fsechodisp 0fsechoactive
    


!Tags Keep Lines:!!Tags Delete Non-Matching Lines:! !C Delete all lines that do not match the pattern from all tag files.
The string argument is the pattern.
    The buffer *Tags Search is used for the search.!

    1,f Pattern:_ [P			!* QP:  The pattern to search for!
    -1 fo..q Mode_2[M			!* QM:  Contains the mode2 deft if any!
    QM"G 0M(M.M Mode_2)'		!* Turn off mode 2 temporarily!
    QPrevious_Buffer[A		!* QA:  The previous buffer!
    QBuffer_Name[b			!* QB:  The current buffer name!
    M(M.M Select_Buffer)*Tags_Search*	!* Use this buffer always!
    M(M.M ^R_Buffer_Not_Modified)
    2,1 M(M.M Next_file)WJ		!* Get the first file!
    :I*[0
    < M(M.M Delete_Non-Matching_Lines)P
	H@FX0
	M(M.M ^R_Buffer_Not_Modified)
	2,M(M.M Next_File);>
    M(M.M Select_Buffer)B
    QAUPrevious_Buffer
    QMF"G M(M.M Mode_2)'
    G0
    

!Tags Flush Lines:!!Tags Delete Matching Lines:! !C Delete all lines that match the pattern from all tag files.
The string argument is the pattern.
    The buffer *Tags Search is used for the search.!

    1,f Pattern:_ [P			!* QP:  The pattern to search for!
    -1 fo..q Mode_2[M			!* QM:  Contains the mode2 deft if any!
    QM"G 0M(M.M Mode_2)'		!* Turn off mode 2 temporarily!
    QPrevious_Buffer[A		!* QA:  The previous buffer!
    QBuffer_Name[b			!* QB:  The current buffer name!
    M(M.M Select_Buffer)*Tags_Search*	!* Use this buffer always!
    M(M.M ^R_Buffer_Not_Modified)
    2,1 M(M.M Next_file)WJ		!* Get the first file!
    :I*[0
    < M(M.M Delete_Matching_Lines)P
	H@FX0
	M(M.M ^R_Buffer_Not_Modified)
	2,M(M.M Next_File);>
    M(M.M Select_Buffer)B
    QAUPrevious_Buffer
    QMF"G M(M.M Mode_2)'
    G0
    


!* 
/ Local Modes: \
/ MM Compile: 1:<M(M.MDate Edit)>
M(M.M^R Save File)
M(M.MGenerate Library)TAGSTAGS
1:<M(M.MDelete File)TAGS.COMPRS>W \
/ End: \
!  