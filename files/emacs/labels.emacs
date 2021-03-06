!~Filename~:! !Macro for generating mailing labels.!
LABELS

!Labels:! !C Convert the buffer from mailing list to labels.
A mailing list file has each entry beginning with a $n and
spaced out to be 5 lines long.  The fifth line, if non-blank,
is the ATTN: field.
The mailing labels come 3 per line.  Each label is 8 lines high, with
one empty line between labels.  Each label is 40 characters wide,
with one empty column between labels.  You can either print the
results of this command on a DECwriter, or print it on the ML
line printer if we install a special format tape so that it
doesn't skip several lines between pages, and to allow for the
fact that pages on the label forms are longer than regular pages.!

zj m(m.m ^R_Delete_Blank_Lines)
 i
$			!* insert dollar-sign at end of file !

0[0		!* Q0 is column number, 0, 1, or 2 !
[1 [2 [3 [4 [5	!* Q1 is field number, Q2 # fields, Q3, Q4 are temporary !
j<.u5 :s$; L q5,.k	!* delete dollarsign at beg of entry !
 .-z; .u5		!* Loop over all lines in the file(q5 is beg of field)!
  0u2 <1 F=$"E0;' %2w L >	!* Count the lines !
   q2-7"G ^ft
I_am_sorry,_this_entry_is_more_than_7_lines_long.
Please_read_in_the_file_again,_fix_it,_write_it_out,_and_try_again.
       ^fg  '
   q2-4"G q5j 4L 1A-15."N
	 iATTN:_''	!* If 5th line non-blank, put ATTN: before it !
  Q5J (9-Q2)/2<I
> Q5J			!* Insert new lines to center it vertically !
  0u1 <1 F=$"E0;'	!* go to front of field !
       Q0"E L '		!* If first column, just make it a line !
       "# :FX4K Q1-8:L	!* Otherwise, go back to corresponding line !
	  Q0*41-fsHPosU3  !* And align to next column by either !
	  Q3"L Q3D '"# Q3,40.I '	!* truncating or inserting spaces !
	  G4 9-Q1L '	!* And stick this field in at the end of that line !
       %1w >
  Q0"E 9-Q1< 15.I12.I > '	!* If first column, make 9 lines long !
  %0-2"G 0u0 '	!* Advance column number !
 >
BJ 		!* Leave cursor at front !