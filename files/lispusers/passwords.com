(FILECREATED "17-Jul-84 02:30:11" ("compiled on " <LISPUSERS>PASSWORDS.10.2) (2 . 2) recompiled exprs:
 nothing in WORK dated "26-SEP-83 03:48:06")
(FILECREATED "17-Jul-84 02:30:05" <LISPUSERS>PASSWORDS.10.2 12243 changes to: (VARS PASSWORDSCOMS) 
previous date: "15-Jul-84 16:41:45" <LISPUSERS>PASSWORDS.10.1)
LOGIN BINARY
         �    �-.            �,<` �Z` 3B  �+   7   Z   ,<  �,<` �,<` (  
Z  ,~      (HOST . 1)
(FLG . 1)
(DIRECTORY . 1)
(MSG . 1)
QUIET
\INTERNAL/GETPASSWORD
(KNIL KT ENTER4)      �       
SETPASSWORD BINARY
    �    �    �-.           �Z` �Z   ,   ,<  �,<` �"  B  �,<  �Z` 3B   +   �Zw�2B   +   ,<` �Z   ,   ,<  �Z  F  XBw�,<  �,<` "  �Zw�,   [w,   D  +   �Zw�2B   +   ,<` �Z   ,   ,<  �Z  �F  ,<  �,<` "  �Zw�,   ,\  XB  Z` �+    1"�    (HOST . 1)
(USER . 1)
(PASSWORD . 1)
(DIRECTORY . 1)
(VARIABLE-VALUE-CELL LOGINPASSWORDS . 40)
CONCAT
\ENCRYPT.PWD
PUTHASH
MKATOM
RPLACD
(URET2 CONS CONSNL KNIL GETHSH ENTER4)        p   @ �    �   
      �       
\INTERNAL/GETPASSWORD BINARY
    s    �    �-.     (     �Z` �Z   ,   ,<  �,<   ,<   ,<   ,<   ,<   ,<   Z` 2B   +   �Z` �3B   +   �,<  �[w�D  h+   Zw}XBw�3B   +   �Zw�+    ,<  �,<   ,<   @  i ` +   VZ   Z  �XB ,<   ,<   ,<   Zw�Z8 �3B   +   �Zw}Z?}2B   +   Zw�,<8 �Z   ,   ,<  �Z  F  kZw}XB?}Zw�Z8 2B   +   !Z8 �Z  �,   +   �,<8 �,<8 �,<8 ,<   (  lXBw�3B   +   �Zw}Z?�3B   +   ,Z?�Zw�2B  +   ,Zw},<?�[wB  �D  m+   �Zw},<?}Zw,<  �[w�B  �,   Zw�[?},   D  mZw�+   U,<   ,<   ,<   &  �XBp  Zw�Z8 �2B   +   :Zw}Z?}Z  2B   +   :Zp  Zw�XB8 �,<8 �,<  �,<8 &  lZw}XB?�Z   Zw}XB?�Z?�Zp  3B  +   GZw�Z8 �2B   +   G,<  n"  �3B   +   GZw}Z?�B  nZw�Z8 �2B   +   �Z  B  oZ   Zw}XB?}Zw}[?�B  �Zw}Z?}2B   +   �Zw�,<8 �Z   ,   ,<  �Z  IF  kZw}Z?�XD  Zw}Z?�/  �+    Z  XBp  Zw�3B   +   �Zp  3B   +   �Z   ,<  Zp  -,   +   ]+   cZp  ,<  �,<p  ,<` �Zw~,<  � "  ,   /  �[p  XBp  +   [/  �Zp  +     $b%@"!"`BD! #R( �        (HOST . 1)
(ALWAYSASK . 1)
(DIRECTORY . 1)
(MSG . 1)
(DEFAULTNAME . 1)
(VARIABLE-VALUE-CELL LOGINPASSWORDS . 163)
(VARIABLE-VALUE-CELL \AFTERLOGINFNS . 180)
ASSOC
((DUMMY) . 0)
(0 . 1)
(0 . 1)
(0 . 1)
ERRORSET
PUTHASH
""
\LOGIN.READ
\ENCRYPT.PWD
RPLACD
USERNAME
SETUSERNAME
GETD
CLRHASH
(EVCC SKNLST BHC CONSS1 KT CONS CONSNL CF URET7 KNIL GETHSH ENTER5)   �    �    d   V    0    ? H 4 8    !    � 
     �    e p     � 
 O 	0 I X �  7 8 ' P  ( � h  H    X �     h   X   H    8      
\LOGIN.READ BINARY
      �    {   -.           {Z` �3B   +   �,<  �,<   $  �,<   "     �   ,<   ,<   Z   F �,<  �Z   B 2B   +   ,< �" ,<  �,<   ,<w�$ �,<   ,<w�$ Zp  /  �XB  	B �,<  �@   +   w,< �Z   ,<  �,   ,   Z   ,   XB  XB` ,< ,< �,<   @  ` �+   nZ   Z �XB Zw,<8 ,<   ,<   ,<   " 	,   1b   +   ",<   "  Zw�Z8 �3B   +   ),< �,<   $  �Zw�,<8 �,<   $  �,< 
,<   $  �Zw�Z8 2B �+   -,<w,<   $  �+   _3B   +   /Z +   �Z �,<  �,<   $  �,<w,<   $  �,<   " XBw�3B �+   _2B +   �+   _2B �+   EZp  2B   +   �,<w" XBwB �XBp  0B   +   �,< " �,<  �,<   $  �+   �,< ,<   $  �,<w" �B  � p  /"  �,   XBp  +   �3B +   G2B �+   K,< ,<   $  �Z"   XBp  Z �XBw+   �2B +   �Zw�Z8 3B   +   OZ �+   �Z ,<  �,<   $  �+   �2B �+   S+   �Zp  2B   +   Y,< ,<   $  �,<w�" XBwZ"  �XBp  +   ],<w,<w$ XBw p  ."  �,   XBp  ,<w�,<   $  �+   �Zp  3B   +   e0B   +   �,< �,<   $  �+   �,<w" XBw,< �,<   $  �,<w,<   " ,<  �,<   "  ,<   " �,\  �,   /  �Zw~XB8 �Z   ,~   2B   +   pZ XB   [` XB  ,< �Z` Z  [  D �Z  �3B   +   v  ,~   Z` �,~   ,<  �Zw�3B   +   �B �,\  �/  �,~   .qX*�QSd�rSNX?KGOM"@2m)L           (HOST . 1)
(DEFAULTNAME . 1)
(MSG . 1)
(CONNECTFLG . 1)
(VARIABLE-VALUE-CELL READBUF . 15)
(VARIABLE-VALUE-CELL LOGINTTBL . 33)
(VARIABLE-VALUE-CELL RESETVARSLST . 225)
PRIN1
TERPRI
LINBUF
SYSBUF
CLBUFS
TERMTABLEP
ORIG
COPYTERMTABLE
ECHOMODE
CONTROL
SETTERMTABLE
(VARIABLE-VALUE-CELL OLDVALUE . 40)
NIL
NIL
(NIL VARIABLE-VALUE-CELL RESETSTATE . 231)
((DUMMY) . 0)
INTERNAL
(0 . 1)
(0 . 1)
(0 . 1)
ERRORSET
POSITION
{
"} "
ALWAYS
"Connect to "
"Login: "
READC
% 
%

%
CONCAT
NCHARS
7
CHARACTER
"\"
GLC
%
%
"_"
""
?
"
Type <space> followed by the password for the directory
"
"
You are being asked for a user name and password for login.
Type <space> to accept the given user name,
<BS> to back up over it,
or type a new name, followed by <space>.

"
%
"_ "
" ??"
MKATOM
" (password) "
RSTRING
CLEARBUF
ERROR
APPLY
ERROR!
BKBUFS
(CONSS1 MKN ASZ IUNBOX CF CONS CONSNL LIST2 BHC KT KNIL ENTER4) @   P �    �  � H      @   x   h   `   0 �    ` �  h h c h V 
 �  ? 8 �  �  � X " x    �  H    u p � 
H N  . @  h  X   x        
\ADJUST.USERNAME BINARY
    )        �-.          ,<   Z` 3B   +   �2B  !+   �Z   3B   +   ,<  �,<` �$  "2B   +   ,<` �,<  �Z  �F  #XB` �+   2B  �+   �,<  $,<` �$  "XBp  3B   +   ,<` �,<  � w/"  �,   F  %XB` �+   2B  �+   �,<` �"  &XB` �+   2B  �+   Z   3B   +   ,<  ',<` �$  "2B   +   ,<` �,<  'Z  �F  #XB` �Z` �+    fU=]9U       (NAME . 1)
