!~FileName~:! !-*- Teco -*- macros for editing a grade sheet.
What this does for you:
  It allows you to input the scores conveniently to the correct column
  of your score sheet, allows you to input the scores in any order, and
  keeps a running total of the scores of each student.

File format:
  1) All the lines of the file which will have grades must already be
     padded with spaces to as many columns as will hold scores.
  2) You must not use TABs for whitespace; use spaces.  (See M-X Indent
     Tabs Mode for how to do this easily).
  3) Each line with starts with '"' will be the scores for a single student.
  4) There will be one line in the file which startes with "Averages" to
     hold the averages.
  An example file (which I suggest you copy to start with) can be found in
  EMACS:GRADE.FORM.

Control Variables:
   Number Width
      Is the total width of the normal scores.  The sum can have a width
      one greater than this value.
   Number Precision
      If all your scores are integers, this should be -1; otherwise it is the
      number of decimal points of precision in representing the numbers.
   Start Column
      The column in which the first character of the first score would be
      written.

Commands:
   ^R Input Scores
      Given a numeric argument of which score we are dealing with, this
      will repeatedly query you for a unique substring of a student's
      name (actually, it just wants some text to find the right line by)
      and jump to the right place in the file to type the current score
      for that student.  You will be in overwrite mode, so you can just
      type.  The score should be in exactly the correct position, though,
      padded to the left with blanks.  You may omit the decimal point
      for integer scores.

      Exit the input of a score either with C-M-Z or <RET>.  Exit the whole
      query loop by giving no name when it asks for one.

   ^R Sum Scores
      If for some reason you want to directly sum the scores on a line (it
      is done automatically in ^R Input Scores as long as you do not leave
      that line when you input the grade), move to that line and call
      ^R Sum Scores.

   ^R Calculate Averages
      Given an argument like ^R Input Scores, updates the averages for that
      column.  This is also automatically called by ^R Input Scores.

Suggested way to work this:
   If you have these lines at the END of your grade file, everything will
   work fine.  Just change the numbers to what you want.  You will be able
   to call ^R Input Scores with C-M-# and ^R Sum Scores with C-M-%.  See
   the info node on Local Modes for more information.

      Local Modes:
      Mode:Text
      Indent Tabs Mode:0
      Start Column:40
      Number Width:5
      Number Precision:-1
      Num Of Scores:6
      ...#:m(m.mLoad Library)ETH:Gradem.m^R Input Scores
      ...%:m.m^R Sum Scores
      ...$:m.m^R Calculate Averages
      End:
!

Grade

!& Read Real Number:! !C Reads following number, maybe with D.P.  # of places
expected after D.P. is fixed.  Returns <num>*10^<Number Precision>.!
 0[1 0[2			    !* Q1 is value, Q2 is one if # is found!
 QNumber_Width-QNumber_Precision-1 @f_L !* Skip preceeding spaces!

 1A"D 1U2 \U1' 			    !* Pre-decimal in Q1!
 
 QNumber_Precision:"L
     1A-."E 1U2' C		    !* Past D.P.! 

     QNumber_Precision<Q1*10U1>	    !* Multiply for post d.p.!

     .+QNumber_Precision(
			   1A"D 1U2 \+Q1U1'
			  )J	    !* Get post D.P. #! 
     ' 
 Q2,Q1


!& Write Real Number:! !C!
!* Problem: it will write "2. 1" instead of "2.01"!

 f([1) [2  1[3		    !* Q1 is value pre-d.p., Q2 is value post!
 QNumber_Precision<Q1/10 U1  10*Q3U3>	    !* Q3 is 10^<number precision>!
 Q2-(Q3*Q1)U2
 (QNumber_Width+1)-QNumber_Precision-1,Q1\  !* insert pre-comma, with padding.!
 QNumber_Precision:"L
     .i
     QNumber_Precision,Q2\'



!^R Sum Scores:! !^R Calculates the sum of the scores on the current line
and writes it in the sum column.!

 0[2				    !* initialize sum!
 0L QStart_Column C		    !* Go to 1st num!
 QNum_Of_Scores<m(m.m&_Read_Real_Number)+Q2U2 WC> !* Read all the scores!
 (QNumber_Width+1)D		    !* Delete old sum!
 Q2m(m.m&_Write_Real_Number)	    !* Write new sum!


!& Calculate Averages:! !C Calculates the average of the scores in the
<arg>th column.!

 [a
 0[2 0[3			    !* initialize sum and count!

 0J
 <
     :s 
"; 0L Qa C		    !* Go to num!
     m(m.m&_Read_Real_Number)+Q2U2+Q3U3    !* Add in this score!
 >
J s 
Averages 0L QaC
QNumber_WidthD
.((Q2+(Q3/2))/Q3 M(M.M&_Write_Real_Number))J 1d


!^R Input Scores:! !^R Reads names from the terminal and hops to the proper
position to input the person's grade.  <CR> or C-M-Z should pop back to asking
for the next name; you should be on the same line as the grade (the line you
were sent to) when you type <CR> or C-M-Z.  Exit with an empty name to the
name prompt.!

 Q...Z[M			    !* <CR> also runs ^R Exit!

 1[Overwrite_Mode		    !* In overwrite mode.!
 (-1)*(QNumber_Width+1)+QStart_Column[a
 <   1,fName:_[n
     fqn@;
     J sn			    !* Find name!
     0L QaC			    !* Go to right spot in line!
     FSRGetTy-2"L0T'		    !* If on printing tty, type line!
     .,.			    !* Let user input score!
     m(m.m^R_Sum_Scores)	    !* Save new sum!
     >

 Qam(m.m&_Calculate_Averages)	    !* Update average score!

 QNum_Of_Scores*(QNumber_Width+1)+QStart_Column+1(    !* & avg sum!
 )m(m.m&_Calculate_Averages)
 
   