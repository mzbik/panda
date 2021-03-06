!~Filename~:! !EMACS library for counting words.
Hacked 1/23/83 for Epstein@Rutgers.
Code: [RUTGERS]Pleasant;Pleasant.Emacs,
but written by Roy Marantz, I think.
Bug-reports, comments: Carter@Rutgers.!

WORDCOUNT

!& Setup Wordcount Library:! !S Bind functions to keys.
^R Count Words Page on Control-X Equals,
^R Count Words Region on Control-Meta Equals.!

m.m^r_count_words_regionu...=     !* control-meta-equals!
m.m^r_count_words_pageu:.x(=)     !* control-x-equals!
				     !* n.b.  this displaces the!
				     !* default assignment of!
				     !* What Position Cursor, which!
				     !* must now be called from MM!

				     
!^R Count Words Region:! !^R Type number of words from point to mark.!

    @ft_Region_has_
    :,.f  m(m.a wordcount &_Count_words)@:=
    @ft_words._
    0fsecho act			!* Prevent clearing of echo area. *!


!^R Count Words Page:! !^R Count words on this page (or whole buffer).
Print total words on page, then (before+after) indicating how
the page is split by point.
With argument, we do the same thing to the whole buffer.!

    .[0  fn q0j		    !* Preserve point.!
    ff"n b[1 z[2 @ft_Buffer:_'
    "# 0m(m.m ^R_Mark_Page)	    !* Put point at front and mark at end of page.!
       .[1 w .-z"n0l'.[2	    !* Put addr of front in Q1 and that of end in Q2.!
       @ft_Page_has_'
    m.a wordcount &_Count_Words[3
    q0,q1f [4
    q1,q4m3[5 q4,q2m3[6		    !* Q5 has number before, Q6 has number after.!
    q5+q6[7			    !* Print total number of words before and after.!
    q0j q0-q1"n 0@f  "n q7-1u7''  !* Hair is to count the current line only once.!
    q7@:=
    @ft_words_( q5@:= @ft+	    !* Then, in parens type <# words before .>+<# after>!
    q6@:= @ft)_
    0fs echo act		    !* Prevent clearing of echo area.!


!& Count Words:! !S Returns the number of words in part of the buffer.
<m>,<n> M(M.M&  Count Words$)  returns the  number of  lines
between character <m> and character <n>.   If arguments  are
not given, the entire buffer is used.!

  [0 0U0
  [1 .U1  FN Q1J			!* Save . in case we err. *!
  FF"N F[VBW F[VZW FFS BOUND'	!* If args, narrow bounds specified *!
					!*    otherwise the entire buffer. *!
  J < 1:<FWL>"N 0;_ ' %0 >		!* Count words by passing over them.*!
  Q0					!* Return the number of words. *!


     !* Local Modes:!
     !* Mode:TECO!
     !* Comment Column:37!
     !* *:MM Load LibraryPurify!
     !* End:!
   