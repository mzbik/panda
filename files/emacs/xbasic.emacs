!& Make T Variable:! !C create a variable in the T buffer!
 [0 [1

 U0				    !* Get variable name in Q0 !
 @:FOT0U1			    !* Find it, or where to put if not found !

 QT[..O				    !* Symbol table lives in T !
 Q1  *5J			    !* Go to right place !
 Q1"L 10 F(,0I)R'		    !* Make space if necessary.!
 Q0,.FSWORD			    !* Install string containing variable name!
 ,.+5 FSWORD			    !* Put in the value.!
 Q1



!& Get Args:! !C !

 [1 0[2 [3
 < 1D @:F,]FX1		    !* Rid of open brak or comma, get value.!
   .-Z"E :i*Bad_Macro_ArgumentFG '
   %2:\U3			    !* Get which arg to assign to.!
   :I3#3
   Q3,Q1 Mp			    !* Assign value!
   1A-]@;
   >
 1D				    !* Get rid of close bracket.!
 
 


!& Do Replacements:! !C !
 [1 [2
 <  @:F&%#{"L .-Z;
    1A-{"E @:F} +1 K !<!>'
    1A-"!'!"E 1C @:F"!'! +1 L !<!>'
    1A(FWFX1
      )-#"E(1A-[)"E M(M.M &_Get_Args)''
    0@FOt1U2
    Q2"E :I*Undefined_Keyword,_1FG'
      "# G2 FKC'
 >
 i

 



!& Get Values:! !C !

 0[N A[C [V 0[L [0 [A

 <  .-Z;
    1A-{"E @:F} +1 K !<!>'	    !* Kill comments so can kill comment lines!

    1AF 
 _ 	 :"L 1D !<!>'    !* Eliminate white space.!

    1AF&%#U0			    !* "Symbolize" character on line.!
    
    Q0:"L
         FWFXA 1D		    !* Get subbing name!

				    !* Get or compute value !
	 Q0-0"E			    !* For labels, value is this line #!
	     QL+1*10 :\ Uv
	     '
	 Q0-1"E			    !* For variables, value is next digit.!
	     :Ivcn	    !* variable is e.g. A1 !
	     Qn-9"N %nW'	    !* Get next digit!
	           "# 0Un %cW '   !* or wrap around digit and inc. name.!
	     '

	 Q0-2"E			    !* For constants (macros) value given!
	     1:XV
	     '

	 Qa,Qv Mp :"L		    !* Assign value, and if not new!
	     :i*Keyword_Already_Defined,_aFG	    !* complain.!
	     '

	 '
    Q0"G			    !* For macro assigns and var decls.!
	1K			    !* delete the line!
	'
    "#				    !* For label assign or others!
	4,%L*10\ 32I		    !* put in a label and a space.!
	1L
	'
    >
 


!& Print Symbol Table:! !C !

 0[1 [2
 :< Q:T(%1*2-1)U2 G2
    11.I
    Q:T(Q1*2)U2 G2
    15.I 12.I
  > W
 



!Pre-Compile:! !C !

 [A
 m.m &_Make_T_Variable[p	    !* We will use this in the routines.!

 F[ DFile			    !* Don't mess up default names.!
 G(HX* (F[ B Bind))		    !* Push to a copy of this buffer.!
 
 5 FS B Cons[t			    !* Set up our symbol table.!
 2U:t(0)

 J M(M.M &_Get_Values)

 J M(M.M &_Do_Replacements)

 Qbuffer_filenamesF[D FILE

 et  BAS ei hp ef		    !* Write this out as a BASic file!

 HK M(M.M &_Print_Symbol_Table)

 et  SYM ei hp ef		    !* Write this out as a SYMbol file!

     