!* -*-TECO-*- *!
!* <GAVIN>UNDERLINER..10,  9-Jul-79 02:58:45, Edit by GAVIN!

!~Filename~:! !Underline routines.!
UNDERLINE

!^R Really Underline Word:! !^R Underline <NUMARG> words using backspaces.
With no arg, underlines the previous word. Neg arg => don't move point.
Underlines with <CHAR><BS>_ the variable $Underline Mode$ is non-zero,
otherwise (the default) with _<BS><CHAR> so scopes will show the characters.!

 m(m.m& Temporarily _<BS> No Break)
 [1 0FO..QUnderline Mode[2	    !* 2: Canon-flag. *!
 ff "E -1u1 '"# u1 '
 Q1f"L W .[3 W-Q1':<		    !* Iter over NUMARG words. *!
   Q1"L -fwl'			    !* Move backward if negative NUMARG. *!
   1:fwl 			    !* Move to start of this word. *!
   < 0,1a"b 1;'			    !* Done word if at break character. *!
     !Remove!			    !* Remove any previous underlining. *!
     1a-_"e 0,2a-8"e 2d Q1"L Q3-2 u3' oRemove''  !* ... *!
     1a-8"e 0,2a-_"e 2d Q1"L Q3-2 u3' oRemove''  !* ... *!
     q2"n c 8i i_ '		    !* Canonicalize the underlining. *!
     "# i_ 8i c'		    !* No canonicalization. *!
     Q3+2 u3 .-z; >		    !* Repeat over word. *!
   -fwf			    !* Tell  about that word. *!
   Q1"l -fwl'			    !* Move backward if need. *!
   >				    !* Repeat over NUMARG word. *!
 Q1"L Q3 J '			    !* Return for negative args *!
 1

!^R Remove Word Underline:! !^R Removes underlining from NUMARG words.
Exactly undoes the effect of ^R Really Underline Word.!

 m(m.m& Temporarily _<BS> No Break)
 [1 ff "E -1u1'"#  u1 '
 Q1f"L w .[2 w-Q1':<		    !* Iterate forward/backward. *!
   Q1"L -fwl'			    !* Negative argument means backward. *!
   :fwl				    !* Move to start of word. *!
   -@f_l			    !* But before any underlining. *!
   < 0,1a-_"e 0,2a-8"e Q1"L Q2-2 u2' 2d oloop '' !* Remove _<BS>. *!
     0,1a-8"e 0,2a-_"e Q1"L Q2-2 u2' 2d oloop '' !* And <BS>_. *!
     0,1a-"b 1;'		    !* Stop at end of word. *!
     c !loop! .-z; >		    !* Repeat over the word. *!
   -fwf			    !* Tell  about that word. *!
   Q1"l -fwl'			    !* Move back over word if need. *!
   >				    !* Repeat over each word. *!
 Q1"L Q2 J '			    !* Return if negative arg *!
 1

!& Temporarily _<BS> No Break:! !S Set so _ and <BS> are not text breaks.
Pushes a ..N so definitions for _ and <BS> revert when caller exits.!

 8*5,(8*5+5):g..d[1		    !* 1: Old ..d <BS> definition. *!
 _*5,(_*5+5):g..d[2		    !* 2: Old ..d _ definition. *!
 fn 8*5:f..d1		    !* Restore old ..d <BS>. *!
    _*5:f..d2	    !* And old ..d _. *!
 8*5:f..dAA   		    !* Make <BS> be letter. *!
 _*5:f..dAA   		    !* And _. *!
 :				    !* Exit without unwinding. *!
  