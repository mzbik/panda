	PROGRAM NAMLST

!COPYRIGHT (c) DIGITAL EQUIPMENT CORPORATION 1982, 1987
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

!	SRM
!	April 1982
!
! Revision history
!
!16-April-82	SRM	Added tests for numeric data in NAMELISTS

! Simple test of NAMELIST IO
!
	DOUBLE PRECISION D,DA(10)
	COMPLEX CX, CXA(2,3)
	REAL RA(2,4)
	CHARACTER C*3, C1(3)*7
	CHARACTER C2*2, C3(2)*3
	CHARACTER LINE(3)*30

	NAMELIST /NAM1/ C2, C3
	NAMELIST /NAM/ C1, C
	NAMELIST /NAM2/ I,R,D,CX, RA
	NAMELIST /NAM3/ DA,CXA
!
! Test NAMELIST Output
	C2='12'
	C3(1) = 'ABC'
	C3(2) = 'DEF'
100	OPEN (UNIT=1, DEVICE='DSK:', FILE='NAM1.DAT')
	WRITE (UNIT=1, FMT=NAM1)
	CLOSE(UNIT=1)
! Now read in the RECORD that was written and check its contents
200	OPEN( UNIT=1, FILE='NAM1.DAT', DEVICE='DSK:')
	READ ( UNIT=1, FMT=10 ) LINE(1), LINE(2), LINE(3)
10	FORMAT( A6 / A27 / A5 )
	IF (LINE(1) .NE. ' $NAM1' )
	1 TYPE *, ' ?First line in NAM1.DAT was ', LINE(1) 

	IF (LINE(2) .NE. ' C2= ''12'', C3= ''ABC'', ''DEF''')
	1 TYPE *, ' ?Second line in NAM1.DAT was ', LINE(2)

	IF (LINE(3) .NE. ' $END')
	1 TYPE *, '?Third line in NAM1.DAT was ', LINE(3)


	CLOSE(UNIT=1)

!
! Test NAMELIST Input
300	OPEN (UNIT=1, DEVICE='DSK:', FILE='NAMLST.DAT')
	READ (UNIT=1, FMT=NAM)

	IF (C .NE. '@#$') 
	1 TYPE *, ' ? NAMELIST input of C failed.',
	2 ' C = ', C

	IF ( C1(1) .NE. '1234567' ) 
	1 TYPE *, ' ? NAMELIST input of C1(1) failed.',
	2 '  C1(1) = ', C1(1)

	IF (C1(2) .NE. '12     ')
	1 TYPE *, ' ? NAMELIST input of C1(2) failed.',
	2 ' C1(2) = ', C1(2)

	IF (C1(3) .NE. 'ABCDEFG')
	1 TYPE *, ' ? NAMELIST input of C1(3) failed.',
	2 ' C1(3) = ', C1(3)

	READ( UNIT=1, FMT=NAM2 )

	IF (I .NE. 1)
	1 TYPE *, ' ? NAMELIST input of I failed.',
	2 ' I = ', I

	IF (R .NE. 2)
	1 TYPE *, ' ? NAMELIST input of R failed.',
	2 ' R = ', R

	IF (RA(1,1) .NE. 1)
	1 TYPE *, ' ? NAMELIST input of RA(1,1) failed.',
	2 ' RA(1,1) = ', RA(1,1)

	IF (RA(1,2) .NE. 3)
	1 TYPE *, ' ? NAMELIST input of RA(1,2) failed.',
	2 ' RA(1,2) = ', RA(1,2)

	IF (D .NE. 3)
	1 TYPE *, ' ? NAMELIST input of D failed.',
	2 ' D = ', D

	IF (CX .NE. (4,5))
	1 TYPE *, ' ? NAMELIST input of C failed.',
	2 ' CX = ', CX

	READ( UNIT=1, FMT=NAM3 )

	IF (DA(10) .NE. 10)
	1 TYPE *, ' ? NAMELIST input of DA(10) failed.',
	2 ' DA(10) = ', DA(10)

	IF (CXA(2,2) .NE. (2,2))
	1 TYPE *, ' ? NAMELIST input of CXA(2,2) failed.',
	2 ' CXA(2,2) = ', CXA(2,2)
	END
   