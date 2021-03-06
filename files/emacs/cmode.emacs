!~Filename~:! !Macros for editing C code!
CMODE

!C Mode:! !& C Mode:! !& H Mode:! !C Set up for editing C code!

 m(m.m &_Init_Buffer_Locals)	    !* clear all local variables!
 1,(m.m ^R_C_Indent) m.q I	    !* tab tabs to tab stop!
 1,(m.m ^R_C_Block_Comment m.q ...*	    !* C-M-* makes block comment!

 1,40 m.l Comment_Column		!* start comments at column 40!
 1,(:i* +1) m.l Comment_Rounding	!* round columns to next possible!
 1,(:i* /*) m.l Comment_Start		!* comments start with slash star!
 1,(:i* /*_) m.l Comment_Begin	!* but add a space for legibility!
 1,(:i* _*/) m.l Comment_End		!* comments end with star slash!

 :i* 
m.l Label_Search_Prefix	!* function def begins with newline,!
 :i*) 
m.l Label_Search_Suffix	!* ends with close paren at eoln!
 :i*A_(,	*) m.l Label_Content_Syntax !* chars inside!

 m.q..D 0FO..q C_..Df"n u..D'"#	!* set up character syntax table!
   :i..D______________________________________________________________________________________________________________________________________________________________________+____|______________+____+____|____()___)(___+____+____+____A____+____+___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA____+_________+____+____+____+________AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA____(]___/____)[___+___AA________AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA___AA____(}___+____){___+________
   q..Dm.vC ..D'		    !* remember for future calls to C mode!

 @:i*| m(m.m &_Exit_EMACS)
        CC_1
    | m.l Compile_Command

 1m(m.m &_Set_Mode_Line) C 	    !* set mode line, run hook, exit!

!^R C Indent:! !^R Indentation for C mode.
In middle of line, deletes surrounding space and re tabs to next stop
(defined four spaces apart), or if given arg next stop back.
At beginning of line, indents depending on surrounding code.!

 [0[1[2[3			    !* Get some scratch space!

 0f  "n			    !* If in middle of line!
    ff"e 4'"# -4'+(fsshpos)/4*4u0	      !* Find place to round from!
    -@f_	l fsshpos-q0"g fsshposu0'  !* Careful of text at start!
    q0m(m.m &_Indent)'	    !* Perform indent to that column!

 .u0 fnq0j			    !* Come back here if interrupted!
 @f_	l		    !* Move to start of line text!
 0,1a-}"e 4'"# 0'u3		    !* Remember if line starts with a close!
 -:s/**/u1			    !* See whether in comment!
 q1+1"e fsshposu2'		    !* Yes, align to comment begin!
 "# q0j < -@f 
_	l  !* Find previous nonblank line!
    fsz-.f[vz 0l .f[vb	    !* Bound to previous line!
    0u2 zj			    !* Back to end!
    1:<-ful 0,1a-{"n fsshpos+1u2' !* Normal open paren, use its place!
      "# 0l @f	_l	    !* Open bracket, find start of line!
         fsshpos+4u2' >	    !* and indent four from there!
    q2"e j :<ful -1u2>'		    !* See if we end some paren list!
    q2"e zj 0l @f	_l fsshposu2'	    !* Balanced parens, just use start!
    f]vb f]vz			    !* Undo virtual bounds!
    q2; -fll >'			    !* Loop for unmatched close parens!

 q0j 0l .u0			    !* Find start of original line!
 q2-q3m(m.m &_Indent)		    !* Space over however much!
 q1+1"e 2 f=**"n i**_''	    !* Continue block comment!
 q0,.(.u0)			    !* Return with modified range!

!^R C Block Comment:! !^R Start making block comment after point!

 .[0 fsshpos[1 i/*  
	    !* Make first line of comment!
 0,q1m(m.m &_Xindent)		    !* Indent second line!
 i**_ .[2			    !* Start blocking and remember point!
 i 
 0,q1m(m.m &_Xindent)	    !* Indent third line!
 i*/ 
 
 q0,.(q2j)	    !* Make third line and return!
 