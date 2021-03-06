! UPD ID= 630, SNARK:<6.UTILITIES>DDT.CTL.11,  14-Nov-84 10:54:47 by PROBINSON
;	DDT.CTL		19-Jan-88
;	@SUBMIT DDT/TIME:0:10:0/RESTART:YES

;COPYRIGHT (C) 1981, 1987, 1988 BY
;DIGITAL EQUIPMENT CORPORATION, MAYNARD, MASSACHUSETTS

;THIS SOFTWARE IS FURNISHED UNDER A LICENSE AND MAY BE USED AND COPIED
;ONLY  IN  ACCORDANCE  WITH  THE  TERMS  OF  SUCH LICENSE AND WITH THE
;INCLUSION OF THE ABOVE COPYRIGHT NOTICE.  THIS SOFTWARE OR ANY  OTHER
;COPIES THEREOF MAY NOT BE PROVIDED OR OTHERWISE MADE AVAILABLE TO ANY
;OTHER PERSON.  NO TITLE TO AND OWNERSHIP OF THE  SOFTWARE  IS  HEREBY
;TRANSFERRED.
;
;THE INFORMATION IN THIS SOFTWARE IS SUBJECT TO CHANGE WITHOUT  NOTICE
;AND  SHOULD  NOT  BE  CONSTRUED  AS A COMMITMENT BY DIGITAL EQUIPMENT
;CORPORATION.
;
;DIGITAL ASSUMES NO RESPONSIBILITY FOR THE USE OR RELIABILITY  OF  ITS
;SOFTWARE ON EQUIPMENT WHICH IS NOT SUPPLIED BY DIGITAL.
;
;This control file describes the procedures used to build the distributed
;software.   It  is  unlikely  that  this  control  file can be submitted
;without  modification  on  customer  systems.   Submit  times  may  vary
;depending  on  system  configuration  and  load.   The  availability  of
;sufficient disk space and core is mandatory.  This control file has  not
;been  extensively  tested on alternate configurations.  It has been used
;successfully  for  its  intended  purpose:   to  build  the  distributed
;software on our development systems.
;
;	Required input files:
;
;	SYS:		JOBDAT.UNV
;			JOBDAT.REL
;			LINK.EXE
;			MACRO.EXE
;			MACSYM.UNV
;			MACREL.REL
;			MONSYM.UNV
;			MONSYM.REL
;			PA1050.EXE
;			RUNOFF.EXE
;
;	DSK:		DDT.MAC
;			F2EDDT.MAC
;			F2FDDT.MAC
;			F2KDDT.MAC
;			F2MDDT.MAC
;			F2RDDT.MAC
;			F2XDDT.MAC
;			UDDT.MAC
;
;	Output files:
;
;	DSK:		EDDT.REL
;			FILDDT.EXE
;			KDDT.REL
;			MDDT.REL
;			RDDT.REL
;			SDDT.EXE
;			UDDT.EXE
;			XDDT.EXE
;

;	Setup logical names
;
@TAKE BATCH.CMD
@INFORMATION LOGICAL-NAMES ALL
;
;	Get system software version
;
@GET SYS:MACRO
@INFORMATION VERSION
@GET SYS:LINK
@INFORMATION VERSION
@GET SYS:PA1050
@INFORMATION VERSION
@GET SYS:RUNOFF
@INFORMATION VERSION

;	Checksum input files
;
@VDIRECTORY SYS:MACRO.EXE,SYS:LINK.EXE,SYS:PA1050.EXE,SYS:RUNOFF.EXE,
@CHECKSUM SEQUENTIAL
@
@VDIRECTORY SYS:JOBDAT.UNV,SYS:JOBDAT.REL,SYS:MONSYM.UNV,SYS:MONSYM.REL,SYS:MACSYM.UNV,SYS:MACREL.REL,
@CHECKSUM SEQUENTIAL
@
@VDIRECTORY DDT.MAC,UDDT.MAC,
@CHECKSUM SEQUENTIAL
@
@VDIRECTORY F2EDDT.MAC,F2FDDT.MAC,F2KDDT.MAC,F2MDDT.MAC,F2RDDT.MAC,F2XDDT.MAC,
@CHECKSUM SEQUENTIAL
@

; COMPILE DDT.MAC WITH VARIOUS PARAMETER FILES, PRODUCING ALL .REL FILES
;
EDDT::
@CHKPNT EDDT
@COMPILE /COMPILE F2EDDT+DDT.MAC EDDT
FILDDT::
@CHKPNT FILDDT
@COMPILE /COMPILE F2FDDT+DDT.MAC FILDDT
KDDT::
@CHKPNT KDDT
@COMPILE /COMPILE F2KDDT+DDT.MAC KDDT
MDDT::
@CHKPNT MDDT
@COMPILE /COMPILE F2MDDT+DDT.MAC MDDT
RDDT::
@CHKPNT RDDT
@COMPILE /COMPILE F2RDDT+DDT.MAC RDDT
XDDT::
@CHKPNT XDDT
@COMPILE /COMPILE F2XDDT+DDT.MAC XDDT

; COMPILE UDDT.MAC TO PRODUCE THE UDDT/SDDT STUB
;
UDDT::
@CHKPNT UDDT
@COMPILE UDDT.MAC UDDT

LOAD::
@CHKPNT LOAD
;	Build UDDT.EXE and eliminate page 0 by hand, to create the
;	UDDT and SDDT stubs.
;
@LINK
*/SYMSEG:NONE UDDT/SAVE=UDDT/NOLOCALS/GO
@GET UDDT.EXE
@SAVE UDDT.EXE 764 777
@COPY UDDT.EXE SDDT.EXE

;	Build XDDT.EXE and run its initialization code before saving it.
;
@LINK
*/NOINITIAL, /SET:.LOW.:700000 /SET:DDTSYM:701000 /SYMSEG:PSECT:DDTSYM -
*/UPTO:737777 /PATCHSIZE:#2000 /HASHSIZE:10000 XDDT/SAVE = XDDT/NOLOCALS, -
*/LOCALS SYS:MONSYM, SYS:MACREL, SYS:JOBDAT, /PVBLOCK:PSECT:DDTCOD -
*/PVDATA:NAME:DDT% /PVDATA:START:DDTXPT /PVDATA:VERSION:%%DDT, /GO
@GET XDDT.EXE
@START
@SAVE XDDT.EXE 700 777

;	Build FILDDT
;
@LOAD FILDDT.REL
@SAVE
@INFORMATION VERSION

DOC::
@CHKPNT DOC
;	RUNOFF documentation
;
;@NOERROR
;@RUNOFF
;*DDT44.RND/OUTPUT:DDT44.DOC
;@ERROR

;	Checksum the output files
;
@VDIRECTORY XDDT.EXE,UDDT.EXE,SDDT.EXE,FILDDT.EXE,
@CHECKSUM SEQUENTIAL
@
@VDIRECTORY EDDT.REL,KDDT.REL,MDDT.REL,RDDT.REL,
@CHECKSUM SEQUENTIAL
@

;	Delete unnecessary .REL files
;
@DELETE UDDT.REL,XDDT.REL,FILDDT.REL