(OSTYPE . 1)
(VARIABLE-VALUE-CELL DEFAULTREGISTRY . 19)
(VARIABLE-VALUE-CELL CH.DEFAULT.DOMAIN . 57)
IFS
"."
STRPOS
"."
PACK*
LOCAL
"."
1
SUBSTRING
UNIX
L-CASE
NS
:
(URET1 MKN KNIL ENTER2)   �    �    �  �    8 �       
\ENCRYPT.PWD BINARY
        �    �    -.           �,<   ,<  ,<` �,<w�,<` �,<w�$  �2B   +   �Z` �/  +    ,   F"  �,   B  F  � p  ."  �,   XBp  +   �Zw�+     (STR . 1)
1
NTHCHARCODE
CHARACTER
RPLSTRING
(MKN IUNBOX URET2 BHC KNIL ENTER1)   @ �    �          x    ` �       
\DECRYPT.PWD BINARY
        �    �    -.           �,<` �"  B  �,~       (STR . 1)
CONCAT
\ENCRYPT.PWD
(ENTER1)      
(PRETTYCOMPRINT PASSWORDSCOMS)
(RPAQQ PASSWORDSCOMS ((FNS LOGIN SETPASSWORD \INTERNAL/GETPASSWORD \LOGIN.READ \ADJUST.USERNAME 
\ENCRYPT.PWD \DECRYPT.PWD) (DECLARE: DONTEVAL@LOAD COPYWHEN (NEQ (COMPILEMODE) (QUOTE D)) (* 
INTERLISP-D handles this special) (ADDVARS (BEFORESYSOUTFORMS (CLRHASH LOGINPASSWORDS)) (
BEFOREMAKESYSFORMS (CLRHASH LOGINPASSWORDS)))) (P (MOVD? (QUOTE NILL) (QUOTE CLBUFS)) (MOVD? (QUOTE 
NILL) (QUOTE CREATE.MONITORLOCK))) (INITVARS (LOGINPASSWORDS (LIST (HARRAY 8))) (\GETPASSWORD.LOCK (
CREATE.MONITORLOCK "GetPassword")) (DEFAULTREGISTRY) (\AFTERLOGINFNS) (PASSWORDPROMPTREGION (QUOTE (
262 466 500 100)))) (DECLARE: EVAL@COMPILE DONTCOPY (GLOBALVARS LOGINPASSWORDS USERNAME 
\GETPASSWORD.LOCK DEFAULTREGISTRY \AFTERLOGINFNS PASSWORDPROMPTREGION) (PROP DMACRO EMPASSWORDLOC) (
EXPORT (MACROS \DECRYPT.PWD.CHAR)) (LOCALVARS . T)) (COMS (* Here is the real PROMPTFORWORD stuff) (
FNS) (INITVARS (\PROMPTFORWORD.CURSOR NIL)) (DECLARE: EVAL@COMPILE DONTCOPY (CONSTANTS (
\PROMPTFORWORD.BUFFERSIZE 256)) (GLOBALVARS \PROMPTFORWORDTTBL \PROMPTFORWORD.BUFFER 
\PROMPTFORWORD.LOCK \PROMPTFORWORD.TIMER \PROMPTFORWORD.CURSOR) (SPECVARS TERMINCHARS.LST)) (DECLARE: 
DONTEVAL@LOAD DOCOPY (INITVARS (\PROMPTFORWORDTTBL NIL) (\PROMPTFORWORD.BUFFER NIL) (
\PROMPTFORWORD.LOCK (CREATE.MONITORLOCK "PromptForWord")) (\PROMPTFORWORD.TIMER (SETUPTIMER 0)))))))
(ADDTOVAR BEFORESYSOUTFORMS (CLRHASH LOGINPASSWORDS))
(ADDTOVAR BEFOREMAKESYSFORMS (CLRHASH LOGINPASSWORDS))
(MOVD? (QUOTE NILL) (QUOTE CLBUFS))
(MOVD? (QUOTE NILL) (QUOTE CREATE.MONITORLOCK))
(RPAQ? LOGINPASSWORDS (LIST (HARRAY 8)))
(RPAQ? \GETPASSWORD.LOCK (CREATE.MONITORLOCK "GetPassword"))
(RPAQ? DEFAULTREGISTRY)
(RPAQ? \AFTERLOGINFNS)
(RPAQ? PASSWORDPROMPTREGION (QUOTE (262 466 500 100)))
(RPAQ? \PROMPTFORWORD.CURSOR NIL)
(RPAQ? \PROMPTFORWORDTTBL NIL)
(RPAQ? \PROMPTFORWORD.BUFFER NIL)
(RPAQ? \PROMPTFORWORD.LOCK (CREATE.MONITORLOCK "PromptForWord"))
(RPAQ? \PROMPTFORWORD.TIMER (SETUPTIMER 0))
(PUTPROPS PASSWORDS.10 COPYRIGHT ("Xerox Corporation" 1984))
NIL
   