(FILECREATED "16-MAR-82 00:08:58" ("compiled on " <LISPUSERS>PFBCPL.;9) (2 . 2) brecompiled changes: 
nothing in WORK dated "10-MAR-82 01:09:35")
(FILECREATED "25-AUG-80 14:58:47" PFBCPL.;2 1136 changes to: (BCPL BCPL) previous date: 
"29-MAY-80 09:42:29" PFBCPL.;1)
(PRETTYCOMPRINT PFBCPLCOMS)
(RPAQQ PFBCPLCOMS ((PROP MAC DMC JSYS) (PROP BCPL BCPL CALLUP)))
(PUTPROPS DMC MAC ((INST.DMC OPS.DMC BINDINGS.DMC DEBUG.DMC DEBUGDEFS.DMC FNCALL.DMC FVARLOOKUP.DMC 
IARITH.DMC JUMP.DMC LFAULTS.DMC LISP0.DMC LISPDEFS.DMC LMAP.DMC LOW.DMC LTRAPS.DMC OPCODECOUNT.DMC 
PUNTS.DMC UNDEF.DMC USTATS.DMC) (ALISP BLISP) (NIL NIL NIL NIL NIL "
***")))
(PUTPROPS JSYS MAC ((TTYSRV IO MONJS LOG2JS FORKS ACCTJS DATIME DEVJS DSK FILEJS GTJFN IMPDV JOBINI 
LINEPR LOGJS MFLIN MFLOUT NETWRK PAGEM PARAMS PUP PUPNM SCHED SIGNAL SRIARC TNTDMY) ("134")))
(PUTPROPS BCPL BCPL ((DISPLAYIOSUBRS KBDIOSUBRS ARITHSUBRS CALLSUBRS FILEIOSUBRS KBDINIT LISP0 
MAININIT MISCSUBRS PUPSUBRS RAID RAIDPRINT RAIDPROCS STACK STATS VMEMB VMEMINIT) (BLISP ALISP)))
(PUTPROPS CALLUP BCPL ((CALLWFS CALLBTREE CALLDIALER CALLUP CALLUTILS CALLDIRECTORY CALLDIRXEROX 
CALLDIRLOCAL)))
NIL