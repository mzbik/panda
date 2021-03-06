!~Filename~:! !The Teco half of Lisp LEDIT Editing System for TOPS-20 and TENEX.!
LEDIT

!*	LEDIT -- Lisp/Emacs Interface Package

	Revision:	03/03/81 00:55:21	by Zubkoff
	Revision:	03/29/81 00:05:00	by JonL
	Revision:	04/22/81 18:22:03	by Zubkoff
	Revision:	04/23/81 01:06:00	by JonL

	The Teco code in this Library is a highly modified version of
	the Ledit Library written at MIT.  The CMU version was written
	by Leonard N Zubkoff and all bugs and comments relating to this
	version of Ledit should be addressed to Zubkoff @ CMUA or CMUC.
	In general, bugs should be addressed to BUG-LISP@MIT-MC.
!

!& Setup LEDIT Library:! !S Set up LEDIT variables and assign ^R commands. !

!* One may put in their EMACS.INIT
      FS LispT $"N M(M.M Load Library$)LEDIT$ '
   to automatically load this file when Emacs is started
   as an inferior of MacLisp. !

   -1 FO..Q LEDIT_Save_All_Files_Query M.C LEDIT_Save_All_Files_Query
                                   0_=_No_saving.
                                   1_=_Save_All_Files_with_querying.
				  -1_=_Save_current_buffer_without_query,_
				       and_all_other_files_with_querying.

   :IEditor_Type LEDIT	    !* Set Editor Type to LEDIT. !

   F[D File			    !* Save Teco Default Filename. !
   QBuffer_Name[0		    !* Save current Buffer's Name. !
   M(M.M Select_Buffer) *LEDIT*   !* Select or Create *LEDIT* Buffer. !
   FS UName:F6 M.V LEDIT_file_type   !* File Type is User Name
				          so several can share. !
   HKJGLEDIT_file_type	    !* Strip off pre-fixes from UName.!
    zj<-:s.;C0,.K HXLEDIT_file_type -1;>
   HK 
   M(M.M LISP_Mode)		    !* Put *LEDIT* Buffer in LISP Mode. !
   M(M.M Select_Buffer) 0 	    !* Restore previous Buffer. !

   0 M.V LEDIT_Return_to_Superior  !* Temporary Variable needed later. !

   @:I*| M(M.M&_LEDIT_Execute_JCL) | M.V Return_from_Superior_Hook
				    !* Upon return, execute JCL. !

   0FO..Q LEDIT_Setup_Hook[1	    !* See if Setup Hook defined. !
   FQ1"G M1'			    !* If so, run it, otherwise use
				       default key assignments. !

   "# M.M ^R_LEDIT_Save_DEFUN U..z	    !* M-z   !
      M.M ^R_LEDIT_Zap_to_LISP U..Z	    !* M-Z   !
      M.M ^R_LEDIT_Zap_DEFUN_to_LISP U:.X(Z)	    !* C-X Z !
      Q..F U..f			    !* M-f is M-F !
      M.M ^R_LEDIT_Find_Function U..F    !* M-F !
      Q..C U..c			    !* M-c is M-C !
      M.M ^R_LEDIT_COMPLR_Inferior U..C	    !* M-C !
      Q..R U..r			    !* M-r is M-R !
      M.M ^R_LEDIT_ReCompile U..R		    !* M-R !
      Q..S U..s			    !* M-s is M-S !
      M.M ^R_LEDIT_Save_Region U..S	'   !* M-S !

   ]1 ]0 F]D File		    !* Restore saved Registers. !

   FS LispT"N			    !* If Started by Superior on TOPS-20, !
      M(M.M&_LEDIT_Execute_JCL) '  !* then execute any JCL it passed. !

   				    !* Return. !

!& LEDIT Execute JCL:! !S Run on TOPS-20 when Emacs continued by Lisp.
If there is JCL for LEDIT, then execute it.  Otherwise do nothing.!
 1:@< 
   [0 [1			    !* Save Q Registers 0 & 1. !
   F[B Bind			    !* Save Buffer. !
   FJ				    !* Get JCL into Buffer. !
   HX0				    !* Put JCL into Q Register 0. !
   F]B Bind			    !* Restore Buffer.  Do it before we execute
				       the JCL as the JCL may switch Buffers. !
   FS XJName U1		    !* Put Name from JCL into Q Register 1. !
   F~1LEDIT "E M0 '		    !* Execute JCL only if for LEDIT. !
   ]1 ]0 >			    !* Restore Q Registers 0 & 1. !
   				    !* Return. !

