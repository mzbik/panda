(FILECREATED " 9-NOV-83 02:59:10" ("compiled on " <LISPUSERS>DATABASEFNS.;2) (2 . 2) brecompiled 
exprs: DBFILE1 DBFILE2 DUMPDB LOADDB MAKEDB in WORK dated "26-SEP-83 00:54:17")
(FILECREATED " 9-NOV-83 02:58:48" <LISPUSERS>DATABASEFNS.;2 12680 changes to: (VARS DATABASEFNSCOMS) (
FNS DBFILE1 DBFILE2 DUMPDB LOADDB MAKEDB) previous date: "29-APR-81 20:27:35" 
<LISPUSERS>DATABASEFNS.;1)
(VIRGINFN (QUOTE LOAD) T)
(MOVD? (QUOTE LOAD) (QUOTE OLDLOAD))
(VIRGINFN (QUOTE LOADFROM) T)
(MOVD? (QUOTE LOADFROM) (QUOTE OLDLOADFROM))
(VIRGINFN (QUOTE MAKEFILE) T)
(MOVD? (QUOTE MAKEFILE) (QUOTE OLDMAKEFILE))

LOADDB BINARY
     �   �   �-.          �-.     H�   TZ   ,<  �@ T  �+  Z   ,<  �,< �,< V,<   @ � ` +  Z   Z XXB Zw�,<?�" �,<  �Zw,<?�,<8  , �,<  �,<   ,<   ,<   Zw�3B   +   [w�XBp  Zw�XBw�+   Zw}Z8  2B   +   ,< Y,<   $ �,<w~,<   $ �,<   " ZZ   +   �Zw}Z8  3B   +   :,<w~,< �$ [2B �+   !+   =2B \+   �+   Z   2B �+   �,<w~,< �,< �& �3B   +   +   =2B \+   +,<w~,< �,< \& �+   Z   3B   +   �,<w~[  +Z  D ]2B   +   =Z   ,<  �,< �,< ^,<w�,   F �2B �+   �,<w~,< �,< �& �3B   +   +   =,<w~,< �,< \& �+   ,<w~,< �,< �& �3B   +   ,<w�,<   $ _,< �,<w~" �,   ,   Z  �,   XB  A,<   Z   D `XBw2B �+   ],<   Z  CD `XBw�,<   Z  FD `XBw2B a+   ]Z   3B   +   V,<   ,<   ,<   Z  HD `XBp  2B   +   QZw�+   U,<  �Z   ,<  ,<   Z  �D `F �+   M/  +   [,<   ,<   Z  SD `2B   +   ZZp  +   �+   �/  �,<   Z  WD `XBw-,   Z   Z  3B b+   aZw2B �+   xZw3B �+   c  bZ  �3B   +   f,<w~,<w$ cZ  -3B   +   �,<w~,<  �,<w& �  �,<w~,< d$ �[  ,<  �Zp  -,   +   �+   wZp  ,<  �,<p  " e2B   +   t,<p  ,< �$ �3B   +   u,<p  " f/  �[p  XBp  +   �/  �+   ~,<   " Z,<w�,<   $ �,< �,<   $ �,<   " ZZ   XBw�Zw�/  �ZwXB8 Z   ,~   3B   +  Z   +  �Z gXB` �D �Z` �3B   +    h,~   Z` ,~   +    Zw�2B   +  �  �XBw�+  �,<  �,< �$ iZ   2B  +  �,< �,<   ,< �,<   ,< j,<w}, �XBw�,<w�,< �$ i2B   +  ,<w�" �,<  �,< k$ [Z  2B   +   Zp  3B   +  ,<w�" �+  ,<w�" lXBw�3B   +   B �Zw�,   ,<  �Zp  3B   +  $,<w,<  �, %+    Z   +    ,< �,< �,< �,<   ,< j,<w}, �B �,<  �Zp  2B   +  ,Z   +    ,<  �,<w, B3B   +  �Zp  Zw�,   +    ,<p  ,< �,< �,< �,< m,< j,<w|, �B �D n,<  �,<   ,<   Zw-,   +  9+  �Z  XBp  ,<  �,<w�, B2B   +  =+  ?Zp  Zw~,   +  A[wXBw+  7Zw�/  �+    ,< �,<w,< �$ oXBw,   Z  B,   XB E,<w�" �Zp  ,<  �,<wZ  �D `Z  ,\  ,   2B   +    ,<w�" pZ   +    )U B*�;o&�7]2,B(�D9+(Tj Z0�)UI4�k(p0XHX@@            (FILE . 1)
(ASKFLAG . 1)
(VARIABLE-VALUE-CELL LISPXHIST . 6)
(VARIABLE-VALUE-CELL RESETVARSLST . 396)
(VARIABLE-VALUE-CELL LOADDBFLG . 69)
(VARIABLE-VALUE-CELL MSFILETABLE . 204)
(VARIABLE-VALUE-CELL DWIMWAIT . 95)
(VARIABLE-VALUE-CELL FILERDTBL . 402)
(VARIABLE-VALUE-CELL MSHASHFILENAME . 198)
(VARIABLE-VALUE-CELL MSARGTABLE . 163)
(VARIABLE-VALUE-CELL COMPILE.EXT . 282)
(VARIABLE-VALUE-CELL LISPXHIST . 0)
NIL
NIL
((DUMMY) . 0)
INTERNAL
(0 . 1)
(0 . 1)
(0 . 1)
ERRORSET
NAMEFIELD
"no database file found for "
PRIN1
TERPRI
DATABASE
GETPROP
YES
NO
/PUT
TESTTABLE
Y
"load database for"
ASKUSER
LISPXPRINT
INPUT
READ
FNS
ARGS
STORETABLE
READATABASE
STOP
UPDATECONTAINS
UPDATEFILES
FILE
GETP
EXPRP
EXPR
MSMARKCHANGED
" is not a database file!"
ERROR
RESETRESTORE
ERROR!
EXTENSION
FILENAMEFIELD
VERSION
BODY
PACKFILENAME
FILEDATES
INFILEP
FINDFILE
FILEDATE
*
FILDIR
REMOVE
((PROGN (CLOSEF? OLDVALUE)) . 0)
OPENFILE
SKREAD
CLOSEF
(STREQUAL URET3 URET2 SKNLST SKLST BHC CONS CONSNL ALIST2 LIST2 KT CF KNIL BLKENT ENTER2)  L   � � X�   O P	   � `   `     �   v 8 V   � p�  �    �   �    0    } @ �  � 0     (   h� H� p� @+ x%  � ( P  
 `   ~ @ � x � h \  � 
p � 
  N 	X M 	@ � h � P 7 x � p  @  ( �  �     (      
LOAD BINARY
    �        -.           ,<` �,<` ,<` �&  �XB` �Z` 3B  
+   ,<` �,<   $  �Z` �,~      (FILE . 1)
(LDFLG . 1)
(PRINTFLG . 1)
OLDLOAD
SYSLOAD
LOADDB
(KT ENTER3)    p      
LOADFROM BINARY
     �    �    	-.           �,<` �,<` ,<` �&  XB` �,<  �,<   $  �Z` �,~      (FILE . 1)
(FNS . 1)
(LDFLG . 1)
OLDLOADFROM
LOADDB
(KT ENTER3)    X      
MAKEFILE BINARY
     �        
-.            ,<` �,<` ,<` �,<` (  	XB` �,<  �,<   $  �Z` �,~   D   (FILE . 1)
(OPTIONS . 1)
(REPRINTFNS . 1)
(SOURCEFILE . 1)
OLDMAKEFILE
DUMPDB
(KT ENTER4)  `      

DUMPDB BINARY
    �    q   �-.         ( qZ` �3B   +   p-,   +   pB  �,<  �,<` �"  u,<  �,<   ,<   Zw2B   +   �Z   3B   +   ,<w�[  	Z  D  �3B   +   Z   XB` +   �Z` 3B   +   �,<w�,<  v$  �+   �,<   "  w,<` �,<   $  �,<  x,<   $  �,<   "  wZ   +    ZwXBp  Z` 3B   +   �,<w�,<  v$  �3B  y+   �Z   3B  y+   �Z  3B   +   �,<w�[  Z  D  �3B   +   �Z   3B   +   �,<p  ,<   Zw�-,   +   �Zp  Z   2B   +   � "  +   ,[  QD   "  +   �Zw�,<  �,<p  "  �,<p  "  z/  �3B   +   3Zw�Zp  ,   XBp  [w�XBw�+   &/  XBp  Z   ,<  �@  �  +   �Z   ,<  �,<  |,<  �,<   @  } ` �+   �Z   Z  �XB ,<  ,<  �,<  v,<  ,<   ,< �Zw|,<8 �, ,<  �,< �,< & �Zw~XB?�,   Z  8,   XB  �,< �Zw~,<?�" �,   ,   Z  �,   XB  J,< "  �Z  !3B   +   �Zw�,<?�,<  �,<?�,< �$  �Z  B F �Z  �3B   +   �Zw�,<?�,<?,<   & ,< �,<   $  �Zw�,<?,<   $ ,<   "  wZw�Z8  3B   +   ^B �+   �,< ,<   $  �,<   "  wZw~XB8 Z   ,~   3B   +   �Z   +   eZ �XB` �D Z` �3B   +   �  �,~   Z` ,~   Z` 3B   +   m,<w�,<   $ +   o,<w�,<  v,<  y& 	Zw�+    Z   ,~   d	
�S(lE!
$)U= d�#jSn         (FILE . 1)
(PROPFLG . 1)
(VARIABLE-VALUE-CELL MSFILETABLE . 153)
(VARIABLE-VALUE-CELL SAVEDBFLG . 59)
(VARIABLE-VALUE-CELL MSHASHFILENAME . 165)
(VARIABLE-VALUE-CELL LISPXHIST . 107)
(VARIABLE-VALUE-CELL RESETVARSLST . 150)
NAMEFIELD
FILEFNSLST
TESTTABLE
DATABASE
/REMPROP
TERPRI
PRIN1
" has no functions."
GETPROP
YES
UPDATEFN
LOCALFNP
(VARIABLE-VALUE-CELL LISPXHIST . 0)
NIL
NIL
((DUMMY) . 0)
INTERNAL
(0 . 1)
(0 . 1)
(0 . 1)
ERRORSET
((PROGN (CLOSEF? OLDVALUE) (AND RESETSTATE (DELFILE OLDVALUE))) . 0)
EXTENSION
VERSION
BODY
PACKFILENAME
OUTPUT
NEW
OPENFILE
"(PROGN (PRIN1 %"Use LOADDB to load database files!
%" T) (ERROR!))
"
FILEDATES
PRINT
STORETABLE
UPDATECONTAINS
"FNS "
PRIN2
DUMPDATABASE
"STOP"
ERROR
RESETRESTORE
ERROR!
/PUT
(CONSNL CONS ALIST2 CF COLLCT BHC SKNLST URET4 KT SKLA KNIL ENTER2)   �    � p   	  F    =    3    �    x        � ( � x � P �        q 0 � H �  � P [   X 
@ N  ;  �  � P �    � h � ( 	   �  0      

MAKEDB BINARY
     �    �    �-.          �,<` �"  �XB` �,<   ,<  B  �F  3B   +   ,<` �,<  �$  Z  �,   2B   +   Z   Z  ,   2B   +   Z   3B   +   �,<` �[  Z  D  �2B   +   ,<` �,<  �Z   ,<  �,<  ,<  �&  2B  �+   Z   +   �Z  �F  !,~   ue?p   (F . 1)
(VARIABLE-VALUE-CELL SAVEDBFLG . 19)
(VARIABLE-VALUE-CELL MSFILETABLE . 28)
(VARIABLE-VALUE-CELL DWIMWAIT . 35)
NAMEFIELD
FNS
FILECOMS
INFILECOMS?
DATABASE
GETPROP
((YES NO) . 0)
((YES NO) . 0)
TESTTABLE
N
"Do you want a Masterscope Database for this file? "
ASKUSER
Y
YES
NO
/PUT
(FMEMB KNIL KT ENTER1)   �     � @ �  `    @      
(PRETTYCOMPRINT DATABASEFNSCOMS)
(RPAQQ DATABASEFNSCOMS ((* Does automatic Masterscope database maintenance) (DECLARE: FIRST (P (
VIRGINFN (QUOTE LOAD) T) (MOVD? (QUOTE LOAD) (QUOTE OLDLOAD)) (VIRGINFN (QUOTE LOADFROM) T) (MOVD? (
QUOTE LOADFROM) (QUOTE OLDLOADFROM)) (VIRGINFN (QUOTE MAKEFILE) T) (MOVD? (QUOTE MAKEFILE) (QUOTE 
OLDMAKEFILE)))) (FNS DBFILE DBFILE1 DBFILE2 LOAD LOADFROM MAKEFILE) (ADDVARS (LINKEDFNS OLDLOAD)) (P (
RELINK (QUOTE MAKEFILES))) (FNS DUMPDB LOADDB MAKEDB) (PROP PROPTYPE DATABASE) (INITVARS (LOADDBFLG (
QUOTE ASK)) (SAVEDBFLG (QUOTE ASK))) (ADDVARS (MAKEFILEFORMS (MAKEDB FILE))) (* To permit MSHASH 
interface) (INITVARS (MSHASHFILENAME) (MSFILETABLE)) (LOCALVARS . T) (BLOCKS (LOADDB LOADDB DBFILE 
DBFILE1 DBFILE2 (NOLINKFNS . T))) (DECLARE: EVAL@COMPILE DONTCOPY (P (RESETSAVE DWIMIFYCOMPFLG T)))))
(ADDTOVAR LINKEDFNS OLDLOAD)
(RELINK (QUOTE MAKEFILES))
(PUTPROPS DATABASE PROPTYPE IGNORE)
(RPAQ? LOADDBFLG (QUOTE ASK))
(RPAQ? SAVEDBFLG (QUOTE ASK))
(ADDTOVAR MAKEFILEFORMS (MAKEDB FILE))
(RPAQ? MSHASHFILENAME)
(RPAQ? MSFILETABLE)
NIL
  