!* -*-TECO-*-!
!~FILENAME~:! !Library for looking up words in Webster's 7th online.!
WEBSTER

!& Dictionary Lookup Word:! !S Lookup the word at or near the cursor
in Webster's 7th unabridged.  With an argument, treats the word or
words in the region as one word and performs the lookup.!

    [0
    "E			    !* !
     .(
       :cw -fwl			    !* Go to beginning of word.!
       fwx0
       )J'			    !* Get the word into 0.!
      "#
       .,:F X0'    
    f[b bind
    @FT
Looking_up_0... 0 fs echo active

    Q0m(m.m&_Webster_Get_File)
    Q0m(m.m&_Webster_Show_Definition)
    0

!& Webster Get File:! !S Takes word as numeric arg.  Loads proper file
into CURRENT buffer.!

  F:FC[0[1
  f[d file
  f[b bind 
  hkerW7:FILES.LST @Y
  BJ
  G0
  I

  L
  BJ
  :S
0
  .(l :X1)J			    !* if word found exactly, use that file.!
  F~10"N -L :X1'		    !* if not, it's previous file.!
  F]B BIND
  hkerW7:1.DICTION
  @Y


!& Webster Show Definition:! !& Call the parsing functions on the buffer
to find the word given as numeric argument.!

  [1[2
  @:i*|.(:l),.X*|[L		    !* Get rest of line macro!
  m.m&_Webster_Advance[A	    !* Get word macro.!
  m.m&_Webster_Print[P		    !* remove trash and print.!

  f:FC[W
  BJ
  :SF:W;V:W;"E		    !* Move to word.!
   :SR:W;"N			    !* Find related word!
      -:sF:			    !* find main entry for related word!
      0@L2C
      MA:FCuW			    !* pretend we're looking up that word!
      L
      oTRYIT'
   @FTWord_not_found
 
   0 FS ECHO ACTIVE
  0'
  !TRYIT!
  0@l
  1A-V"E -:SF:		    !* If variant, move up to F line.!
	   @L'			    !* and down one.!
  0@l				    !* Found it.!
  :FTW:

  <
  .,.+1x*(2c)u1			    !* get dispatch!
  1,m.m&_Webster_1_Lineu2		    !* get function!
  Q2"E m.m&_Webster_Output_Rest_Of_Lineu2' !* use default if none.!
  m2"N 0;'				    !* run it; non-zero means done.!
  L
  .-z;				    !* end of buffer?!
  >
0

!& Webster Print:! !S Try to patch up the argument and print it.
Remove ^H and following character.
Change @ to be the word being looked up.!

  F[b bind
  g(f)
  bj <:s@;-d gW>
  bj <:s;-d .-z"n d'>
  ht
0

!& Webster Advance:! !S Advance to next field.!

    .+1(:s;),.-1:x*

!& Webster F Line:! !S First line, with word.!
 [1
 ft				    !* terminate line!

 MA:FCu1			    !* Get word.!
 F=W1"N			    !* If it's not the word, return nonzero.!
   1'
 ft

 Q1MP				    !* Output word.!
 4<MA>				    !* Get 4 items.!
 MAu1				    !* Get classification.!
 ft_(1):_			    !* Output classification.!
 MA
0

!& Webster Output Rest of Line:! !S Common Routine.!

 FT				    !* return.!
 
 MLMP				    !* output rest of line!
0

!& Webster P Line:! !C Pronounciation!
  ft

  MLMP
0

!& Webster E Line:! !C Etymology!
   ft
Etymology:_
  MLMP
0

!& Webster D Line:! !S Definition line.!

 [1[2
 ft

				    !* Output CR.!
 MAu1				    !* Get number.!
 Q1MP				    !* Output number.!
 MAMP				    !* print sub-def letter!
 ft._
 MA				    !* skip next item.!
 MAu1				    !* get part of speech!
 ft(1):_			    !* output "(N): " or such!
 MLMP				    !* output rest of line!
0

!& Webster R Line:! !S run on!

 ft

 ft
 Derivative:

 MAMP				    !* output item!
 ML				    !* skip rest of line!
0

!& Webster X Line:! !S Cross reference!

  ft

  ft
 See_also:

  MAMP			    !* output item!
  ML				    !* skip rest of line!
0

!& Webster C Line:! !S Continuation Line.!

 MLMP			    !* Output text.!
0

!& Webster L Line:! !S Label!

  3<MA>
  MLMP				    !* output text.!
0

!& Webster S Line:! !S Synonym!

  ft
Synonyms:_

  MLMP
  L
0
!& Webster V Line:! !S Variant.!

  ft
Variant:_
  MAMP
 l
0
    