!& LEDIT Find File:! !S Find File insuring Logical Device Name expansion. 
The standard Find File function, when invoked by m(m.m Find File)device:
fails to properly expand Logical Device Names, often causing it to select
a bogus buffer name.  This function calls the standard Find File after
forcing the Logical Device Name expansion. !

   [0				    !* Save Q Register 0. !
   F[D File			    !* Save Default File Names. !
   F[I File			    !* Save Input File Names. !
   1:< ER EC>		    !* Open and Close the File Name
				       to set FS I File to the true file. !
   0 FS I F Version		    !* But force Version Number to 0. !
   FS I FileU0			    !* Put true File Name in Q Register 0. !
   F]I File			    !* Restore Input File Names. !
   F]D File			    !* Restore Default File Names. !
   M(M.M Find_File)0	    !* Call standard Find File. !
   ]0				    !* Restore Q Register 0. !
   				    !* Return. !

!^R LEDIT Find Function:! !^R Find Function in Buffer.
This function will find a Lisp Function in the buffer, repeatedly searching
greater and greater portions of the File centering its search about an
approximate location of the Function.  This function will search for a string
of the form ^J, ^M, or ^L followed by "(DEFUN <Function Name> ".  If called
from ^R Mode, the function will prompt for a function name.  The format of the
Teco call is:

<Approximate Location>M(M.M & LEDIT Find Function)<Function Name>

