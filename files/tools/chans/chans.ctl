!
! NAME: CHANS.CTL
! DATE: 14-SEP-81
!
!THIS CONTROL FILE IS PROVIDED FOR INFORMATION PURPOSES ONLY.  THE
!PURPOSE OF THE FILE IS TO DOCUMENT THE PROCEDURES USED TO BUILD
!THE DISTRIBUTED SOFTWARE.  IT IS UNLIKELY THAT THIS CONTROL FILE
!WILL BE ABLE TO BE SUBMITTED WITHOUT MODIFICATION ON CUSTOMER
!SYSTEMS.
!
! FUNCTION:	THIS CONTROL FILE BUILDS CHANS FROM ITS BASIC 
!		SOURCES.  THE FILES CREATED BY THIS JOB ARE:
!				CHANS.EXE
!
! SUBMIT WITH THE SWITCH "/TAG:CREF" TO OBTAIN
!   A CREF LISTING OF THE SOURCE FILE
!
!REQUIRED FILES:	(LATEST RELEASED VERSIONS)
!SYS:	MACRO.EXE
!	LINK.EXE
!	CREF.EXE
!	MONSYM.UNV
!	MACSYM.UNV
!	MACREL.REL
!	PA1050.EXE
!	DPYDEF.UNV
!	DPY.REL
!FILES TO BE SHIPPED:
!	CHANS.CMD
!	CHANS.CTL
!	CHANS.EXE
!	CHANS.MAC
!
@DEF FOO: NUL:
@GOTO A
!
CREF:: @DEF FOO: DSK:
!
A::
@TAK BATCH.CMD
!
@INFORMATION LOGICAL-NAMES
!
! TAKE A CHECKSUMMED DIRECTORY OF ALL THE INPUT FILES
!
@VDIRECT SYS:MACRO.EXE,SYS:LINK.EXE,SYS:CREF.EXE,CHANS.MAC,
@CHECKSUM SEQ
@
@VDIRECT SYS:MONSYM.UNV,SYS:MACSYM.UNV,SYS:MACREL.REL,SYS:PA1050.EXE,
@CHECKSUM SEQ
@
@GET SYS:MACRO
@INFORMATION VERSION
@GET SYS:LINK
@INFORMATION VERSION
@GET SYS:CREF
@INFORMATION VERSION
!
@COMPILE /CREF/COMPILE CHANS.MAC
!
@R CREF
*FOO:CHANS.LST=CHANS.CRF
!
@LOAD CHANS
!
@SAVE CHANS
@INFORMATION VERSION
!
@DIRECT CHANS.EXE,
@CHECKSUM SEQ
@
!
@DELETE CHANS.REL
