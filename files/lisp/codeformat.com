(FILECREATED "30-Dec-83 01:34:00" ("compiled on " <NEWLISP>CODEFORMAT..147) (2 . 2) bcompl'd in WORK 
dated "30-Dec-83 01:23:53")
(FILECREATED "22-FEB-82 16:17:05" <NEWLISP>CODEFORMAT.;1 35739 changes to: CHANGENAME1 RELINK2 CALLS2 
previous date: "21-FEB-80 10:56:11" <LISP>CODEFORMAT.;17)
(MAPC (QUOTE (LAPRD BINRD FNTYP ARGLIST1 LINKBLOCK)) (FUNCTION (LAMBDA (FN) (OR (FMEMB FN NOSWAPFNS) (
SETQ NOSWAPFNS (CONS FN NOSWAPFNS))))))

LAPRD BINARY
                -.          ,<   ,<      2B  +   ,<   Z   D  XBwÿ2B  +   	,<` ,<   F  +    ,<  ,<  $  XBp  3B   +   Zp  ,<  ,<` ,<   ,<w~ "  ,   +    ,<  ,<` $  Z   +    K     (FN . 1)
(VARIABLE-VALUE-CELL FILERDTBL . 9)
PEEKC
% 
READ
BINARY
BINRD
CODEREADER
GETP
"Bad compiled function"
ERROR
(EVCC URET2 KNIL ENTER1)       0     (  @   P   (      

DOLINK BINARY
     `    Õ    ]-.     (     Õ,<   ,<   ,<   Z"   XBp  Z` 3B   +   Z` ."  Z  2B   +   ,<  Ø,<  Y,<  Ù,<` ,<` ,<` ,   ,   XBw "   XBwÿ+   Z` ."  Z  XBwZ` ."  [  (ûA" ÿ,   XBwÿ,<  ^"  X,   ,\  2B  +    "   +   Z` ."  [  A" p,   XBp   "   ,>  U,>   wÿ.Bx  ,^  /     XBwÿZ` ,   XB` Z` ."  Z  2B   +   ,Z` 3B   +   ,Z   2B   +   ,,<  Z,<   $  Ú,<` ,<   $  Ú,<  [,<   $  Ú,<` ,<   $  ÛZ` ,<  Z` ,<  Z` ,<  ,   ,\  2B  +   7Zw,<  Z` ,<  Z` /"  ,<  ,   ,\  2B  +   7+   TZ` 3B   +   ÆZ` ,<  Z` ,<  Z` (B  	,>  U,>  Zwþ.Bx  ,^  /  ,   Z` ,<  Z` /"  ,<   w(B  	,>  U,>  Zw~.Bx  ,^  /  ,   +   T,<` Z` ,   ,<  ,<` &  \,<` Z` ,   ,<  ,<wþ&  Ü,<` Z` /"  ,   ,<  ,<w~&  Ü,<` Z` /"  ,   ,<  Zw,   F  \Z   +      <  ( M  d         (BLKFN . 1)
(REL . 1)
(NM . 1)
(FN . 1)
(NOUNDOFLG . 1)
(VARIABLE-VALUE-CELL NOLINKMESS . 73)
LAMBDA
NOLINKARGS
NOLINKDEF1
******
LISPXPRIN1
" not defined when link tried from "
LISPXPRINT
/FNCLOSERD
/FNCLOSERA
(URET3 FFNCLR FFNOPA FFNOPD KT GUNBOX BHC POPTAB CCALC MKN EXCALQ ALIST3 LIST4 ASZ KNIL ENTER5)   Õ    Æ x   X       @ ª  §    T    ` ? h   8   x   
( O 	8 È (  8   X   H   @    @   
P ¸ ` ¤ 0   X   0        

BINRD BINARY
             -.         Z` 2B   +     B ,   ,<  ,<   ,<   ,<   ,<   ,<   ,<   ,<   ,<   ,<` " Zw|     +    Zw|      ,   XBwüZw|      ,   XBw}Zw|      ,   XBwý,<wü,<wü$ XBw~."  XBwþZw},   4b  ,> ,>  Zw|ZwþQ$I ,^  /  "      wü,> ,>  ,<wý" ,   .Bx  ,^  /  4b  ª,> ,>  Zw|,<  Zw~,> ,>   w}.Bx  ,^  /     ,\  Q$I ,^  /  "     ,<w~^"  ,> ,>   w}.Bx  ,^  /  ,\  QB  ,<w~Zw~,   D Zw|     +    Zwþ,> ,>   w}.Bx  ,^  /  ,<  Zw~,> ,>   w}.Bx  ,^  /  ,<  ,<   Zwÿ,> ,>  Zw   ,^  /  3b  +   í,<` Z   D XBp  -,   +   iZp  2B +   Í,<w,< [w,<  ,<` ,<   * Z` Z   ,   2B   +   ëZ` Z  I,   XB  Ë+   ëZp  2B +   Ñ,<w},<wþ,<w& +   ë[p  -,   +   â[p  Z  2B +   â[p  [  3B   +   â,<w},<wþ[wF ZwZwQD  ,<wZwÿ-,   +   àZwÿZ  2B +   àZwÿ[  ,   +   aZwÿ,\  XB  +   ëZwZp  XD  ,<w[wÿ0B   +   g^"   +   ç[wÿ,\  QB  +   ëZw,<  Zwÿ,\   B  Zw."  XBw+   </  ,<` Z  AD XBwZw|     +    Zw2B   +   t+  Zw,<  ,< $ XBwÿ2B   +   y,< ZwþD  wÿA"ÿXBwÿZw~,> ,>  Zw|      .Bx  ,^  /  XBp  Zw~2B  +  [wXBw+   r,<     ,> ,>  Zw.Bx  ,^  /  ,\  XB  +   úZw|     +    ,<` ,<w~$ Z   /  ,~                 	@@  $@  DhBL"b f4$B      (FN . 1)
(FILE . 1)
(VARIABLE-VALUE-CELL FILERDTBL . 221)
(VARIABLE-VALUE-CELL LINKEDFNS . 153)
INPUT
OPNJFN
READC
ARRAY
MINUS
RELOC
READ
LINKED-FN-CALL
0
DOLINK
VARIABLE-VALUE-CELL
DOVARLINK
UNBOXED-NUM
COREVAL
GETP
"No COREVAL"
ERROR
DEFC
(ASZ CONS FMEMB KT SKLST IUNBOX BHC MKN GUNBOX KNIL ENTER2)  f    M    Ê    È    Ü 
0 Ã         p ÿ h @ 8 · p * x ¡ @          à       x ó 
p K H        p   `        

DOVARLINK BINARY
            -.           [` [  ,   ,<  Z` ,<  [` Z  B  XB` ,\   B  Zp  2B  +   
Z   +    Z` ,>  ,>  Zp  .Bx  ,^  /  XB` Z  XBp  Z` Z` XD  +          @     (ENTRY . 1)
(SLOC . 1)
(LIT . 1)
AT2VC
(BHC URET1 KNIL GUNBOX ENTER3)   `   (        8      

BINRD BINARY
     ¤       -.         Z` 2B   +     b ,   ,<  ,<   ,<   ,<   ,<   ,<   ,<   ,<   ,<   ,<`  Zw|     +    Zw|      ,   XBwüZw|      ,   XBw}Zw|      ,   XBwý,<wü,<wü XBw~."  XBwþZw},   4b  ,> ,>  Zw|ZwþQ$I ,^  /  "      wü,> ,>  ,<wý ,   .Bx  ,^  /  4b  ª,> ,>  Zw|,<  Zw~,> ,>   w}.Bx  ,^  /     ,\  Q$I ,^  /  "     ,<w~^"  ,> ,>   w}.Bx  ,^  /  ,\  QB  ,<w~Zw~,   d Zw|     +    Zwþ,> ,>   w}.Bx  ,^  /  ,<  Zw~,> ,>   w}.Bx  ,^  /  ,<  ,<   Zwÿ,> ,>  Zw   ,^  /  3b  +   í,<` Z   d XBp  -,   +   iZp  2B +   Í,<w,< [w,<  ,<` ,<   
 Z` Z   ,   2B   +   ëZ` Z  I,   XB  Ë+   ëZp  2B +   Ñ,<w},<wþ,<w +   ë[p  -,   +   â[p  Z  2B +   â[p  [  3B   +   â,<w},<wþ[wf ZwZwQD  ,<wZwÿ-,   +   àZwÿZ  2B +   àZwÿ[  ,   +   aZwÿ,\  XB  +   ëZwZp  XD  ,<w[wÿ0B   +   g^"   +   ç[wÿ,\  QB  +   ëZw,<  Zwÿ,\   B  Zw."  XBw+   </  ,<` Z  Ad XBwZw|     +    Zw2B   +   t+  Zw,<  ,<  XBwÿ2B   +   y,< Zwþd  wÿA"ÿXBwÿZw~,> ,>  Zw|      .Bx  ,^  /  XBp  Zw~2B  +  [wXBw+   r,<     ,> ,>  Zw.Bx  ,^  /  ,\  XB  +   úZw|     +    ,<` ,<w~ Z   /  ,~                 	@@  $@  DhBL"b f4$B      (FN . 1)
(FILE . 1)
(VARIABLE-VALUE-CELL FILERDTBL . 221)
(VARIABLE-VALUE-CELL LINKEDFNS . 153)
(NIL)
(LINKED-FN-CALL . INPUT)
(NIL)
(LINKED-FN-CALL . OPNJFN)
(NIL)
(LINKED-FN-CALL . READC)
(NIL)
(LINKED-FN-CALL . ARRAY)
(NIL)
(LINKED-FN-CALL . MINUS)
(NIL)
(LINKED-FN-CALL . RELOC)
(NIL)
(LINKED-FN-CALL . READ)
LINKED-FN-CALL
0
(NIL)
(LINKED-FN-CALL . DOLINK)
VARIABLE-VALUE-CELL
(NIL)
(LINKED-FN-CALL . DOVARLINK)
UNBOXED-NUM
COREVAL
(NIL)
(LINKED-FN-CALL . GETP)
"No COREVAL"
(NIL)
(LINKED-FN-CALL . ERROR)
(NIL)
(LINKED-FN-CALL . DEFC)
(ASZ CONS FMEMB KT SKLST IUNBOX BHC MKN GUNBOX KNIL ENTER2)  `   	P   	(   	   H S 8       P x î   » x /   §      ± 8  h      P   H ÷ 8 W 	0 ¼  	    x   h   0      

CGETD BINARY
              -.           Z` -,   +   b  ,~   ,~       (X . 1)
(NIL)
(LINKED-FN-CALL . GETD)
(SKLA ENTER1)   0      

FNTYP BINARY
      Å    ¸    Ã-.           ¸,<`   93B   +   Z` -,   +   b  :+   Z` ,   (~,   0B   +   
Z  ;,~   0B  +   Z  »,~   0B  +   Z  <,~   0B  +   Z  ¼,~   Z   ,~   Z` -,   +   ."  Z  XB` Z` (BûZ  A"  ."   1B  +   0B  +   ¤Z` ,<  ^"  ,<  ,   ,   0B   +   Z  =,~   0B  +   Z  ½,~   0B  +   ¡Z  >,~   0B  +   £Z  ¾,~   Z   ,~   0B  +   ·Z` 2B  ?+   (Z  ?,~   2B  ¿+   /[` Z  3B   +   .[` Z  -,   +   .Z  @,~   Z  À,~   2B  A+   6[` Z  3B   +   5[` Z  -,   +   5Z  Á,~   Z  B,~   ,<`   Â,~   Z   ,~   f0@
Lf11     (FN . 1)
(NIL)
(LINKED-FN-CALL . SUBRP)
(NIL)
(LINKED-FN-CALL . ARGTYPE)
SUBR
FSUBR
SUBR*
FSUBR*
CEXPR
CFEXPR
CEXPR*
CFEXPR*
FUNARG
LAMBDA
EXPR*
EXPR
NLAMBDA
FEXPR*
FEXPR
(NIL)
(LINKED-FN-CALL . FNTYP1)
(SKNLST FFNOPA TYPTAB ASZ MKN IUNBOX SKLA KNIL ENTER1)  @ -            ¥ (   h    p  P     @           P    2 0 ¤         

ARGLIST BINARY
      î    Z    ë-.          Z,<   ,<`   [3B   +   ,<`   \1B   +   0B  +   ,<`   ]0B  +   
Z  ^+    0B  +   Z  Þ+    0B  +   Z  _+    0B  +   Z  ß+    0B  +   Z  `+    0B  +   Z  à+    Z   +    Z  a+    Z` -,   +   ."  Z  2B   +   ,<` ,<  á  b+   XBp  -,   +   )Zp  3B  c+   2B  ã+   ![p  Z  +    2B  d+   ¤[p  Z  XB` /  +   Zp  ,<  Z   d  ä3B   +   Q[p  Z  +    b  å3B   +   Q,<   ,<   ,<   Zwþ,<  ^"  ,<  ,   ,   XBwZwþ,<  ^"  ,<  ,   ,>  Ù,>  ,<wþ  æ3B   +   6^"  +   ¶Zwþ   ,^  /  /  ,   XBwÿZw0B   +   FZwþ,<  ^"  ,<  ,   ,   1B  +   @0B  +   AZp  +   P1B  +   C0B   +   DZp  +   P,<  ç,<`   h+   PZwþ,<   w,>  Ù,>   wþ/"  ,   XBwþ,   .Bx  ,^  /  ,<  ,   b  iZp  ,   XBp  +   ¹/  +    ,<` ,<     jXBp  3B   +   WZ` 3B  +   WXB` /  +   ,<  k,<`   hZ   +      U,f31\^E
  Ê 
UØ !4     (FN . 1)
(VARIABLE-VALUE-CELL LAMBDASPLST . 75)
(NIL)
(LINKED-FN-CALL . SUBRP)
(NIL)
(LINKED-FN-CALL . ARGTYPE)
(NIL)
(LINKED-FN-CALL . NARGS)
((U) . 0)
((U V) . 0)
((U V W) . 0)
((U V W FN) . 0)
((U V W FN Y) . 0)
((U V W FN Y Z) . 0)
U
EXPR
(NIL)
(LINKED-FN-CALL . GETP)
LAMBDA
NLAMBDA
FUNARG
(NIL)
(LINKED-FN-CALL . MEMB)
(NIL)
(LINKED-FN-CALL . CCODEP)
(NIL)
(LINKED-FN-CALL . SWPARRAYP)
"Args not available:"
(NIL)
(LINKED-FN-CALL . ERROR)
(NIL)
(LINKED-FN-CALL . VCTOAT)
(NIL)
(LINKED-FN-CALL . FNCHECK)
"Args not available:"
(KT CONS IUNBOX FFNOPA MKN FFNOPD BHC SKLST SKLA URET1 ASZ KNIL ENTER1)   
(   	x   	8   	` > (   	( ¾  ¯    /    W 
 M  ¤            Z 
 ©   X  (  h  (   0 B   ? 0    P     `    T P ¬ @ « ( §    @        

NARGS BINARY
        /    ©    ­-.           ©,<`   *3B   +   Z` -,   +   ."  [  (ý+   Z` ,   A"  ,   ,~   ,<` Zp  -,   +   b  ++   /  XB` (BûZ  A"  ."   0B  +   Z` ."  [  ,   ,~   0B  +   Z` ,<  ^"  ,<  ,   ,   ,~   0B  +   ¨Z` 3B  ,+   2B  ¬+   ¤[` Z  XB` 2B   +   Z"   ,~   -,   +    Z"  ,~   Z` g  [  2B   9  ¡   ,   ,~   2B  -+   §[` Z  XB` +   Z   ,~   Z   ,~    8x"1    (FN . 1)
(NIL)
(LINKED-FN-CALL . SUBRP)
(NIL)
(LINKED-FN-CALL . GETD)
LAMBDA
NLAMBDA
FUNARG
(SKNLST FFNOPD ASZ TYPTAB BHC MKN IUNBOX SKLA KNIL ENTER1)   x   p                    ¤ x        8     ©  # X        

BINSKIP BINARY
     *      %-.     (    Z` 2B   +     b ,   ,<  Z` 3B   +   
Z` 2B   +     b ,   +   Z   ,<  ,<   ,<   ,<   ,<   ,<   ,<   ,<`  Zwü     +    Zwü      ,   XBwýZwü      ,   XBw~Zwü      ,   XBwþZ` 3B   +   ¼,<` ,<` Z   f ,< ,<`  ,<` ,<` Z  f Zw}     +    Zw},<  Zw},      ,\     Zw},<  Zwý,      ,\     Zw},<  Zw~,      ,\      w~,> ,>   wý,> ,>   wþ   ,^  /  /  .Bx  ,^  /  4b  :,> ,>  Zw},<  Zw|         ,\     >`x  5   ´/  Zw}     +    +   IZwü,<  Zw|   S$ÿ   ,> ,>   wý.Bx   w},> ,>   w~   ,^  /  /  .Bx  ,^  /     ,\     +    Zwü     +    Z` 3B   +   e wþ,> ,>   w~   ,^  /  /  4b  W,> ,>  ,<` Z  d  ,<  ,<` Z  Òf >`x  5   R/  ,<` ,<   Z  Ôf  XBw3B   +   ],<  ,<` Z  Xf +   Þ,< ¡,<`  "Zwg  [  2B   9  ß   ,   XBwÿZw}     +    +   ö wþ,> ,>   w~   ,^  /  /  4b  m,> ,>  ,<`  #>`x  5   ê/  Z"   XBwÿZwü      1B  +   q+   n,<` ,<   Z  Ûf  3B   +   ö wÿ."  ,   XBwÿ+   qZwü     +     "   XBp  Zwÿ0B   +   û+  Z` 3B   +  Zw},<  Zwÿ,<  Zwû      ,\   B     ,\     Zp     1b   +  +   ûZwü      1b   +  +   û[wXBw wÿ/"  ,   XBwÿ+   ùZwü     +    Z` 3B   +  Zw}     +    ,<`  $Z   /  ,~                 	B: (  #"@  	  ("BG!P@1! 2 C!D         (FN . 1)
(FLG . 1)
(FILE1 . 1)
(FILE2 . 1)
(TAG . 1)
(VARIABLE-VALUE-CELL FILERDTBL . 228)
(NIL)
(LINKED-FN-CALL . INPUT)
(NIL)
(LINKED-FN-CALL . OPNJFN)
(NIL)
(LINKED-FN-CALL . OUTPUT)
(NIL)
(LINKED-FN-CALL . READC)
(NIL)
(LINKED-FN-CALL . PRIN2)
1
(NIL)
(LINKED-FN-CALL . SPACES)
(NIL)
(LINKED-FN-CALL . PRINT)
(NIL)
(LINKED-FN-CALL . READ)
%(%)
(NIL)
(LINKED-FN-CALL . PRIN1)
(NIL)
(LINKED-FN-CALL . SKREAD)
(NIL)
(LINKED-FN-CALL . TERPRI)
(UUARG3 ASZ BHC MKN GUNBOX KNIL ENTER5)  ù    { `   @ í  × 
 Ç X º 8 ±    ` â   8   0 § @ 
  P   8 P t ( a ( Ø 	H  h  X  H  0   h        

BINFIX BINARY
      ,      '-.         Z` 2B   +     b ,   ,<  Z` 2B   +     b ,   ,<  ,< ,<   ,<   ,<   ,<   ,<   ,<   ,<   ,<` ,<` Z   f ,< ,<`  ,< ,<` Z  f Zw|     +    Zw|,<  ,<` Z  d  XBwü,      ,\     Zw|,<  ,<` Z  d  XBw},      ,\     Zw|,<  ,<` Z  d  XBwý,      ,\     ,<` Z  d !Zw|,<  Zw{ &     Ê"$     +          ,\     Zwû      ,   XBwþ0B  +   ®+   ª0B  +   @,<` Z  £d !XBwþZwþZw7  [  Z  Z  1H  +   ¶2D   +   3XBp  3B   +   »,<  Zw|[wÿ,   ,\  QB  +   ¾,<wþ,<w|,   Zw,   XBw,<`  "+   C1B  +   C0B  +   Â+   C  # wü."  ,   XBwü wý,> ,>   wü   ,^  /  3b  +   J+   ¤ w~,> ,>   wü   ,^  /  3b  +   T,<` Z  0d  Zwÿ,   XBwÿ wü."  ,   XBwü+   J w},> ,>   wü   ,^  /  3b  +   ßZw|,<  ,<` Z  Od  ,      ,\      wü."  ,   XBwü+   TZw|     +    ,<wÿ £,<  Zp  -,   +   e+   jZp  ,<  ,<p  ,<` Z  Zf /  [p  XBp  +   c/  Zw3B   +   ú,<  ,<   Zwÿ-,   +   óZp  Z   2B   +   ñ "  +   s[  QD   "  +   ÷ZwÿZ  Zp  ,   XBp  [wÿXBwÿ+   m/  ,<  ,<` Z  gf +   |,< ¤,<`  %Zw|     +    ,<wZp  -,   +  +  Zp  ,<  [p  ,<  Zp  -,   +  +  Zp  ,<  Zwz,<   wÿ."     ,\     /  [p  XBp  +  /  Zw{     /  [p  XBp  +   þ/  Zw|     +    ,<`  &Z   /  ,~                 	     CH ì   @@ $H\  
A(@!j BD         (FN . 1)
(FILE1 . 1)
(FILE2 . 1)
(VARIABLE-VALUE-CELL FILERDTBL . 242)
(NIL)
(LINKED-FN-CALL . INPUT)
(NIL)
(LINKED-FN-CALL . OPNJFN)
(NIL)
(LINKED-FN-CALL . OUTPUT)
0
(NIL)
(LINKED-FN-CALL . PRIN2)
1
(NIL)
(LINKED-FN-CALL . SPACES)
BINARY
(NIL)
(LINKED-FN-CALL . PRINT)
(NIL)
(LINKED-FN-CALL . READ)
(NIL)
(LINKED-FN-CALL . RATOM)
(NIL)
(LINKED-FN-CALL . READC)
HELP
(NIL)
(LINKED-FN-CALL . DREVERSE)
%(%)
(NIL)
(LINKED-FN-CALL . PRIN1)
(NIL)
(LINKED-FN-CALL . TERPRI)
(COLLCT SKNLST BHC LIST2 CONS ASZ MKN GUNBOX KNIL ENTER3) `   @  h ä      @
  k  X 	` I    ½    Ñ h º    B  ¯ `   p Ó P -    \        P   8 ð   í @ 8 h  H  8  ( 
  h        

DEFC BINARY
    §        &-.          ,<  ,<` ,<` $  3B   +   ,<`   XB` Z` Z   ,   3B   +   ,<`   Z   3B   +   2B   +   ,<`   3B   +   ,<` ,<      Z  2B   +   Z` Z  ¡,   ,<  ,<   ,<     ",<`   #,<` ,<`   $+   ,<` ,<wÿ,<`   %Z` +    (U@       (NM . 1)
(DF . 1)
(VARIABLE-VALUE-CELL LINKEDFNS . 13)
(VARIABLE-VALUE-CELL DFNFLG . 31)
CODE
MKSWAPP
(NIL)
(LINKED-FN-CALL . MKSWAP)
(NIL)
(LINKED-FN-CALL . RELINK)
(NIL)
(LINKED-FN-CALL . GETD)
(NIL)
(LINKED-FN-CALL . VIRGINFN)
((redefined) . 0)
(NIL)
(LINKED-FN-CALL . PRINT)
(NIL)
(LINKED-FN-CALL . SAVEDEF)
(NIL)
(LINKED-FN-CALL . PUTD)
(NIL)
(LINKED-FN-CALL . PUTPROP)
(URET1 CONS KT FMEMB KNIL ENTER2)            @  @         0   H      

CHANGENAME1 BINARY
     í    Z    ê-.            Z-.       \    \,<wþ  \3B   +   ,<  ],<   ,<   @  Ý ` +   Z   Z  _XB Zwÿ,<?ÿ,<?,<?þ  ß+    +    ,<wþ  à3B   +    ,<wþ  á,<  ,<w~  â,<  ,<   ,<   ,<    w~,>  Y,>   wþ   ,^  /  2B  +   Zwÿ+   ÄZw|,<   wý,<  ,   XBwZw|,<   wý,<  ,   XBp  3B  Ù+   ¦Zwü2B  +   B,<w| wý,   ,<  ,<w|,<w|  ãZ   XBwÿ+   BZwüZw2B  +   -,<w| wý,   ,<  ,<w|  äZ   XBwÿ+   BZw-,   +   ¼,<  ,<  å  f,<  Z"   ,\  2B  +   B,<w,<  g  f,<  Z"  ,\  2B  +   B,<w  ç,<  ,<w|,<w|,<w|,  3B   +   BZ   XBwÿ+   B-,   +   >+   B,<  ,<w|,<w|,  Å3B   +   BZ   XBwÿ w~."   $   @w~+   /  +    ,<   Zwÿ-,   +   ÈZp  +    ZwZwÿ2B  +   Í,<wÿ,<w~  èZ   XBp  +   R,<wþ,<wþZwþ,<  ,  Å3B   +   RZ   XBp  Zw3B   +   ×[wÿ2B  +   ×,<wÿ,<w~  éZ   +    [wÿXBwÿ+   F       Y(	 $ I0XPRb@AH($B     (DEF . 1)
(X . 1)
(Y . 1)
(FN . 1)
(NIL)
(LINKED-FN-CALL . EXPRP)
((DUMMY) . 0)
(0 . 1)
(0 . 1)
(0 . 1)
ERRORSET
(NIL)
(LINKED-FN-CALL . ESUBST)
(NIL)
(LINKED-FN-CALL . CCODEP)
(NIL)
(LINKED-FN-CALL . FIRSTLIT)
(NIL)
(LINKED-FN-CALL . LASTLIT+1)
(NIL)
(LINKED-FN-CALL . DOLINK)
(NIL)
(LINKED-FN-CALL . /FNCLOSERA)
-5
(NIL)
(LINKED-FN-CALL . NTHCHARCODE)
-4
(NIL)
(LINKED-FN-CALL . GETD)
(NIL)
(LINKED-FN-CALL . /RPLACA)
(NIL)
(LINKED-FN-CALL . /RPLACD)
(FIXT SKNLST ASZ SKLA KT MKN FFNOPD FFNOPA BHC URET4 CONSNL CF KNIL BLKENT ENTER4)   @   x ½    µ    h   
x R 	P B @ ¬ `   ( £            Å x     I `  X   P      
8 Q h A 0  8  p   h            

LINKBLOCK BINARY
      h   þ-.          h-.     (èhk        Æ       ,  ,~   -.    ì,<   Z   2B n+   Z   ,<  Zp  -,   +   +   Zp  ,<  ,  8[p  XBp  +   
/  Z   ,<  Zp  -,   +   +   Zp  ,<  ,  8[p  XBp  +   /  +   7b î3B   +   Z  ,<  ,  8+   7Z  XBp  -,   +    Zp  Z 7@  7   Z  XBp  -,   +   6,<  Zp  -,   +   ¢+   5Zp  ,<  Zp  -,   +   ¦,<  ,  8+   3Zp  2B   +   ±[p  ,<  Zp  -,   +   ++   °Zp  ,<  Zp  -,   +   ®,<  ,  8/  [p  XBp  +   )/  +   3Zp  ,<  ,  8/  [p  XBp  +    /  +   7Z ï+    Z  +    -.    pZ  7-,   +   B,<  ,< q ñ2B   +   ÀZ  9,<  ,< ò ñ2B   +   ÀZ  =."  Z  +   B,<  ,<p   s3B   +    ,<p  ,  Æ+        ,<   ,<   ,<   ,<wþ t3B   +   ÍZwþ,<  ^"  ,<  ,   /"  +   ÓZwþ,<  ^"  ,<  ,   ,> g,>  Zwþ   ,^  /  /  XBwZwþ,<  ^",<  ,   . çXBwÿZwZwÿ2B  +   ÚZ   +    Zwþ,<  Zwþ,<  ,   XBp  ,<   "   ,\  3B  +   lZp  ,<   "   ,\  3B  +   lZp  ,> g,>   "      ,^  /  3"  +   ÷Zp  ,> g,>   "      ,^  /  2b  +   ÷Zwþ,<  Zwþ,<  ,   XBp  -,   +  ,<wþZwþ,   ,<  ,<wZ   2B   +   uZ  @+   õZ   ,<  ,<   , +  Zp  -,   +  ,<  ,< u õ,<  Z"   ,\  2B  +  ,<p  ,< ö õ,<  Z"  ,\  2B  +  ,<p  ,  8+  -,   +  Zp  XBp  -,   +  ,<  ,< u õ,<  Z"   ,\  2B  +  ,<p  ,< ö õ,<  Z"  ,\  2B  +  ,<p  ,  8Zw."  XBw+   ×  (  , ,~   -.   
 w,<   ,<   ,<   Z"   XBp  Z  t3B   +  Z` ."  Z  2B   +  ,< x,< ø,< y,<` ,<` ,<` ,   ,   XBw "   XBwÿ+  °Z` ."  Z  XBwZ` ."  [  (ûA" ÿ,   XBwÿ,<  ^"  X,   ,\  2B  +  ) "   +  0Z` ."  [  A" p,   XBp   "   ,> g,>   wÿ.Bx  ,^  /     XBwÿZ` ,   XB` Z` ."  Z  2B   +  >Z 3B   +  >Z   2B   +  >,< ù,<    z,<` ,<    z,< {,<    zZ ´,<  ,<    ûZ` ,<  Z` ,<  Z` ,<  ,   ,\  2B  +  IZw,<  Z` ,<  Z` /"  ,<  ,   ,\  2B  +  I+  fZ` 3B   +  ØZ` ,<  Z` ,<  Z` (B  	,> g,>  Zwþ.Bx  ,^  /  ,   Z` ,<  Z` /"  ,<   w(B  	,> g,>  Zw~.Bx  ,^  /  ,   +  f,<` Z` ,   ,<  ,<`  ü,<` Z` ,   ,<  ,<wþ ý,<` Z` /"  ,   ,<  ,<w~ ý,<` Z` /"  ,   ,<  Zw,   f üZ   +      i2 I4b,C
¢B-( ! 
À @(eÂBhX,R@  @ IS"      A           (LINKBLOCK#0 . 1)
(VARIABLE-VALUE-CELL SYSLINKEDFNS . 18)
(VARIABLE-VALUE-CELL LINKEDFNS . 31)
(VARIABLE-VALUE-CELL UNLINKFLG . 229)
(VARIABLE-VALUE-CELL FN . 376)
(VARIABLE-VALUE-CELL NOLINKMESS . 364)
RELINK
RELINK2
DOLINK
*RELINK*
((UNBOXED-NUM . 1) VARIABLE-VALUE-CELL FN . 0)
((UNBOXED-NUM . 2) VARIABLE-VALUE-CELL UNLINKFLG . 0)
WORLD
(NIL)
(LINKED-FN-CALL . ARGTYPE)
?
*RELINK1*
((UNBOXED-NUM . 1) VARIABLE-VALUE-CELL FN . 0)
BROKEN
(NIL)
(LINKED-FN-CALL . GETP)
ADVISED
(NIL)
(LINKED-FN-CALL . CCODEP)
(NIL)
(LINKED-FN-CALL . SWPARRAYP)
-5
(NIL)
(LINKED-FN-CALL . NTHCHARCODE)
-4
*DOLINK*
((UNBOXED-NUM . 4) VARIABLE-VALUE-CELL FN . 0)
LAMBDA
NOLINKARGS
NOLINKDEF1
******
(NIL)
(LINKED-FN-CALL . LISPXPRIN1)
" not defined when link tried from "
(NIL)
(LINKED-FN-CALL . LISPXPRINT)
(NIL)
(LINKED-FN-CALL . /FNCLOSERD)
(NIL)
(LINKED-FN-CALL . /FNCLOSERA)
(URET3 FFNCLR GUNBOX POPTAB ALIST3 LIST4 ASZ MKN EXCALQ HCCALQ SBCALQ CCALC URET4 KT FFNOPD FFNOPA 
SKLA URET1 SKLST KNOB BHC SKNLST KNIL BINDB BLKENT ENTER1) x   Ñ   f     P   `   X   X   @   Ha XÚ @' P r        X        _    [   > @º  w (     o 
p   x Ý 
 M     p (   h E  ·        h    Q   ë p Ó ` 4  ¯ h     ­ ( %         g (· `´  P @ v @ J 	 H x Ä   =        0 9  p    (      

RELINK BINARY
             -.           ,<    ,~       (VARIABLE-VALUE-CELL FN . 0)
(VARIABLE-VALUE-CELL UNLINKFLG . 0)
RELINK
(NIL)
(LINKED-FN-CALL . LINKBLOCK)
(ENTERF)    

RELINK2 BINARY
            -.           ,<    ,~       (DEF . 1)
RELINK2
(NIL)
(LINKED-FN-CALL . LINKBLOCK)
(ENTER1)    

DOLINK BINARY
             -.     (      ,<    ,~       (BLKFN . 1)
(REL . 1)
(NM . 1)
(VARIABLE-VALUE-CELL FN . 0)
(NOUNDOFLG . 1)
DOLINK
(NIL)
(LINKED-FN-CALL . LINKBLOCK)
(ENTERF)     

CALLSCCODE BINARY
     î   P   ä-.          P-.     (Q   Ó-.    Ó@ Ô   ,~   ZwZ8 -,   +   	b ÖZwXB8 b ×2B   +   Zw,<8 ,< Ø YZw,<8 ,<   /  ,  Z   ,<  Z   ,<  Z   ,<  Z   ,<  ,   ,~   ,<p   Z,<  ,<wÿ [,<  ,<w \,<  ,<wþ ],<  ,<w~ ^,<  ,< _,<   ,<   ,<   ,<   Z  ,<  ,<wú,<w{,<wû,<   , ·d ßXB  Z  ,<  ,<wú w{,> O,>   w|.Bx  ,^  /  ,   ,<  ,<w|,<   , ·d àXB  ¢ w~."   $   @w~,   ,> O,>   w|   ,^  /  2B  +   · w|,> O,>   w}.Bx   wý.Bx  ,^  /  ,   XBw~+  Zw{,<   wý,<  ,   (û,   XBwþ,<  ^"  ,   ,\  3B  +   BZwþ,<  ^"  ,   ,\  2B  +   ÚZ   2B   +   +Zw{,<  Zw{3B   +   L^",> O,>  Zwú,<   w},<  ,   .Bx  ,^  /  +   RZwú,<   w},<  ,   ,> O,>  Zwú   ,^  /  /  ,<  ,   XBw-,   +   +ZwZ  ,   2B   +   +Z  U,<  Zwþ,   d ßXB  W+   +Zwþ,<  ^"  X,   ,\  2B  +   üZ  B2B   +   +Zw{,<   wý,<  ,   ,<   "   ,\  2B  +   +Zw{,<  Zw{3B   +   í^",> O,>  Zwú,<   w}/"  ,<  ,   .Bx  ,^  /  +   tZwú,<   w}/"  ,<  ,   ,> O,>  Zwú   ,^  /  /  ,<  ,   XBw-,   +   +ZwZ  Ù,   2B   +   +Z  w,<  Zwþ,   d ßXB  y+   +Zwþ,<  ^"  
,   ,\  3B  +  Zwþ,<  ^"  ,   ,\  3B  +  Zwþ,<  ^"  ,   ,\  2B  +   Z  ^2B   +   +Zw{,<  Zw{3B   +  ^",> O,>  Zwú,<   w},<  ,   .Bx  ,^  /  +  Zwú,<   w},<  ,   ,> O,>  Zwú   ,^  /  /  ."  ,<  ,   XBw-,   +   +ZwZ  ,   2B   +   +Z ,<  Zwþ,   d ßXB +   +Zwþ,<  ^"  ,   ,\  2B  +  J,<w{Zw{3B   +  ,^",> O,>  Zwú,<   w},<  ,   .Bx  ,^  /  ,   +  ²Zwú,<   w},<  ,   ,> O,>  Zwú   ,^  /  /  ,   XBwþ,<  Zwz,<   wü."  ,<  ,   (û,   XBwþ,<  ,<   , ·,<  ,<wú w~,> O,>   wþ.Bx  ,^  /  ,   ,<  Zwù,<   w|."  ,<  ,   A" ÿ,   ,<  ,<   , ·d ßXBp  Z  ",<  d ßXB Å w~."   $   @w~+   +Zwþ,<  ^"  ,   ,\  2B  +  gZ G,<  ,<wúZwú3B   +  Ö^",> O,>  Zwz,<   wü,<  ,   .Bx  ,^  /  +  ÜZwz,<   wü,<  ,   ,> O,>  Zwz   ,^  /  /  ."  ,   ,<  Zwù,<   w|."  ,<  ,   /"  ,   ,<  ,<   , ·d ßXB Í w~."   $   @w~+   +Zwþ,<  ^"  Ú,   ,\  2B  +   +Zw{,<   wý,<  ,   XBw,<   "   ,\  3B  +  sZw,<   "   ,\  2B  +   +Z d,<  ,<wúZwú3B   +  ~^",> O,>  Zwz,<   wü."   $   @wü,   ,<  ,   .Bx  ,^  /  +  Zwz,<   wü."   $   @wü,   ,<  ,   ,> O,>  Zwz   ,^  /  /  ."  ,   ,<  Zwù,<   w|,<  ,   (B}A"  ,   ,<  ,<   , ·d ßXB s+   + w~,> O,>   wü   ,^  /  2B  +  Z   /  ,~   Zw{,<   wý,<  ,   XBw-,   +  Zw,<  , '+  ¤Z 2B   +  ¤Zw-,   +  ¤ZwZ  û,   2B   +  ¤ZwZ ,   2B   +  ¤,<w, '3B   +  ¤ w~."   $   @w~+  ,<p  ,< á b,<  Z"   ,\  2B  +  ³,<p  ,< c b,<  Z"  ,\  2B  +  ³,<p   ÖXBp  3B   +  ³b ×3B   +    +  ´Z   +    ,<p  ,<   /  ,  Z   +    ,<   ,<   Zwþ0B   +  ;Zwÿ+    Zw3B   +  CZwý,<   wý,> O,>   w~.Bx  ,^  /  . Ï,<  ,   +  IZwý,<   wý,> O,>   w~.Bx  ,^  /  . Ï,<  ,   b ãXBp  -,   +  ÌZwÿ,   XBwÿ wþ/"  ,   XBwþ+  ¸  ÿ`e $J  @ 
 A !@H 	  @(   @  @A   0 @   P!0X© ! I @      (DEF . 1)
(VARIABLE-VALUE-CELL VARSFLG . 565)
(VARIABLE-VALUE-CELL BOUND . 577)
(VARIABLE-VALUE-CELL FREEVARS . 85)
(VARIABLE-VALUE-CELL VARSFLG . 0)
(VARIABLE-VALUE-CELL CALLED . 572)
(VARIABLE-VALUE-CELL LNCALLED . 318)
*CALLSCCODE*
((UNBOXED-NUM . 2) VARIABLE-VALUE-CELL VARSFLG . 0)
(NIL VARIABLE-VALUE-CELL CALLED . 0)
(NIL VARIABLE-VALUE-CELL LNCALLED . 0)
(NIL VARIABLE-VALUE-CELL BOUND . 0)
(NIL VARIABLE-VALUE-CELL FREEVARS . 0)
(NIL)
(LINKED-FN-CALL . GETD)
(NIL)
(LINKED-FN-CALL . CCODEP)
"not compiled code"
(NIL)
(LINKED-FN-CALL . ERROR)
(NIL)
(LINKED-FN-CALL . SWPARRAYP)
(NIL)
(LINKED-FN-CALL . FIRSTLIT)
(NIL)
(LINKED-FN-CALL . LASTLIT+1)
(NIL)
(LINKED-FN-CALL . NARGS)
(NIL)
(LINKED-FN-CALL . NFRVARS)
0
(NIL)
(LINKED-FN-CALL . NCONC)
(NIL)
(LINKED-FN-CALL . UNION)
-5
(NIL)
(LINKED-FN-CALL . NTHCHARCODE)
-4
(NIL)
(LINKED-FN-CALL . VCTOAT)
(CONS URET6 URET1 ASZ SKLST BINDLA KT EFNCAL CONSNL FMEMB FFNOPA FFNOPD IUNBOX FIXT MKN LIST4 BHC KNIL
 SKLA BINDB BLKENT ENTERF)  )H   '8   ' 5 &8   ' . %    #       &x6 !Pã H   8   p û    $  @ ø 
h   )  0ü Xá U p* @ X q @ â 
8 O 	(   (0 (7  º    8 .   ¦  ú hÉ P   )h  xé (^ HÃ p8 0, ( (  P A X » p ¨       H (¶ "H  `~ HÖ h2 8  t X R 	@ ¶  ( p   'H9 '´ &0± $H¢ $  "@v ¹ X 0  g x W ` Ã   ¡ h  X  h    K #X h Ô  x   p            

FIRSTLIT BINARY
             -.           ,<` "  3B   +   Z` ,<  ^"  ,<  ,   .  ,   ,~   Z` ,<  ^"  ,<  ,   ,>  ,>  Z`    ,^  /  /  ,   ,~       (HANDLE . 1)
SWPARRAYP
(BHC MKN FFNOPA KNIL ENTER1)   X   h       h    8      

FNTYP1 BINARY
             -.            Z   ,~       (KNIL ENTER0)    (      

LASTLIT+1 BINARY
               -.           Z` ,<  ^",<  ,   .  ,   ,~       (HANDLE . 1)
(MKN FFNOPD ENTER1)    X    H      

NFRVARS BINARY
            -.           ,<   Z` ,<  ^"  ,<  ,   0B   +   Z` ,<  ^"  ,<  ,   XBp  ,<   "   ,\  3B  +   Zp  ,<   "   ,\  2B  +   Z` ,<  ^"  ,<  ,   ,   +    Z` ,<  ^"  ,<  ,   ,   +     A      (ADR . 1)
(URET1 MKN SBLKNT BLKENT FFNOPA FFNOPD KNIL ENTER1)       P         
                     

NOLINKDEF1 BINARY
        ¨         '-.          Z   ,<  @  ¢  ,~   Z   0B   +   +   
,<  £,<  $$  ¤Z` ,   XB` >  +   ZwZ8 3B   +   -,   +      %ZwZ8 ."  Z  3B   +   Zw,<8 ,<8 ,<8 ,<   ,<   *  ¥Zw,<8 ,<` $  &,~   Zw,<8 ,<` $  ¦,<  ZwþZ8 ."  Z  3B   +   Zwþ,<8 ,<8 ,<8 ,<   ,<   *  ¥,\  ,~   BB      (FN . 1)
(REL . 1)
(NAME . 1)
(VARIABLE-VALUE-CELL NOLINKARGS . 3)
(VARIABLE-VALUE-CELL I . 18)
NIL
NOLINKARGS
I
ARG
HELP
DOLINK
APPLY
FAULTAPPLY
(KT SKNLA KNIL CONS ASZ ENTER3) x  @               	           

COREVAL BINARY
              -.          ,<` ,<  $  ,   ,~       (X . 1)
COREVAL
GETP
(GUNBOX ENTER1)   @      

OPD BINARY
        
        -.          ^" ÿ,>  ,>  ,<` ,<  $  	,   (BûABx  ,^  /  ,~     `   (X . 1)
OPD
GETP
(BHC IUNBOX ENTER1)   x    X      

PRFNOPENADR BINARY
             -.           Z   3B   +   ^",>  ,>  Z   ,<      ,<  ,   .Bx  ,^  /  ,   ,~   Z  ,<     ,<  ,   ,>  ,>  Z     ,^  /  /  ,   ,~     @       (VARIABLE-VALUE-CELL HANDLE . 26)
(VARIABLE-VALUE-CELL N . 21)
(VARIABLE-VALUE-CELL SWAPPEDFLG . 3)
(MKN BHC FFNOPA KNIL ENTERF)       x 	      x    0      
(PRETTYCOMPRINT CODEFORMATCOMS)
(RPAQQ CODEFORMATCOMS ((DECLARE: FIRST (P (MAPC (QUOTE (LAPRD BINRD FNTYP ARGLIST1 LINKBLOCK)) (
FUNCTION (LAMBDA (FN) (OR (FMEMB FN NOSWAPFNS) (SETQ NOSWAPFNS (CONS FN NOSWAPFNS)))))))) (FNS * 
CODEFORMATFNS) (BLOCKS * CODEFORMATBLOCKS) (DECLARE: DOEVAL@COMPILE (PROP MACRO COREVAL OPD) DONTCOPY 
(PROP MACRO OBIN OBOUT OSFBSZ OSIN ONIN ORFPTR OSFPTR CGETD PRFNOPENADR)) (DECLARE: DONTEVAL@LOAD 
DOEVAL@COMPILE DONTCOPY COMPILERVARS (ADDVARS (NLAMA) (NLAML OPD COREVAL NOLINKDEF1) (LAMA)))))
(RPAQQ CODEFORMATFNS (LAPRD BINRD BINSKIP BINFIX DOVARLINK DOLINK ARGLIST CGETD CHANGENAME1 
CHANGENAME2 DEFC FIRSTLIT FNTYP FNTYP1 LASTLIT+1 NARGS NFRVARS RELINK RELINK1 RELINK2 NOLINKDEF1 
CALLSCCODE CALLS1 CALLS2 MAKELIST PRFNOPENADR COREVAL OPD))
(RPAQQ CODEFORMATBLOCKS ((NIL LAPRD DOLINK BINRD DOVARLINK (LOCALVARS . T) (GLOBALVARS LINKEDFNS 
FILERDTBL NOLINKMESS)) (NIL BINRD CGETD FNTYP ARGLIST NARGS BINSKIP BINFIX DEFC (LINKFNS . T) (
NOLINKFNS MKSWAPP) (LOCALVARS . T) (GLOBALVARS DFNFLG LINKEDFNS FILERDTBL LAMBDASPLST)) (CHANGENAME1 
CHANGENAME1 CHANGENAME2) (LINKBLOCK RELINK RELINK1 RELINK2 DOLINK (ENTRIES RELINK RELINK2 DOLINK) (
GLOBALVARS SYSLINKEDFNS NOLINKMESS LINKEDFNS) (SPECVARS UNLINKFLG FN)) (CALLSCCODE CALLSCCODE CALLS1 
CALLS2 MAKELIST (LOCALFREEVARS BOUND FREEVARS CALLED LNCALLED VARSFLG)) (NIL FIRSTLIT FNTYP1 LASTLIT+1
 NFRVARS NOLINKDEF1 COREVAL OPD (LOCALVARS . T))))
(PUTPROPS COREVAL MACRO ((X) (ASSEMBLE NIL (MOVEI 1 , X))))
(PUTPROPS OPD MACRO (X (LIST (QUOTE VAG) (LLSH (GETP (CAR X) (QUOTE OPD)) -9))))
NIL
 