If no <Approximate Location> is given or if the function is called with more
than one argument, then the entire file is searched starting from the
beginning. !

   .[0				    !* Save Point in Q Register 0. !
   FS VB[1			    !* Save Virtual B in Q Register 1. !
   FS VZ[2			    !* Save Virtual Z in Q Register 2. !
   0 FS VB			    !* Expand to search entire file. !
   0 FS VZ			    !* Expand to search entire file. !
   1,FFind_Function:_[3	    !* Put Function Name in Q Register 3. !
   FF-1"E			    !* Execute if exactly one argument... !
      F[4			    !* Save center of search in Q Register 4. !
      1000[5			    !* Radius in Characters to search. !
      <Q4-Q5:J;			    !* Start of this pass of search. !
         <.,Q4+Q5 :FB(DEFUN_3_;	    !* Search for Function, !
	    13,FKA F_
"G '>	    !* returning if found. !
         Q5*3U5>		    !* Search 3 times as far on next pass. !
      ]5 ]4 '			    !* Restore Registers. !
				    !* No Luck -- Search Entire File. !
   J				    !* Start at beginning of Buffer. !
   <:S(DEFUN_3_;		    !* Search for Function, !
      13,FKA F_
"G '>	    !* returning if found. !
				    !* Error if unable to find Function. !
   Q2 FS VZ			    !* Restore Virtual Z. !
   Q1 FS VB			    !* Restore Virtual B. !
   Q0 J				    !* Restore Point. !
   :I* Unable_to_find_function_3  FS Err
   				    !* Return and Print Error Message. !

!^R LEDIT Save Region:! !^R Stores Region between Mark and Point to be returned to Lisp.
Stuff is appended to the contents of the *LEDIT* Buffer.
If given argument (e.g. ctl-U), also selects buffer *LEDIT*. !

   M(M.M &_LEDIT_Save_Region)
   FF"N M(M.M Select_Buffer) *LEDIT* '


!& LEDIT Save Region:! !S Stores Region between Mark and Point to be returned to Lisp.
The Region is appended to the contents of the *LEDIT* Buffer.  A pair of
arguments may be given instead of the Mark, if called from a Teco program. !

    F[VB F[VZ			    !* Save Virtual Bounds. !
    FF"E :,.' "# F' F  FS Boundaries   !* Bind them to the Region. !
    Q..O[3			    !* Save Region in Q Register 3. !
    Q:.B(:I* *LEDIT* M(M.M &_Find_Buffer)+4) [..O
				    !* Select *LEDIT* Buffer. !
    ZJ				    !* Make sure pointer at end of Buffer. !
    G3				    !* Insert Region into *LEDIT* Buffer. !
    0				    !* Nothing changed in Buffer. !
    				    !* Restore Everything and Return. !

!^R LEDIT Save DEFUN:! !^R Stores the Top Level List the Point is in to be returned to Lisp.
If the Point is between Lists, the following List is stored.
If numeric argument is given, then also select buffer *LEDIT*. !

    M(M.M ^R_Mark_DEFUN)	    !* Mark List. !
    M(M.M &_LEDIT_Save_Region)	    !* Save it. !
    FF"N M(M.M Select_Buffer) *LEDIT*'
    				    !* Return. !

!^R LEDIT Zap to LISP:! !^R Returns to LISP
If called with no argument, writes out *LEDIT* buffer to be returned to LISP,
   and save files according to QLEDIT Save All Files Query.
If called with non-zero argument, writes out *LEDIT* buffer only and returns.
If called with zero argument, just goes directly back to LISP
   discarding the changes which were saved instead of zapping them. !
 
    QLEDIT_Save_All_Files_Query[1
    FF"E Q1"L 1,M(M.M ^R_Save_File)'
             Q1"N WM(M.M Save_All_Files)'''

    Q:.B(:I* *LEDIT* M(M.M &_Find_Buffer)+4) [..O
				    !* Select *LEDIT* Buffer. !
    :I1			    !* Clear Q Register 1. !

    Z"N				    !* Write out File only if there is
				       something in the *LEDIT* Buffer. !
       FF"'E+("'N)"N	    !* If either no arg or nonzero arg,
				       then write out *LEDIT* Buffer. !
	  F[D FILE		    !* Save Default File Name. !
	  0FO..Q LEDIT_file_type[3
	  FS MSNameFS DSName      !* File goes on Current Directory. !
	  ET LEDIT-TEMPORARY-FILE.3 
				    !* Set up Output File Name. !
	  EI HP EF		    !* Write Buffer. !
	  :I1_			    !* Put a Blank in Q Register 1. !
	  ]3 F]D FILE '		    !* Restore Default File Name. !
        HK '			    !* Clear Buffer. !
    ]..O			    !* Restore Old Buffer. !

   @:ILEDIT_Return_to_Superior|   !* Macro to Return to Superior. !
      :FR			    !* Clear Mode Line. !
      :I*Z FS Echo Display	    !* Put cursor at bottom of screen. !
      0 FS Echo Char		    !* Dont echo when continued. !
      1			    !* Return to Superior after putting
				       a Blank into the ReScan buffer if there
				       is information for Lisp to read in. !
      M(M.M &_LEDIT_Execute_JCL)   !* Upon return, execute JCL. !
       |			    !* Return. !

   :MLEDIT_Return_to_Superior	    !* Return to Superior. !

!^R LEDIT Zap DEFUN to LISP:! !^R Store DEFUN and Zap to LISP
Takes same arguments as LEDIT Zap to LISP, but saves the
current DEFUN and then zaps it immediately. !

   1M(M.M ^R_Mark_DEFUN)	    !* Mark DEFUN. !
   M(M.M &_LEDIT_Save_Region)	    !* Save it. !
   F@:M(M.M ^R_LEDIT_Zap_to_LISP)	    !* Zap to Lisp. !

!^R LEDIT COMPLR Inferior:! !^R Call COMPLR as Inferior,
or continue it if we have one already.  An argument means to kill fork. !

   0 FO..Q COMPLR_Fork[2	    !* Create COMPLR Fork Handle Varable
				       or get old Fork Handle and put
				       into Q Register 2. !
   FF"N			    !* If there is an Argument, !
      Q2"N -Q2FZ'		    !* and there is a Fork, then Kill Fork. !
         0 UCOMPLR_Fork	    !* Remember that there is no Fork. !
         0			    !* Nothing changed in Buffer. !
          '			    !* Return. !
   :FR				    !* Clear mode line. !
   :I*Z FS Echo Display	    !* Put cursor at bottom of screen. !
   0 FS Echo Char		    !* Dont echo when continued. !
   Q2F"N FZ			    !* Continue old Fork if one exists. !
      0				    !* Nothing changed in Buffer. !
       '			    !* Return. !
   FZ PS:<Maclisp>Complr.Exe M.V COMPLR_Fork !* Start new COMPLR Fork
				                  and save Fork Handle. !
   0				    !* Nothing changed in Buffer. !
   				    !* Return. !

!^R LEDIT ReCompile:! !^R Check for FASL files to ReCompile.
When called with no arguments, takes directory from current default file.
Takes directory as string argument, or prompts when put on a ^R character
and called with numeric argument. !

   [0 [1 [2 [3			    !* Save Q Registers 0, 1, 2, & 3. !
   QBuffer_FilenamesU0	    !* Put Buffer Filenames in Q Register 0. !
   Q0"N ET0'			    !* Use Buffer Filenames as Default. !
   FF"N 5,2F DirectoryU0	    !* Read Directory if appropriate. !
      FQ0"L  '		    !* Rubout past start, return. !
         ET0 '		    !* Set up Default File Names. !
   FS D SNameU2		    !* Put Default Directory in Q Register 2. !
   FS D DeviceU3		    !* Put Default Device in Q Register 3. !
   FTChecking_3:<2>_for_FASL_files_to_ReCompile...
				    !* Print Message. !
   E[ FN E]			    !* Push input file. !
   F[B Bind			    !* Save Buffer. !
   EZ*.FASL			    !* Get Directory Listing of .FASL files
				       (only the highest version numbers). !
   J				    !* Beginning of Buffer. !
   <:S.FASL; 0F -5X1		    !* Put Filename in Q Register 1. !
      2S,			    !* Move to Start of its Creation Date. !
      1:<1,ER1.LSP>"E	    !* Open corresponding .LSP file and
				       compare Creation Dates. !
         (FS FDConvert)-(FS If CDate)"L !* But dont set Reference Date. !
         FT 1_needs_ReCompilation.
 '				    !* Print Message if ReCompilation needed. !
         EC'                 	    !* Close file. !
      "# FT 1.LSP_not_found.
 ' >				    !* Print Message if .LSP file not found. !
   FTDone.
				    !* Print Message. !
   0				    !* Nothing changed in Buffer. !
   				    !* Return. !
