	PROGRAM BINARY

!COPYRIGHT (c) DIGITAL EQUIPMENT CORPORATION 1981, 1987
!ALL RIGHTS RESERVED.
!
!THIS SOFTWARE IS FURNISHED UNDER A LICENSE AND MAY BE USED AND COPIED
!ONLY  IN  ACCORDANCE  WITH  THE  TERMS  OF  SUCH LICENSE AND WITH THE
!INCLUSION OF THE ABOVE COPYRIGHT NOTICE.  THIS SOFTWARE OR ANY  OTHER
!COPIES THEREOF MAY NOT BE PROVIDED OR OTHERWISE MADE AVAILABLE TO ANY
!OTHER PERSON.  NO TITLE TO AND OWNERSHIP OF THE  SOFTWARE  IS  HEREBY
!TRANSFERRED.
!
!THE INFORMATION IN THIS SOFTWARE IS SUBJECT TO CHANGE WITHOUT  NOTICE
!AND  SHOULD  NOT  BE  CONSTRUED  AS A COMMITMENT BY DIGITAL EQUIPMENT
!CORPORATION.
!
!DIGITAL ASSUMES NO RESPONSIBILITY FOR THE USE OR RELIABILITY  OF  ITS
!SOFTWARE ON EQUIPMENT WHICH IS NOT SUPPLIED BY DIGITAL.

!	Version 7	BINARY.FOR

!	Basic BINARY I/O test.

	DOUBLE PRECISION D,DD

!	Data to be written out.

	I=1234; X=456.789; D=123456789.0123

!	No OPEN statement (implicit OPEN).

100	WRITE(20) I,X,D
	CLOSE(20)
	READ(20) II,XX,DD
	IF (I.NE.II) TYPE 110,I,II
	IF (X.NE.XX) TYPE 120,X,XX
	IF (D.NE.DD) TYPE 130,D,DD

110	FORMAT(' ?Error line 100.  Implicit OPEN.',/
	1	'  I='I' II='I)
120	FORMAT(' ?Error line 100.  Implicit OPEN.',/
	1	'  X='F' XX='F)
130	FORMAT(' ?Error line 100.  Implicit OPEN.',/
	1	'  D='D' DD='D)

!	OPEN statement, no MODE= specified.

	OPEN(UNIT=21,FORM='UNFORMATTED')

200	WRITE(21) I,X,D
	CLOSE(21)
	OPEN(UNIT=21,FORM='UNFORMATTED')
	READ(21) II,XX,DD
	IF (I.NE.II) TYPE 210,I,II
	IF (X.NE.XX) TYPE 220,X,XX
	IF (D.NE.DD) TYPE 230,D,DD

210	FORMAT(' ?Error line 200.  Default OPEN statement.',/
	1	'  I='I' II='I)
220	FORMAT(' ?Error line 200.  Default OPEN statement.',/
	1	'  X='F' XX='F)
230	FORMAT(' ?Error line 200.  Default OPEN statement.',/
	1	'  D='D' DD='D)
	CLOSE(UNIT=21)

!	OPEN statement with MODE= and ACESS= specified.

	OPEN(22,MODE='BINARY',ACCESS='SEQOUT')
300	WRITE(22) I,X,D
	CLOSE(22)
	OPEN(22,MODE='BINARY',ACCESS='SEQIN')
	READ(22) II,XX,DD
	IF (I.NE.II) TYPE 310,I,II
	IF (X.NE.XX) TYPE 320,X,XX
	IF (D.NE.DD) TYPE 330,D,DD

310	FORMAT(' ?Error line 300.  MODE= and ACCESS=.',/
	1	'  I='I' II='I)
320	FORMAT(' ?Error line 300.  MODE= and ACCESS=.',/
	1	'  X='F' XX='F)
330	FORMAT(' ?Error line 300.  MODE= and ACCESS=.',/
	1	'  D='D' DD='D)
	CLOSE(22)

	STOP
	END
  