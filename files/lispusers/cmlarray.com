(FILECREATED "22-OCT-83 04:17:34" ("compiled on " <LISPUSERS>CMLARRAY.;63) (2 . 2) recompiled exprs: 
\BubbleWORDSET \BubbleWORDSET in WORK dated "26-SEP-83 00:54:17")
(FILECREATED "22-OCT-83 04:17:04" <LISPUSERS>CMLARRAY.;63 56937 changes to: (VARS CMLARRAYCOMS) 
previous date: "29-SEP-83 00:20:20" <LISPUSERS>CMLARRAY.;62)

\BubbleWORDSET BINARY
    ,    £    ª-.           £Z   ,<  ,<   $  %,<  [  Z  ,<  ,<   $  %,<  [  [  Z  ,<  ,<   $  %,<  @  ¥ ` ,~   Z   3B   +   Z   ,<  ,<  'F  §XB  Z   ,<  Z   D  (3B   +   Z  ,<  Z  D  (3B   +   Z   ,<  Z  ,<  Z  ,<  Z  ,<  ,   ,~   ,<  ¨,<  ),<  ©Z  ,<  Z  ,<  Z  ,<  ,<  *,   ,   ,<  Z  ,<  ,   ,~   B°"@      (VARIABLE-VALUE-CELL X . 14)
(VARIABLE-VALUE-CELL FUNNAME . 57)
(VARIABLE-VALUE-CELL SHIFTFORM . 24)
LISPFORM.SIMPLIFY
(VARIABLE-VALUE-CELL VAL . 67)
(VARIABLE-VALUE-CELL BASE . 59)
(VARIABLE-VALUE-CELL OFFST . 61)
DATUM
SUBST
ARGS.COMMUTABLEP
LAMBDA
((\Val) . 0)
((DECLARE (SPECVARS \Val)) . 0)
\Val
(LIST2 ALIST4 LIST4 KNIL KT ENTERF) 8            0     
  h        
\BubbleWORDSET BINARY
      ,    £    ª-.           £Z   ,<  ,<   $  %,<  [  Z  ,<  ,<   $  %,<  [  [  Z  ,<  ,<   $  %,<  @  ¥ ` ,~   Z   3B   +   Z   ,<  ,<  'F  §XB  Z   ,<  Z   D  (3B   +   Z  ,<  Z  D  (3B   +   Z   ,<  Z  ,<  Z  ,<  Z  ,<  ,   ,~   ,<  ¨,<  ),<  ©Z  ,<  Z  ,<  Z  ,<  ,<  *,   ,   ,<  Z  ,<  ,   ,~   B°"@      (VARIABLE-VALUE-CELL X . 14)
(VARIABLE-VALUE-CELL FUNNAME . 57)
(VARIABLE-VALUE-CELL SHIFTFORM . 24)
LISPFORM.SIMPLIFY
(VARIABLE-VALUE-CELL VAL . 67)
(VARIABLE-VALUE-CELL BASE . 59)
(VARIABLE-VALUE-CELL OFFST . 61)
DATUM
SUBST
ARGS.COMMUTABLEP
LAMBDA
((\Val) . 0)
((DECLARE (SPECVARS \Val)) . 0)
\Val
(LIST2 ALIST4 LIST4 KNIL KT ENTERF) 8            0     
  h        

\NONDADDARITH.TRAMPOLINE BINARY
    H    ·    F-.          ·,<  8"  ¸B  9,<  @  ¹   ,~   Z   Z  :,   2B   +   Z  3B   +   -,   +   B  º,      ^"  2"  +   Z  ,<  ,<  ;,<  »&  <Z  ¼,   3B   +   Z  ,<  ,<  =,<  ½&  <3B  >+   ,<  ¾"  ?Z  ,<  ,<   $  ¿,<  @"  ÀZ  B  A2B   +   Z  ¾,<  Z  D  ÁZ  ,<  ,<  B$  Â+   6Z  ,<  Z   ,<  @  C   
+   µZ"  XB      £,>  7,>   `    ,^  /  3b  +   )+   ´   $.wZ  XB` Z` 3B   +   0,<  Z` ,   XB` ,\  QB  +   2Z` ,   XB` XB`    )."  ,   XB  2+   $Z` ,~   D  ÅZ   ,~     DKy?G,N
 0     (VARIABLE-VALUE-CELL NARGS . 65)
-1
STKNTH
STKNAME
(VARIABLE-VALUE-CELL FNAME . 63)
((LOADBYTE DEPOSITBYTE) . 0)
NCHARS
2
4
SUBATOM
((GET PUT) . 0)
5
8
BASE
\NONDADDARITH.TRAMPOLINE
SHOULDNT
PUTD
(((SYSLOAD COMPILED FROM LISPUSERS) NONDADDARITH) . 0)
FILESLOAD
DEFINEDP
MOVD
"Apparently not defined in NONDADDARITH file?"
ERROR
(0 . 1)
NIL
NIL
NIL
(NIL VARIABLE-VALUE-CELL I . 103)
APPLY
(MKN CONSNL BHC ASZ IUNBOX SKLA KNIL FMEMB ENTERF)  4    ± h       @   8       p ¬ 0   	  x           
MAKEARRAY BINARY
     ÿ   Ì   u-.         ÌZ   0B   +   Z   +      A"  0B   +   ,< M" Í+   Z` 2B   +   
Z   +   Z` -,   +   Z` ,   ,<  @ N !(,~   Z   3B   +   «,<  Zp  -,   +   +   &Zp  ,<  @ X   +   ¤Z   -,   +      1"   +      1"  +      3" É+   ,< ØZ  D ÍZ  XB       ,> J,>     $Bx  ,^  /  ,   XB      ."  ,   XB  ",~   [p  XBp  +   /     ¡,> J,>        ,^  /  &  ,   XB   @ Y  +   ð   ,> J,>        ,^  /  3b  +   ²Z` ,~      -."  .wZ  XB      ².wZ  2B Ú+   9Z  ´XB   +   n2B [+   ¼Z   XB   Z  ·XB   +   n2B Û+   @Z   XB   Z  ;XB  »+   n2B \+   ÉZ  ¾B Ü3B ]+   FZ  A,<  ,< Ý" ^D Í+   ÆZ  CXB   Z  Æ" Ê,   XB   +   n2B Þ+   MZ  FXB  GZ   XB  È+   n2B _+   YZ  Ê-,   +   ÐZ"  +   Ó   N0"  7   7   +   ÓZ"  XB   3B   +   ×,<  Z  Ð,<  ,   B ßZ  ÕXB   +   n2B `+   gZ  ×-,   +   ÜZ"  +   á"   +   ÞZ   +   a   Z0"  7   7   +   áZ"  XB  Ó3B   +   å,<  Z  Þ,<  ,   B ßZ  ãXB   +   n3B à+   i2B Û+   ë   5.wZ  B a+   n,< á   i.wþZ  D Í   l."  ,   XB  n+   -Z  83B   +   u3B   +   u3B b+   u2B â+   z3B â+   wZ"  +   ÷Z   XB   Z"  XB   Z"  +  ³3B c+   }3B ã+   }2B d+   Z"  XB  øZ"  +  ³3B ä+  2B e+  Z"  XB  ýZ"  +  ³3B å+  2B f+  ,<  ,< æ$ Í+  ³2B g+  
Z"  XB Z"  +  ³3B ç+  2B h+  Z"  XB Z"  +  ³2B è+  Z"  XB Z"  +  ³2B i+  Z"  XB Z"  +  ³-,   Z   Z  2B é+  2[  ð[  2B   +  2[ Z  XB   -,   +  2     ^"  2"  +  2Z 0B  +   Z iXB +   ð0B  +  #Z èXB +   ð0B  +  ¥Z çXB "+   ð2B j+  (Z gXB ¤+   ð  /"  ,   B êXB   *1"  @+  -,< k" ë^"  @,> J,>    ªGBx  ,^  /  ,   XB '+  ³,< lZ 1D ÍXB ²Z  f1B   +  Å   (,> J,>    4/"  .Bx  ,^  /  ,> J,>    7   ,^  /  &  ,> J,>    º$Bx  ,^  /  ,   XB µ   +,> J,>    À$Bx  ,^  /  ,   XB  ¦Z  >3B   +  MZ  º3B   +  J,< ì,< m$ ÍZ  3B   +  M,<  Z  ?D íZ  K3B   +  uZ G2B   +  ÑZ Å3B   +  Ø,< ìZ Î3B   +  ÔZ n+  ×Z P3B   +  WZ î+  ×  ëD Í+  uZ  L2B   +  Ú+  uZ M[ ,   ."  ,> J,>     X   ,^  /  /  ,> J,>    E   ,^  /  2"  +  f,< oZ ÚD Í+  uZ ³1B  +  è0B  +  éZ   +  jZ   XB  á,<  Z Ø1B  +  í0B  +  îZ   +  oZ   ,\  3B  +  uZ j3B   +  sZ ï+  óZ p,<  Z äD ÍZ  £0B   +  Z R3B   +  ù,< ì,< [$ ÍZ Ô3B   +  Z f1B  +  1B  +  1B  +  1B  +  0B  +  Z L-,   +  +  0B  +  Z "   +  +    {0b  @+  Z -,   +  ,< ð,<  ,   B ßZ +  Z 1B  +  0B  +  Z   +  0B  +  Z q+  Z"   XB   +  Z t3B   +  ,< \" a+  Z aB ñXB ,< ]" r,<    u   ,\  d KZ QD  ,<       ,\  d ÊZ   XD  ,<    1"  +  ¢Z JB ò+  #Z"      ,\  QD Z !XD ,<    /"  ,      ,\  QD ,<    >   ,\  d Ë,<  Z (3B   +  ¯,< é,<  ,   +  0Z      ,\  XD ,<    ,> J,>  ^"¿ABx  ,^  /  ,   B s3B   +  ¸^"ÿ+  9^"      ,\  d LXB ðZ ö3B   +  ¾Z ,   XB ¼+  ÆZ ù3B   +  È  /"  4b Æ,> J,>  Z ó,<  Z ½D tXB Ã>`x  5  Â/  Z º,<  Z ÄD ôZ Æ,~           
 (@  GJ"J$] 	 * 3CC\øPD!'ã%~A~>>8FBµ-t#P 'I3ÏL"<IrU&LLÒ.'V,  # *	H              (VARIABLE-VALUE-CELL NARGS . 93)
"Odd # of keywords"
ERROR
(VARIABLE-VALUE-CELL DIML . 585)
(T VARIABLE-VALUE-CELL A.E.TYPE . 612)
(0 VARIABLE-VALUE-CELL #ROWS . 386)
(0 VARIABLE-VALUE-CELL #ELTS/ROW . 389)
(1 VARIABLE-VALUE-CELL #ELTS . 588)
(0 VARIABLE-VALUE-CELL RANK . 640)
(0 VARIABLE-VALUE-CELL ANCHOROFFSET . 572)
(0 VARIABLE-VALUE-CELL DAROFFSET . 443)
(0 VARIABLE-VALUE-CELL THISROWBASE . 0)
(0 VARIABLE-VALUE-CELL ALIGNMENT . 595)
(NIL VARIABLE-VALUE-CELL MOD# . 600)
(NIL VARIABLE-VALUE-CELL DAR . 549)
(NIL VARIABLE-VALUE-CELL DARTYPE . 470)
(NIL VARIABLE-VALUE-CELL IV . 655)
(NIL VARIABLE-VALUE-CELL IEP . 630)
(NIL VARIABLE-VALUE-CELL ICP . 637)
(NIL VARIABLE-VALUE-CELL POINTERP . 239)
(NIL VARIABLE-VALUE-CELL BITSPERELEMENT . 349)
(NIL VARIABLE-VALUE-CELL ANCHOR . 565)
(NIL VARIABLE-VALUE-CELL TEM . 657)
(VARIABLE-VALUE-CELL I . 223)
"Invalid dimension"
NIL
(2 VARIABLE-VALUE-CELL I . 0)
(NIL VARIABLE-VALUE-CELL VAL . 203)
ELEMENTTYPE
INITIALELEMENT
INITIALCONTENTS
DISPLACEDTO
TYPENAME
CMLARRAY
Not% of% type% TYPE
CONCAT
DISPLACEDTOBASE
DISPLACEDINDEXOFFSET
ERRORX
ALIGNMENT
FILLPOINTER
HELP
"Bad keyword"
POINTER
XPOINTER
FIXP
FIXNUM
CELL
FLOATP
FLONUM
WORD
SMALLPOSP
"Only in Interlisp-D"
DOUBLEBYTE
BYTE
CHARACTER
NIBBLE
BIT
MOD
65536
INTEGERLENGTH
"\AT.MOD.BIT"
SHOULDNT
"Bad type specifier"
Inconsistent% options
((INITIALELEMENT INITIALCONTENTS) . 0)
\CML.ICP.CHECK
((DISPLACEDTO INITIALELEMENT) . 0)
((DISPLACEDTO INITIALCONTENTS) . 0)
"Attempt to displace to a cramped array"
"Displaceing pointer array to non-pointer one."
"Displaceing non-pointer array to pointer one."
32
0.0
ARRAY
NCREATE
\MARGINTO
POWEROFTWOP
APPEND
APPLY
FILLARRAY
(FLOATT IUNBOX SKLST SMALLT LIST2 SKNI KT MKN BHC SKI CONSNL SKNLST KNIL ASZ ENTERF)   P   H   P   X   %x X ×       Û 	x   hé 0 a h S h ;   ¶ % Å ±   p 	 « @ "   G &`ã  E =  1  ª p ¡    h   '`      8   ( ¼ &x° %X !p{  r xê  V 8Ñ  Î 8È p X x   c  U 
( Ì   
     £ "  !`  8 xþ Xü hí Hè xµ @¡ p 0   P
     ` z  w   Ü 
@ Ð  0      
\CML.ICP.CHECK BINARY
            -.           Z   ,<  Z   B  ,\  3B  +   ,<  "  ,~   Z  ,<  [  XB  ,\  Z  2B   +   Z   ,~   Z  ,<  Zp  -,   +   Z   +    Zp  ,<  @     +   Z  	,<  Z   D  ,~   [p  XBp  +       (VARIABLE-VALUE-CELL DIML . 35)
(VARIABLE-VALUE-CELL L . 23)
LENGTH
INITIALCONTENTS
ERROR
(VARIABLE-VALUE-CELL LL . 37)
\CML.ICP.CHECK
(URET1 SKNLST KT KNIL ENTERF)                (      
\MARGINTO BINARY
    þ    s    {-.          sZ   ,<  [  2B   +      ô,<  [  [  2B   +   7   Z   ,<  @  u `+   qZ   ,<     
."  (Bÿ,   B  w,<  Zp  ."  ,<  Zw,   ,\   B  Zp  /  /  XB   Z   3B   +   C   /"  ,   ,<  @  ÷  +   Â    ,>  ñ,>   `    ,^  /  3b  +   Z` ,~   Z  ,>  ñ,>     (Bÿ.Bx  ,^  /  ."  ,<     A"  1B   +   ¯Z  ,>  ñ,>     #(Bÿ.Bx  ,^  /  ."     ,>  ñ,>     rABx  Z   A"ÿGBx  ,^  /   $   +   :Z  %,>  ñ,>     ¦(Bÿ.Bx  ,^  /  ."     ,>  ñ,>     òABx  Z  ,A"ÿ(B  	GBx  ,^  /   $   ,\   B  Z  ¶   ;,>  ñ,>      .Bx  ,^  /  ,   XB  »   1."  ,   XB  @+   +   p   /"  ,   ,<  @  y  +   p   Á,>  ñ,>   `    ,^  /  3b  +   LZ` ,~   Z  ¯,<  Z  Æ,<  Z   B  ú,<  Zw,>  ñ,>   wÿ(Bÿ.Bx  ,^  /  ."  ,<   wA"  1B   +   aZwþ,>  ñ,>   w(Bÿ.Bx  ,^  /  ."     ,>  ñ,>     rABx  ZwÿA"ÿGBx  ,^  /   $   +   ëZwþ,>  ñ,>   w(Bÿ.Bx  ,^  /  ."     ,>  ñ,>     òABx  ZwÿA"ÿ(B  	GBx  ,^  /   $   ,\   B  Zp  /     M."  ,   XB  í+   ÆZ  L,~   ,~     x    ÿa
 
@D (@(   P
 
  @   (VARIABLE-VALUE-CELL DIML . 10)
(VARIABLE-VALUE-CELL THISROWBASE . 127)
(VARIABLE-VALUE-CELL #ELTS/ROW . 122)
SHOULDNT
(VARIABLE-VALUE-CELL #HYPER.ROWS . 134)
(VARIABLE-VALUE-CELL NEXTDIML . 156)
(VARIABLE-VALUE-CELL LASTDIMENSIONP . 39)
(NIL VARIABLE-VALUE-CELL MARGINARRAY . 224)
ARRAY
(0 . 1)
NIL
(0 VARIABLE-VALUE-CELL I . 222)
(0 . 1)
NIL
(0 VARIABLE-VALUE-CELL I . 0)
\MARGINTO
(FIXT BHC GUNBOX MKN KT KNIL ENTERF)   l  º x   ` ë X à 0 T 	( ¿   4 p © (  8         ï P B    X       P   p        
AREF BINARY
     *      %-.            0"  +   ,< " Z` ,<  ,<p  " 3B +   ,<p  ,< " D +   
Zp  /  ,<  @    
,~   [   XB   Z  " ,   XB   Z  ,<     ."  ,   ,\  3B  +   Z  ,<  ,< $ +   Z  0B   +   Z  ,~   Z  Z ,<  Z  [ ,<  @  @ +   ÑZ` -,   +   +   EZ  XB       .wZ  XB   -,   +   %,<  ,< $ +   Á   ¡1"   +   +   %,> ,>        ,^  /  3"  +   ­Z  ¦,<  ,< $ +   ÁZ   Z  3B  +   =Z   ,> ,>     +(Bÿ.Bx  ,^  /  ."     ,> ,>     1A"  1B   +   ¸^"   +   9^"  	"     ,^  /  (B  A"ÿXB  ¯+   Á   µ,> ,>     <.Bx  ,^  /  ,   XB  =[` XB`    ­."  ,   XB  Â+      A,> ,>  Z  [ ,      ,^  /  3b  +   Ë   +   Ð   E,> ,>  Z  Æ,   .Bx  ,^  /  ,   ,~   Z` ,~   XB  ËZ  M" ,   XB      Ó   ^"  @3"  +   ÿZ  T0B  +   eZ  ,> ,>     Ñ(Bÿ.Bx  ,^  /  ."     ,> ,>     ÙA"  1B   +   a^"   +   á^"  	"     ,^  /  (B  A"ÿ,~   0B  +   èZ  X,<  Z  ^D  ,~   1B  +   ê0B  +   mZ  f,<  Z  gD !,~   0B  +   ðZ  ê,<  Z  ëD ¡,~   0B  +   tZ  n,<  Z  oD ",~   0B  +   ÷Z  ñ,<  Z  òD ¢,~   0B  +   {Z  u,<  Z  vD #,~   0B  +   þZ  ø,<  Z  ùD £,~      ,~   Z  |,<     },> ,>     Ö,> ,>  ^"¿ABx  ,^  /  ,   XB ,   $Bx  ,^  /  ,   ,<  Z F $XB Z  R" 3B +  Z ,~   Z ,<  Z @   Z [  Z  D ¤,~   
           G< @HLe(  (  @J HHHHÈ! 	`         (VARIABLE-VALUE-CELL NARGS . 92)
(VARIABLE-VALUE-CELL CMLARRAYDATATYPE . 287)
Too% few% args
ERROR
TYPENAME
CMLARRAY
Not% of% type% TYPE
CONCAT
(VARIABLE-VALUE-CELL ARRAY . 286)
(NIL VARIABLE-VALUE-CELL ANCHOR . 255)
(NIL VARIABLE-VALUE-CELL RANK . 44)
(NIL VARIABLE-VALUE-CELL I . 284)
(NIL VARIABLE-VALUE-CELL J . 275)
Array% Rank% Mismatch
(0 . 1)
(VARIABLE-VALUE-CELL MARGINS . 125)
NIL
(NIL VARIABLE-VALUE-CELL ILIMIT . 80)
(NIL VARIABLE-VALUE-CELL I . 0)
(2 VARIABLE-VALUE-CELL K . 136)
Array% index% not% FIXP
Array% index% out% of% bounds
SHOULDNT
\GETBASEBYTE
\GETBASEDOUBLEBYTE
\GETBASEBIT
\GETBASENIBBLE
\GETBASEPTR
\GETBASEFIXP
\GETBASEFLOATP
\GETBASEBITS
IMOD
(IUNBOX SKNI SKNLST ASZ MKN BHC ENTERF) x Î 	   0   h   @ ø P ñ ` ê  f       h T 
 Ä   x    @ Ü 
  J  » @ ª 0      
ASET BINARY
   x   _   q-.        _    0"  +   ,< à" aZ` ,<  Z` ,<  ,<p  " á3B b+   ,<p  ,< â" cD a+   Zp  /  ,<  @ ã @ ,~   Z  ,<  ^"  ,> Û,>  Z   " \,   XB   ,   .Bx  ,^  /  ,   ,\  3B  +   Z  ,<  ,< æ$ a+   ©Z  " Ü,   1B  +   1B  +   1B  +   0B  +    Z   -,   +   %+   ¢0B  +   %Z  "   +   %,< g,<  ,   B ç+   ©Z  0B   +   ©Z  @   Z  !QD  Z  §,~   [  ¦XB   Z  ©Z ,<  Z  ª[ ,<  @ h @ +   ãZ` -,   +   1+   WZ  XB       .wZ  XB   -,   +   7,<  ,< k$ a+   Ó   ³1"   +   =   7,> Û,>     ±   ,^  /  3"  +   ¿Z  ¸,<  ,< ë$ a+   ÓZ  2Z  3B  +   OZ   ,> Û,>     =(Bÿ.Bx  ,^  /  ."     ,> Û,>     CA"  1B   +   Ê^"   +   K^"  	"     ,^  /  (B  A"ÿXB  Á+   Ó   Ç,> Û,>     N.Bx  ,^  /  ,   XB  O[` XB`    ¿."  ,   XB  Ô+   /   S,> Û,>  Z  ,[ ,      ,^  /  3b  +   Ý  l+   â   W,> Û,>  Z  Ø,   .Bx  ,^  /  ,   ,~   Z` ,~   XB  ÝZ  _" Ü,   XB   ,      ^"  @3"  +  ·Z  å0B  +  Z  *,> Û,>     ã(Bÿ.Bx  ,^  /  ."  ,<     ëA"  1B   +   ûZ  j,> Û,>     o(Bÿ.Bx  ,^  /  ."     ,> Û,>    ]ABx  Z  ¨A"ÿGBx  ,^  /   $   +  Z  q,> Û,>     ò(Bÿ.Bx  ,^  /  ."     ,> Û,>    ÝABx  Z  xA"ÿ(B  	GBx  ,^  /   $   ,\   B  Z +   ¨0B  +    A"  ÿ,   XB 	Z  û,<  Z  },<  F ì+   ¨1B  +  0B  +    A"ÿ,   XB Z ,<  Z ,<  F m+   ¨0B  +    A"  ,   XB Z ,<  Z ,<  F í+   ¨0B  +  !  A"  ,   XB Z ,<  Z ,<  F n+   ¨0B  +  ¥Z ,<  Z ,<  Z F î+   ¨0B  +  .^"   ,> Û,>    $.Bx  ,^  /  ,   XB (Z ",<  Z #,<  F o+   ¨0B  +  ¶^"   ,> Û,>    ª.Bx  ,^  /  ,   XB °Z +,<  Z ,,<  F ï+   ¨  l+   ¨Z ³,<    ´,> Û,>     è,> Û,>  ^"¿ABx  ,^  /  ,   XB :,   $Bx  ,^  /  ,   ,<  Z >,<  Z  d" ^3B Þ+  V  3(B   ,> Û,>  Z   ,> Û,>    Á(Bÿ.Bx  ,^  /  ."     ,> Û,>    HA"  1B   +  Ï^"   +  P^"  	"     ,^  /  (B  A"ÿ,   ABx  ,^  /  ,   +  ZZ Ä,<  Z Â@  'Z [  Z  D pXB VH ð+   ¨  
   x    ÿ      Ao NJS&d Le(  (  @J  @@ 4P( 5 	            (VARIABLE-VALUE-CELL NARGS . 128)
(VARIABLE-VALUE-CELL CMLARRAYDATATYPE . 431)
(VARIABLE-VALUE-CELL \RJ1M . 397)
Too% few% args
ERROR
TYPENAME
CMLARRAY
Not% of% type% TYPE
CONCAT
(VARIABLE-VALUE-CELL VAL . 436)
(VARIABLE-VALUE-CELL ARRAY . 430)
(NIL VARIABLE-VALUE-CELL ANCHOR . 367)
(NIL VARIABLE-VALUE-CELL RANK . 74)
(NIL VARIABLE-VALUE-CELL I . 369)
(NIL VARIABLE-VALUE-CELL J . 409)
Array% Rank% Mismatch
32
ERRORX
(0 . 1)
(VARIABLE-VALUE-CELL MARGINS . 161)
NIL
(NIL VARIABLE-VALUE-CELL ILIMIT . 116)
(NIL VARIABLE-VALUE-CELL I . 0)
(3 VARIABLE-VALUE-CELL K . 172)
Array% index% not% FIXP
Array% index% out% of% bounds
SHOULDNT
\PUTBASEBYTE
\PUTBASEDOUBLEBYTE
\PUTBASEBIT
\PUTBASENIBBLE
\PUTBASEPTR
\PUTBASEFIXP
\PUTBASEFLOATP
IMOD
\PUTBASEBITS
(FIXT SKNLST LIST2 FLOATT SKNI ASZ IUNBOX MKN BHC ENTERF) h û    °    ¤    ¢    5 x   p¦   ` p	   ¦   P  0   @¿ p à (    V ¾ 8+ `   ` â 
h Ó (      XÒ 0A `3 (   { X î   \ 
0 Í ` ¼ H        
\AREF.1 BINARY
        ø    é    u-.          éZ   B  k3B  ë+   Z  ,<  ,<  l"  ìD  m+   Z  XB  Z  "  g1B  +   Z  ,<  ,<  í$  m+   Z   -,   +   ,<  ,<  n$  m+      1"   +      ,>  ç,>  Z  Z Z  ,      ,^  /  3"  +   Z  ,<  ,<  î$  m   ,>  ç,>  Z  [ ,      ,^  /  3b  +      o   ,>  ç,>  Z  ,   .Bx  ,^  /  ,   XB  Z   "  h,   ,<  [  $,<  @  ï @ ,~          ^"  @3"  +   TZ  ¨0B  +   ¹Z   ,>  ç,>     £(Bÿ.Bx  ,^  /  ."     ,>  ç,>     .A"  1B   +   µ^"   +   6^"  	"     ,^  /  (B  A"ÿ,~   0B  +   =Z  ¬,<  Z  ²D  ð,~   1B  +   ?0B  +   ÁZ  º,<  Z  »D  q,~   0B  +   EZ  ?,<  Z  @D  ñ,~   0B  +   ÈZ  Â,<  Z  ÃD  r,~   0B  +   LZ  F,<  Z  GD  ò,~   0B  +   ÏZ  É,<  Z  ÊD  s,~   0B  +   SZ  M,<  Z  ND  ó,~      o,~   Z  Ð,<     Ñ,>  ç,>     +,>  ç,>  ^"¿ABx  ,^  /  ,   XB  Ö,   $Bx  ,^  /  ,   ,<  Z  ÚF  tXB  UZ  &"  è3B  i+   âZ  _,~   Z  á,<  Z  ß@   Z [  Z  D  ô,~   
           rò   ! "(HÈ! @      (VARIABLE-VALUE-CELL ARRAY . 199)
(VARIABLE-VALUE-CELL I . 197)
(VARIABLE-VALUE-CELL CMLARRAYDATATYPE . 200)
TYPENAME
CMLARRAY
Not% of% type% TYPE
CONCAT
ERROR
Array% Rank% Mismatch
Array% index% not% FIXP
Array% index% out% of% bounds
SHOULDNT
(VARIABLE-VALUE-CELL J . 188)
(VARIABLE-VALUE-CELL ANCHOR . 168)
\GETBASEBYTE
\GETBASEDOUBLEBYTE
\GETBASEBIT
\GETBASENIBBLE
\GETBASEPTR
\GETBASEFIXP
\GETBASEFLOATP
\GETBASEBITS
IMOD
(ASZ MKN BHC IUNBOX SKNI ENTERF)   
 M 	 F ( ? ` º H   ` [ ` $    Ý ( ¸  £ `     \    P   X      
\ASET.1 BINARY
     4   ¢   /-.         ¢Z   B %3B ¥+   Z  ,<  ,< &" ¦D '+   Z  XB  Z  " 1B  +   Z  ,<  ,< §$ '+   Z   -,   +   ,<  ,< ($ '+      1"   +      ,> ,>  Z  Z Z  ,      ,^  /  3"  +   Z  ,<  ,< ¨$ '   ,> ,>  Z  [ ,      ,^  /  3b  +     )   ,> ,>  Z  ,   .Bx  ,^  /  ,   XB  [   ,<  Z  $"  ,   ,<  @ © @ +         ^"  @3"  +   zZ  ¨0B  +   ÊZ   ,> ,>     £(Bÿ.Bx  ,^  /  ."  ,<     .A"  1B   +   >Z  ¬,> ,>     ±(Bÿ.Bx  ,^  /  ."     ,> ,>     ABx  Z   A"ÿGBx  ,^  /   $   +   ÈZ  ³,> ,>     5(Bÿ.Bx  ,^  /  ."     ,> ,>    !ABx  Z  ºA"ÿ(B  	GBx  ,^  /   $   ,\   B  Z  E,~   0B  +   Ð   ÉA"  ÿ,   XB  ËZ  >,<  Z  ¿,<  F ª,~   1B  +   Ò0B  +   ×   MA"ÿ,   XB  ÒZ  Í,<  Z  Î,<  F +,~   0B  +   Ý   TA"  ,   XB  ØZ  Ô,<  Z  Õ,<  F «,~   0B  +   ã   ZA"  ,   XB  ÞZ  Ú,<  Z  Û,<  F ,,~   0B  +   hZ  à,<  Z  á,<  Z  `F ¬,~   0B  +   ð^"   ,> ,>     æ.Bx  ,^  /  ,   XB  êZ  ä,<  Z  å,<  F -,~   0B  +   y^"   ,> ,>     m.Bx  ,^  /  ,   XB  sZ  í,<  Z  î,<  F ­,~     ),~   Z  v,<     w,> ,>     +,> ,>  ^"¿ABx  ,^  /  ,   XB  ü,   $Bx  ,^  /  ,   ,<  Z ,<  Z  %" ¡3B "+     õ(B   ,> ,>  Z   ,> ,>    (Bÿ.Bx  ,^  /  ."     ,> ,>    A"  1B   +  ^"   +  ^"  	"     ,^  /  (B  A"ÿ,   ABx  ,^  /  ,   +  Z ,<  Z @   Z [  Z  D .XB H ®,~   Z ,~   
     x    ÿ      rò   	! @(@ % $ 	( J 
	  9( 
      (VARIABLE-VALUE-CELL VAL . 316)
(VARIABLE-VALUE-CELL ARRAY . 307)
(VARIABLE-VALUE-CELL I . 246)
(VARIABLE-VALUE-CELL \RJ1M . 274)
(VARIABLE-VALUE-CELL CMLARRAYDATATYPE . 308)
TYPENAME
CMLARRAY
Not% of% type% TYPE
CONCAT
ERROR
Array% Rank% Mismatch
Array% index% not% FIXP
Array% index% out% of% bounds
SHOULDNT
(VARIABLE-VALUE-CELL ANCHOR . 244)
(VARIABLE-VALUE-CELL J . 286)
\PUTBASEBYTE
\PUTBASEDOUBLEBYTE
\PUTBASEBIT
\PUTBASENIBBLE
\PUTBASEPTR
\PUTBASEFIXP
\PUTBASEFLOATP
IMOD
\PUTBASEBITS
(FIXT ASZ MKN BHC IUNBOX SKNI ENTERF)   I `    i H Þ  Ò 
 Ë H     v X à ( Ô 	X ' @     X  õ P È ( ½   1 8  h   h    P   X      
\AREF.2 BINARY
        
   -.         
Z   B 3B +   Z  ,<  ,< " D +   Z  XB  Z  " 1B  +   Z  ,<  ,< $ Z  Z ,<  Z  [ ,<  @  @ +   DZ   -,   +   ,<  ,< $ +   (   1"   +      ,> ,>  Z` ,   ,> ,>  [` XB` ,^  /     ,^  /  3"  +   Z  ,<  ,< $ +   (    1"   +   &   ,> ,>  Z` ,      ,^  /  3"  +   (Z  !,<  ,< $ Z   ,> ,>     (Bÿ.Bx  ,^  /  ."     ,> ,>     ©A"  1B   +   1^"   +   ±^"  	"     ,^  /  (B  A"ÿ,   ,> ,>     &.Bx  ,^  /  ,   XB  (   ¸,> ,>  Z  [ ,      ,^  /  3b  +   ?     9,> ,>  Z  º,   .Bx  ,^  /  ,   ,~   XB  .Z  À" ,   ,<  [  Ä,<  @  @ ,~      6   ^"  @3"  +   ôZ  I0B  +   ZZ   ,> ,>     D(Bÿ.Bx  ,^  /  ."     ,> ,>     ÎA"  1B   +   V^"   +   Ö^"  	"     ,^  /  (B  A"ÿ,~   0B  +   ÝZ  M,<  Z  SD ,~   1B  +   ß0B  +   bZ  [,<  Z  \D ,~   0B  +   åZ  ß,<  Z  àD ,~   0B  +   iZ  c,<  Z  dD ,~   0B  +   ìZ  æ,<  Z  çD ,~   0B  +   pZ  j,<  Z  kD ,~   0B  +   óZ  í,<  Z  îD ,~     ,~   Z  q,<     r,> ,>     Ë,> ,>  ^"¿ABx  ,^  /  ,   XB  w,   $Bx  ,^  /  ,   ,<  Z  {F XB  õZ  Æ" 	3B +  Z  ÿ,~   Z ,<  Z  @   Z [  Z  D ,~   
           `)rD N(	P @  "(HHÈ! @       (VARIABLE-VALUE-CELL ARRAY . 264)
(VARIABLE-VALUE-CELL I . 262)
(VARIABLE-VALUE-CELL J . 253)
(VARIABLE-VALUE-CELL CMLARRAYDATATYPE . 265)
TYPENAME
CMLARRAY
Not% of% type% TYPE
CONCAT
ERROR
Array% Rank% Mismatch
(0 . 1)
(VARIABLE-VALUE-CELL \LinearIndex . 126)
Array% index% not% FIXP
Array% index% out% of% bounds
SHOULDNT
(VARIABLE-VALUE-CELL J . 0)
(VARIABLE-VALUE-CELL ANCHOR . 233)
\GETBASEBYTE
\GETBASEDOUBLEBYTE
\GETBASEBIT
\GETBASENIBBLE
\GETBASEPTR
\GETBASEFIXP
\GETBASEFLOATP
\GETBASEBITS
IMOD
(ASZ MKN BHC IUNBOX SKNI ENTERF)    í   æ 0 ß h [ 	P   h û h D    ` {  Ñ 8 >  4 H ¥ H     ü   ¼ X $           
\ASET.2 BINARY
     Ö   Â   Ð-.          ÂZ   B Å3B F+   Z  ,<  ,< Æ" GD Ç+   Z  XB  Z  " ?1B  +   Z  ,<  ,< H$ ÇZ  Z ,<  Z  [ ,<  @ È @ +   DZ   -,   +   ,<  ,< É$ Ç+   (   1"   +      ,> ¿,>  Z` ,   ,> ¿,>  [` XB` ,^  /     ,^  /  3"  +   Z  ,<  ,< J$ Ç+   (    1"   +   &   ,> ¿,>  Z` ,      ,^  /  3"  +   (Z  !,<  ,< J$ ÇZ   ,> ¿,>     (Bÿ.Bx  ,^  /  ."     ,> ¿,>     ©A"  1B   +   1^"   +   ±^"  	"     ,^  /  (B  A"ÿ,   ,> ¿,>     &.Bx  ,^  /  ,   XB  (   ¸,> ¿,>  Z  [ ,      ,^  /  3b  +   ?  Ê   9,> ¿,>  Z  º,   .Bx  ,^  /  ,   ,~   XB  .[  À,<  Z  Ä" @,   ,<  @ K @ ,~      6   ^"  @3"  +  Z  I0B  +   kZ   ,> ¿,>     D(Bÿ.Bx  ,^  /  ."  ,<     ÎA"  1B   +   ÞZ  M,> ¿,>     R(Bÿ.Bx  ,^  /  ."     ,> ¿,>    ÀABx  Z   A"ÿGBx  ,^  /   $   +   iZ  T,> ¿,>     Õ(Bÿ.Bx  ,^  /  ."     ,> ¿,>    AABx  Z  [A"ÿ(B  	GBx  ,^  /   $   ,\   B  Z  å+  >0B  +   q   jA"  ÿ,   XB  lZ  Þ,<  Z  `,<  F L+  >1B  +   s0B  +   x   íA"ÿ,   XB  sZ  n,<  Z  o,<  F Ì+  >0B  +   ~   ôA"  ,   XB  yZ  u,<  Z  v,<  F M+  >0B  +     úA"  ,   XB  Z  {,<  Z  |,<  F Í+  >0B  +  Z ,<  Z ,<  Z F N+  >0B  +  ^"   ,> ¿,>    .Bx  ,^  /  ,   XB Z ,<  Z ,<  F Î+  >0B  +  ^"   ,> ¿,>    .Bx  ,^  /  ,   XB Z ,<  Z ,<  F O+  >  Ê+  >Z ,<    ,> ¿,>     Ë,> ¿,>  ^"¿ABx  ,^  /  ,   XB ,   $Bx  ,^  /  ,   ,<  Z !,<  Z  Å" Á3B B+  9  (B   ,> ¿,>  Z   ,> ¿,>    ¤(Bÿ.Bx  ,^  /  ."     ,> ¿,>    +A"  1B   +  ²^"   +  3^"  	"     ,^  /  (B  A"ÿ,   ABx  ,^  /  ,   +  =Z §,<  Z ¥@   Z [  Z  D ÏXB 9H PZ   ,~   
     x    ÿ      `)rD N(	P @  @(@ 5 4 ( j 	  9 
       (VARIABLE-VALUE-CELL VAL . 378)
(VARIABLE-VALUE-CELL ARRAY . 372)
(VARIABLE-VALUE-CELL I . 311)
(VARIABLE-VALUE-CELL J . 351)
(VARIABLE-VALUE-CELL \RJ1M . 339)
(VARIABLE-VALUE-CELL CMLARRAYDATATYPE . 373)
TYPENAME
CMLARRAY
Not% of% type% TYPE
CONCAT
ERROR
Array% Rank% Mismatch
(0 . 1)
(VARIABLE-VALUE-CELL \LinearIndex . 126)
Array% index% not% FIXP
Array% index% out% of% bounds
SHOULDNT
(VARIABLE-VALUE-CELL ANCHOR . 309)
(VARIABLE-VALUE-CELL J . 0)
\PUTBASEBYTE
\PUTBASEDOUBLEBYTE
\PUTBASEBIT
\PUTBASENIBBLE
\PUTBASEPTR
\PUTBASEFIXP
\PUTBASEFLOATP
IMOD
\PUTBASEBITS
(KNIL FIXT ASZ MKN BHC IUNBOX SKNI ENTERF)  ?    é h     P   s   l 	P   ¤  ` 0 u ` Ç @ 9   ¸ X. @! `  c ` Ø 
 Ã ` ¸ @ ¬ X  0   p¢   ¼ X $           
ARRAYRANK BINARY
            -.          Z   @   "  ,   ,~   
     (VARIABLE-VALUE-CELL CMLARRAY . 3)
(VARIABLE-VALUE-CELL CMLARRAYDATATYPE . 4)
(MKN ENTERF)    @      
ARRAYDIMENSIONS BINARY
                -.          Z   B  3B  +   Z  ,<  ,<  "  D  +   Z  XB  Z   3B   +   -,   +   ,   XB  Z  @   Z ,<  @     +   Z  3B   +   ,<  D  3B   +   Z   ,~   Z  B  ,~   ,~   
Î    (VARIABLE-VALUE-CELL CMLARRAY . 22)
(VARIABLE-VALUE-CELL OPTIONS . 29)
(VARIABLE-VALUE-CELL CMLARRAYDATATYPE . 23)
TYPENAME
CMLARRAY
Not% of% type% TYPE
CONCAT
ERROR
(VARIABLE-VALUE-CELL L . 38)
NOCOPY
MEMB
COPY
(CONSNL SKNLST KNIL ENTERF)      
       	       
ARRAYDIMENSION BINARY
              -.          Z   @   Z ,<  Z   -,   +      1"   +      ,>  ,>  Z  @  "     ,^  /  2"  +      +   ,<  Z  ,<  ,   B  ,   ."  ,   D  Z  ,~     
 D     (VARIABLE-VALUE-CELL CMLARRAY . 16)
(VARIABLE-VALUE-CELL AXIS# . 27)
(VARIABLE-VALUE-CELL CMLARRAYDATATYPE . 17)
27
ERRORX
NTH
(MKN IUNBOX LIST2 BHC SKI ENTERF)                         
ARRAYELEMENTTYPE BINARY
    «    ¢    *-.           ¢Z   B  #3B  £+   Z  ,<  ,<  $"  ¤D  %+   Z  XB  Z  "  ",   ,<  @  ¥   +   ¡       ^"  @3"  +    Z  0B  +   Z   ,~   0B  +   Z  &,~   1B  +   0B  +   Z  ¦,~   0B  +   Z  ',~   0B  +   Z  §,~   0B  +   Z  (,~   0B  +   Z  ¨,~   0B  +   Z  ),~      ©,~   Z  Z ,~   ,~     B#,f3      (VARIABLE-VALUE-CELL CMLARRAY . 64)
TYPENAME
CMLARRAY
Not% of% type% TYPE
CONCAT
ERROR
(VARIABLE-VALUE-CELL J . 27)
((MOD 256) . 0)
((MOD 65536) . 0)
((MOD 2) . 0)
((MOD 16) . 0)
FIXNUM
FLONUM
XPOINTER
SHOULDNT
(KT ASZ MKN ENTERF)     `     `  0  p         
ARRAYINBOUNDSP BINARY
    ­    '    ,-.         'Z   0B   +      (Z` ,<  @  ¨   ,~   Z  ,<  Z   @   "  &."  ,   ,\  3B  +   ,<  )"  ©Z  Z ,<  @  *  +   £Z` -,   +   +   ¢Z  XB       .wZ  ,      ^"   2b  +      ,>  ¦,>     .wZ  ,      ,^  /  2b  +   Z  2B   +   Z   XB` +   ¢[` XB`    ."  ,   XB   +   Z` ,~   2B   +   %7   Z   ,~   
   q& P$@    (VARIABLE-VALUE-CELL NARGS . 12)
(VARIABLE-VALUE-CELL CMLARRAYDATATYPE . 15)
HELP
(VARIABLE-VALUE-CELL CMLARRAY . 24)
"Rank Mismatch"
ERROR
(0 . 1)
NIL
(NIL VARIABLE-VALUE-CELL I . 56)
(2 VARIABLE-VALUE-CELL K . 67)
(KT KNIL BHC IUNBOX SKNLST MKN ASZ ENTERF)  X     & H          H        
           
ARRAYTOTALSIZE BINARY
      9    ±    7-.           ±Z   B  ²3B  3+   Z  ,<  ,<  ³"  4D  ´+   Z  XB  Z   2B   +   Z  "  00B   +   Z  	[ ,   ."  ,   +   Z  5,<  Z  Z D  µ,<  @  6   +   ¯Z  3B   +   ®Z  "  °,   ,<  @  ¶   +   *    1"  @+      ,>  1,>  ^"¿ABx  ,^  /  ,   ,~   Z  0B  +    Z"  ,~   0B  +   "Z"  ,~   1B  +   $0B  +   %Z"  ,~   0B  +   'Z"  ,~   0B  +   )Z"  ,~   Z"  ,~   ,   ,>  1,>      $Bx  ,^  /  ,   ,~   Z  «,~   ,~   (@     
AEJ) ¢A        (VARIABLE-VALUE-CELL CMLARRAY . 40)
(VARIABLE-VALUE-CELL IN.BITS? . 37)
TYPENAME
CMLARRAY
Not% of% type% TYPE
CONCAT
ERROR
ITIMES
APPLY
(VARIABLE-VALUE-CELL N . 93)
(VARIABLE-VALUE-CELL TYPE . 59)
(ASZ BHC MKN IUNBOX KNIL ENTERF)   )   ' ` % @ #   !       . P   h  `     + P   @ 	       
ARRAYROWMAJORINDEX BINARY
       Þ    R    Û-.          R    0"  +   ,<  Ò"  SZ` ,<  ,<p  "  Ó3B  T+   ,<p  ,<  Ô"  UD  S+   
Zp  /  ,<  @  Õ  +   ÐZ  ,<  Z   "  Q,   XB   ,   ."  ,   ,\  3B  +   Z  ,<  ,<  Ö$  S,~   Z  0B   +   [  ,~   Z  Z ,<  Z  [ ,<  @  W @ ,~   Z` -,   +   +   DZ  XB       .wZ  XB   -,   +   $,<  ,<  Z$  S+   À    1"   +   *   $,>  Ñ,>        ,^  /  3"  +   ¬Z  ¥,<  ,<  Ú$  S+   ÀZ  Z  3B  +   <Z   ,>  Ñ,>     *(Bÿ.Bx  ,^  /  ."     ,>  Ñ,>     0A"  1B   +   ·^"   +   8^"  	"     ,^  /  (B  A"ÿXB  ®+   À   ´,>  Ñ,>     ;.Bx  ,^  /  ,   XB  <[` XB`    ¬."  ,   XB  Á+      @,>  Ñ,>  Z  [ ,      ,^  /  3b  +   Ê   [+   Ï   D,>  Ñ,>  Z  Å,   .Bx  ,^  /  ,   ,~   Z` ,~   ,~   
   G<(@L 0q P           (VARIABLE-VALUE-CELL NARGS . 90)
Too% few% args
ERROR
TYPENAME
CMLARRAY
Not% of% type% TYPE
CONCAT
(VARIABLE-VALUE-CELL ARRAY . 152)
(NIL VARIABLE-VALUE-CELL RANK . 42)
Array% Rank% Mismatch
(0 . 1)
(VARIABLE-VALUE-CELL MARGINS . 123)
NIL
(NIL VARIABLE-VALUE-CELL ILIMIT . 78)
(NIL VARIABLE-VALUE-CELL I . 149)
(2 VARIABLE-VALUE-CELL K . 134)
Array% index% not% FIXP
Array% index% out% of% bounds
SHOULDNT
(SKNI SKNLST ASZ IUNBOX MKN BHC ENTERF)      X   h   	X Ç    	x Ã   x   	p I   º 0 © 0      
\FastAREFexpander BINARY
              -.           ,<  ,<  Z  Z   ,   ,   ,<  Z  -,   +   ,<  "  +   [  -,   +   ,<  ,<  ,<  Z  ,   +   Z  ,<  Z   ,<  ,<   &  ,   ,   ,~   gH     (VARIABLE-VALUE-CELL X . 25)
(VARIABLE-VALUE-CELL FFUN . 27)
COND
AREFSissyFLG
AREF
Too% few% args
ERROR
fetch
((CMLARRAY CMLANCHOR) . 0)
of
\NoSissyAREFexpander
(ALIST3 CONSNL KT ALIST4 SKNLST ALIST2 CONS ENTERF)        x   H                   
\NoSissyAREFexpander BINARY
     @    ²    >-.           ²Z   ,<  ,<  4$  ´,<  ,<  5$  µ[  Z  2B   +      6,<  Z   ,<  ,<   $  ¶,<  [  ,<  ,<   Zwÿ-,   +   Zp  Z   2B   +    "  +   [  QD   "  +   Zwÿ,<  @  7   +   Z   ,<  ,<   $  ¶,~   Zp  ,   XBp  [wÿXBwÿ+   /  ,<  @  · `,~   Z   ,<  ,\  ,<  Z   3B   +   ¡Z  ¹+   "Z  :,<  Z   B  º,   XB   Z   -,   +   ,Z  ¢,<  D  ;3B   +   ,Z  ¤,<  ,<  »Z  $F  <XB  *+   ±,<  ¼,<  =,<  ½Z  +,<  ,   ,<  Z  ¨,<  ,   XB  ­Z  1,~   1BJ y	%<       (VARIABLE-VALUE-CELL X . 21)
(VARIABLE-VALUE-CELL FFUN . 3)
(VARIABLE-VALUE-CELL CHECKFLG . 62)
2
SUBATOM
(((PAREF \VectorREF) (8AREF \WORDREF.8) (16AREF \WORDREF.16) (4AREF \WORDREF.4) (1AREF \WORDREF.1) (
NAREF \WORDREF.FIXP) (LAREF \WORDREF.FLOATP) (XAREF \WORDREF.PTR)) . 0)
ASSOC
SHOULDNT
LISPFORM.SIMPLIFY
(VARIABLE-VALUE-CELL Y . 42)
(VARIABLE-VALUE-CELL ACCESSOR . 58)
(VARIABLE-VALUE-CELL ARRAYFORM . 95)
(VARIABLE-VALUE-CELL INDICES . 76)
(NIL VARIABLE-VALUE-CELL ACCESSFORM . 99)
((ffetch (CMLARRAY CMLANCHOR) of (DATATYPE.TEST \Array (QUOTE CMLARRAY))) . 0)
((fetch (CMLARRAY CMLANCHOR) of \Array) . 0)
\AREFSET.INDEXFORM
ARGS.COMMUTABLEP.LIST
\Array
SUBST
LAMBDA
((\Array) . 0)
((DECLARE (LOCALVARS \Array)) . 0)
(LIST2 LIST4 ALIST3 BHC COLLCT SKNLST KT KNIL ENTERF)      x   H   8      `             x  H        
\FastASETexpander BINARY
                -.           Z   -,   +   [  -,   +   ,<  "  ,<  ,<  Z  Z  ,   ,   ,<  [  [  -,   +   Z   ,<  ,<  $  3B   +   3B   +   -,   +   ,<  ,<  ,   Z  	,   Z  ,   +   Z  ,<  Z  ,<  ,<   &  ,   ,   ,~   ? M,(   (VARIABLE-VALUE-CELL X . 40)
(VARIABLE-VALUE-CELL FFUN . 42)
Too% few% args
ERROR
COND
AREFSissyFLG
ASET
2
SUBATOM
QUOTE
\0DIM.ASET
\NoSissyASETexpander
(ALIST3 CONSNL CONS21 LIST2 SKNNM KT KNIL ALIST2 CONS SKNLST SKLST ENTERF)         @           p         	        0            
\NoSissyASETexpander BINARY
        î   -.           îZ   ,<  ,<  p$  ð,<  Z   ,<  ,<   $  q,<  [  Z  ,<  ,<   $  q,<  [  [  ,<  ,<   Zwÿ-,   +   Zp  Z   2B   +    "  +   [  QD   "  +   Zwÿ,<  @  ñ   +   Z   ,<  ,<   $  q,~   Zp  ,   XBp  [wÿXBwÿ+   /  ,<  @  r (,~   Z   ,<  ,<  ö$  w[  Z  2B   +   !   ÷XB   Z  x,   XB   Z   3B   +   ¯,<  ø,<  y,<  ù,<  z,<  úZ  3B   +   ,3B   +   ,-,   +   ,,<  {,<  ,   ,   ,   ,<  Z  ¢,<  ,   XB  ­Z   XB   Z  #3B   +   º[   2B   +   »Z  2B  û2B   +   ºZ  ³-,   +   »Z   ,<  Z  µD  |XB  03B   +   »Z   XB   Z  7-,   +   @Z  8,<  D  ü3B   +   C+   ÁB  û3B   +   CZ   XB   +   ÅZ  92B   +   ÅZ   XB  ;Z  E3B   +   ËZ  =,<  ,<   $  },<  ,<  ýZ  /F  ~+   Ñ,<  þ,<  ,<  ÿZ  J,<  ,   ,<  Z  G,<  ,<   $  },   XB  MZ  B3B   +   WZ  »,<  ,<  úZ  ÑF  ~XB  U+   Ü,<  þ,<  ,< Z  V,<  ,   ,<  Z  Ó,<  ,   XB  ØZ   B  û2B   +   äZ  Ü,<  Z  ÚD  |3B   +   hZ  O,<  Z  ÞD  ü3B   +   hZ  â,<  ,< Z  \F  ~XB  f+   í,<  þ,< ,< Z  g,<  ,   ,<  Z  ä,<  ,   XB  éZ  m,~   ¨ $h~+ "!$B+p%<"Ep          (VARIABLE-VALUE-CELL X . 19)
(VARIABLE-VALUE-CELL FFUN . 78)
(VARIABLE-VALUE-CELL CHECKFLG . 97)
2
SUBATOM
LISPFORM.SIMPLIFY
(VARIABLE-VALUE-CELL Y . 41)
(VARIABLE-VALUE-CELL FUN . 57)
(VARIABLE-VALUE-CELL NEWVALFORM . 215)
(VARIABLE-VALUE-CELL ARRAYFORM . 191)
(VARIABLE-VALUE-CELL INDICES . 195)
(NIL VARIABLE-VALUE-CELL SETTORNAME . 66)
(NIL VARIABLE-VALUE-CELL SETTINGFORM . 219)
(NIL VARIABLE-VALUE-CELL SIMPLEINDEXP . 139)
(NIL VARIABLE-VALUE-CELL SIMPLEARRAYP . 164)
(NIL VARIABLE-VALUE-CELL TEM . 134)
(((PASET \WORDSET.Vector) (8ASET \WORDSET.8) (16ASET \WORDSET.16) (1ASET \WORDSET.1) (4ASET \WORDSET.4
) (NASET \WORDSET.FIXP) (LASET \WORDSET.FLOATP) (XASET \WORDSET.PTR)) . 0)
ASSOC
SHOULDNT
((\NewVal (ffetch (CMLARRAY CMLANCHOR) of \Array) (IPLUS (ffetch (CMLARRAY CMLANCHOROFFSET) of \Array)
 \Index)) . 0)
PROGN
AND
((OR (ILESSP \Index 0) (IGREATERP \Index (ffetch (CMLARRAY CMLIMAX) of (DATATYPE.TEST \Array (QUOTE 
CMLARRAY))))) . 0)
ERROR
\Array
QUOTE
CONSTANTEXPRESSIONP
ARGS.COMMUTABLEP
ARGS.COMMUTABLEP.LIST
\AREFSET.INDEXFORM
\Index
SUBST
LAMBDA
((\Index) . 0)
((DECLARE (LOCALVARS \Index)) . 0)
((\Array) . 0)
((DECLARE (LOCALVARS \Array)) . 0)
\NewVal
((\NewVal) . 0)
((DECLARE (LOCALVARS \NewVal)) . 0)
(ALIST2 LIST4 LIST3 ALIST3 LIST2 SKNNM CONS BHC COLLCT SKNLST KNIL KT ENTERF)   
    8 Ú 	p   x   X -    í H ¬    ª    #            = p     ä  Þ 
8 G H Á x º X ³   ¨ H   p  @   
 I X Â 8 °           
\AREFSET.INDEXFORM BINARY
               -.           [   -,   +   Z  XB  +   Z  ,<  @    +   Z` -,   +   	+   Z  XB   ,<  Z   ,<  ,<  ,   XB  [` XB` +   Z  [  ,   XB  Z` ,~   Z   3B   +   Z  ,~   ,<  ,<  Z  ,<  ,   ,~   % `&    (VARIABLE-VALUE-CELL INDICES . 42)
(VARIABLE-VALUE-CELL NOANCHOROFFSETFLG . 35)
(0 . 1)
NIL
(NIL VARIABLE-VALUE-CELL I . 19)
((ffetch (CMLARRAY CMLMARGINS) of \Array) VARIABLE-VALUE-CELL MARGINACCFORM . 30)
\VectorREF
IPLUS
((ffetch (CMLARRAY CMLANCHOROFFSET) of \Array) . 0)
(KNIL CONS LIST3 SKNLST ENTERF)            P           
\CMLARRAY.LOCFTRAN BINARY
       û    ç    x-.           ç@  h  +   gZ   -,   +   Z  XB   ,<  Zp  3B   +   -,   7   Z   +   
Z   /  3B   +   Z  ,<  ,<  i$  éXB   -,   +   Z  2B  j+   [  [  2B   +   [  Z  XB  -,   +   Z  Z  ê,   3B   +   æ+   Z   ,~   [  Z  ,<  ,<   $  k,<  [  [  ,<  ,<   Zwÿ-,   +   ¤Zp  Z   2B   +   ¢ "  +   $[  QD   "  +   ¬Zwÿ,<  @  ë   +   ©Z   ,<  ,<   $  k,~   Zp  ,   XBp  [wÿXBwÿ+   /  ,<  [  [  Z  [  Z  ,<  ,<  l,<  ì&  m,<  @  í `(,~   Z   B  ñXB   Z   2B  r+   ¸Z   XB   +   Ê3B  j+   »3B  ò+   »2B  s+   @Z"  XB  µ,<  óZ  5,<  ,<  t,   XB  =+   Ê0B  +   BZ  ?+   Ê1B  +   E1B  +   E0B  +   J,<  óZ  A,<  B  ô,   /"  ,   ,   XB  Å+   Ê   uZ   -,   +   UZ  4,<  D  õ3B   +   UZ  Ê,<  ,<  vZ   F  öXB  PZ  Î,<  ,<  vZ  IF  öXB  S+   XZ  v,   XB   Z  Ñ,   XB   Z  ·3B   +   ß,<  wZ  V,<  Z  ×,<  Z  Q,<  Z  T,<  ^"  ,   ,~   ,<  ÷Z  Z,<  Z  [,<  Z  \,<  Z  ],<  Z  <,<  ^"  ,   ,~   ,~   ,~    D&,BLJ"gyU2J(V         (VARIABLE-VALUE-CELL X . 56)
(NIL VARIABLE-VALUE-CELL NAME . 23)
(NIL VARIABLE-VALUE-CELL MACP . 91)
MACRO
GETP
X
((\FastAREFexpander \FastASETexpander) . 0)
LISPFORM.SIMPLIFY
(VARIABLE-VALUE-CELL Z . 78)
2
-5
SUBATOM
(VARIABLE-VALUE-CELL ARRAYFORM . 173)
(VARIABLE-VALUE-CELL INDICES . 152)
(VARIABLE-VALUE-CELL NBITS . 200)
((fetch (\CMLARRAY CMLANCHOR) of \Array) VARIABLE-VALUE-CELL BASEFORM . 196)
(NIL VARIABLE-VALUE-CELL OFFSETFORM . 198)
(NIL VARIABLE-VALUE-CELL POINTERBYTEP . 176)
(NIL VARIABLE-VALUE-CELL LVARS . 192)
(NIL VARIABLE-VALUE-CELL LVALS . 194)
\AREFSET.INDEXFORM
P
N
L
LLSH
5
INTEGERLENGTH
SHOULDNT
ARGS.COMMUTABLEP.LIST
\Array
SUBST
\POINTERBYTE
\BITSBYTE
(LIST CONSNL ALIST3 MKN IUNBOX LIST3 ASZ COLLCT SKNLST FMEMB BHC KT SKLA KNIL SKLST ENTERF)  h ß    X 
h   	   	   	    x   P D 0 A H   0   	@         ­ 0     ) 8         Ù 	h ¡     (  ( 	  x   P   H      
LISTARRAY BINARY
   ®      ©-.         Z   B 3B +   Z  ,<  ,< " D +   Z  XB  Z  " ,   ,<  [  ,<  Z  ,<  Z  [ ,<  @   ,~   Z   2B   +   Z"   XB  +   ,<   Z  -,   +      1"   +   Zp  +   Z  ,<  ,<  $ XB  +   /  Z   2B   +   Z   XB  +   ¤,<   Z  -,   +   !   1"   +   !Zp  +   $Z  ,<  ,< !$ XB  !+   /     ,> ,>     /"     ,^  /  /  ,   XB       1"  @+   °   *,> ,>  ^"¿ABx  ,^  /  ,   XB   +   7Z  «1B  +   51B  +   51B  +   50B  +   6Z   +   ¶Z   XB      ©1"   +   ½   7,> ,>     ¤."     ,^  /  3b  +   ¾,< ¡"    &,> ,>      .Bx  ,^  /  ,   XB  ¾   #,> ,>     @.Bx  ,^  /  ,   XB  C,<  Z  Â,<  @ " @
,~       ,> ,>   `    ,^  /  3b  +   Ï+  Z  ¶3B   +   kZ  °0B  +   ßZ   ,> ,>     Ê(Bÿ.Bx  ,^  /  ."     ,> ,>     TA"  1B   +   Û^"   +   \^"  	"     ,^  /  (B  A"ÿ+  0B  +   cZ  Ò,<  Z  ØD ¤+  0B  +   æZ  à,<  Z  áD %+  0B  +   jZ  d,<  Z  eD ¥+    &+  Z  ¯3B   +   {Z  ç,<     è,> ,>     k$Bx  ,^  /  ,   ,<  Z  oF ¦XB   Z  " 3B +   öZ  s+  Z  õ,<  Z  ó@   Z [  Z  D '+  Z  Q0B  +   Z  ì,<  Z  íD §+  1B  +  0B  +  Z  ü,<  Z  ýD (+  0B  +  Z ,<  Z D ¨+  0B  +  Z ,<  Z D )+    &XB` Z` 3B   +  ,<  Z` ,   XB` ,\  QB  +  Z` ,   XB` XB`   	."  ,   XB +   ÊZ` ,~             	M		¦ P	ª t I P
D dj @        (VARIABLE-VALUE-CELL CMLARRAY . 239)
(VARIABLE-VALUE-CELL STARTI . 144)
(VARIABLE-VALUE-CELL ENDI . 142)
(VARIABLE-VALUE-CELL CMLARRAYDATATYPE . 240)
TYPENAME
CMLARRAY
Not% of% type% TYPE
CONCAT
ERROR
(VARIABLE-VALUE-CELL A.E.TYPE . 246)
(VARIABLE-VALUE-CELL ANCHOR . 272)
(VARIABLE-VALUE-CELL OFFST . 137)
(VARIABLE-VALUE-CELL IMAX . 116)
(NIL VARIABLE-VALUE-CELL #ELTS . 113)
(NIL VARIABLE-VALUE-CELL CELLP . 159)
(NIL VARIABLE-VALUE-CELL MODP . 228)
(NIL VARIABLE-VALUE-CELL TEM . 237)
"
 is not a suitable value for the variable:  STARTI"
"
 is not a suitable value for the variable:  ENDI"
"OUT OF RANGE"
(0 . 1)
(VARIABLE-VALUE-CELL I . 296)
NIL
NIL
NIL
\GETBASEPTR
\GETBASEFIXP
\GETBASEFLOATP
SHOULDNT
\GETBASEBITS
IMOD
\GETBASEBYTE
\GETBASEDOUBLEBYTE
\GETBASENIBBLE
\GETBASEBIT
(CONSNL KT BHC SKI ASZ KNIL MKN ENTERF)        6    ñ h W 	h G ( = x ) P      8       H ç @ à 
( 5 @ 3       H Q p  0      H r x C   *       
FILLARRAY BINARY
   \   D   V-.          DZ   B G3B Ç+   Z  ,<  ,< H" ÈD I+   Z  XB  Z   -,   +   
,   XB  Z  " A,   ,<  [  
,<  Z  ,<  Z  [ ,<  Z  ,<  @ É  ,~   Z   2B   +   Z"   XB  +   ,<   Z  -,   +      1"   +   Zp  +   Z  ,<  ,< N$ IXB  +   /  Z   2B   +    Z   XB  +   (,<   Z  -,   +   ¤    1"   +   ¤Zp  +   §Z  ",<  ,< Î$ IXB  ¤+    /     ,> Á,>     /"     ,^  /  /  ,   XB       1"  @+   4   ­,> Á,>  ^"¿ABx  ,^  /  ,   XB   +   »Z  " A,   1B  +   ¹1B  +   ¹1B  +   ¹0B  +   ºZ   +   ;Z   XB      -1"   +   B   »,> Á,>     (."     ,^  /  3b  +   C,< O" I   ©,> Á,>      .Bx  ,^  /  ,   XB  C   ¦,> Á,>     Ä.Bx  ,^  /  ,   XB  Ç,<  Z  G,<  @ Ï @+  @    ,> Á,>   `    ,^  /  3b  +   ÔZ` ,~   Z  ;3B   +  Z  /0B  +   õZ   ,> Á,>     O(Bÿ.Bx  ,^  /  ."  ,<     YA"  1B   +   iZ  ×,> Á,>     Ü(Bÿ.Bx  ,^  /  ."     ,> Á,>    BABx  Z   A"ÿGBx  ,^  /   $   +   óZ  Þ,> Á,>     `(Bÿ.Bx  ,^  /  ."     ,> Á,>    ÂABx  Z  åA"ÿ(B  	GBx  ,^  /   $   ,\   B  Z  p+  ¸0B  +   zZ  i,<  Z  ê,<  Z  ôF Q+  ¸0B  +   þZ  ö,<  Z  ÷,<  Z  øF Ñ+  ¸0B  +  Z  {,<  Z  |,<  Z  }F R+  ¸  Ò+  ¸Z  33B   +  ¤Z  ÿ,<    ,> Á,>    $Bx  ,^  /  ,   ,<  Z ,<  Z  4" C3B Ã+    (B   ,> Á,>  Z   ,> Á,>    (Bÿ.Bx  ,^  /  ."     ,> Á,>    A"  1B   +  ^"   +  ^"  	"     ,^  /  (B  A"ÿ,   ABx  ,^  /  ,   +  £Z ,<  Z @   Z [  Z  D SH Ó+  ¸Z  V0B  +  ©Z ,<  Z ,<  Z F T+  ¸1B  +  «0B  +  /Z &,<  Z ',<  Z (F Ô+  ¸0B  +  ³Z «,<  Z ¬,<  Z ­F U+  ¸0B  +  8Z 0,<  Z 1,<  Z 2F Õ+  ¸  ÒZ  ,<  [ ¸XB ¹,\  Z :3B   +  ½Z ;XB ¶  µ."  ,   XB ½+   OZ  ,~       x    ÿ      @M		M P
U!  @ ! (@(  P<D 9 ( ATA`      (VARIABLE-VALUE-CELL CMLARRAY . 384)
(VARIABLE-VALUE-CELL LIST . 377)
(VARIABLE-VALUE-CELL STARTI . 153)
(VARIABLE-VALUE-CELL ENDI . 151)
(VARIABLE-VALUE-CELL \RJ1M . 288)
(VARIABLE-VALUE-CELL CMLARRAYDATATYPE . 322)
TYPENAME
CMLARRAY
Not% of% type% TYPE
CONCAT
ERROR
(VARIABLE-VALUE-CELL A.E.TYPE . 329)
(VARIABLE-VALUE-CELL ANCHOR . 361)
(VARIABLE-VALUE-CELL OFFST . 146)
(VARIABLE-VALUE-CELL IMAX . 125)
(VARIABLE-VALUE-CELL ITEM . 378)
(NIL VARIABLE-VALUE-CELL CELLP . 169)
(NIL VARIABLE-VALUE-CELL MODP . 300)
(NIL VARIABLE-VALUE-CELL #ELTS . 122)
(NIL VARIABLE-VALUE-CELL TEM . 0)
"
 is not a suitable value for the variable:  STARTI"
"
 is not a suitable value for the variable:  ENDI"
"OUT OF RANGE"
(0 . 1)
(VARIABLE-VALUE-CELL I . 382)
NIL
\PUTBASEPTR
\PUTBASEFIXP
\PUTBASEFLOATP
SHOULDNT
IMOD
\PUTBASEBITS
\PUTBASEBYTE
\PUTBASEDOUBLEBYTE
\PUTBASENIBBLE
\PUTBASEBIT
(IUNBOX FIXT KT BHC SKI ASZ KNIL MKN CONSNL SKNLST ENTERF)   X   @ i    º    @ ( ó X è 0 \ 
0 Ë p Á 0 ¬      " p   H0 8ª ` ÿ 0 ö 
x ¹  · h    ¼ X V 8 ! h  8   x 0 L x 6 8 ­ @             
\PRINTCMLARRAY BINARY
    $        #-.           Z   ,<  @     ,~   Z   3B   +   -,   +   Z  Z 7@  7   Z  XB  B  3B  +   ,<  Z  ,<  ,   B  ,<  Z   D   Z  	Z ,<  Z  B   ,<  Z  "  ,   ,   ,<  Z  D  !Z  B  ¡,<  Z  D  !,<  "Z  D   Z  B  ¢Z   ,~   (@ 
c!!&P  (VARIABLE-VALUE-CELL VARORVAL . 23)
(VARIABLE-VALUE-CELL FILE . 51)
(VARIABLE-VALUE-CELL A . 43)
TYPENAME
CMLARRAY
27
ERRORX
"("
PRIN1
ARRAYELEMENTTYPE
PRINT
LISTARRAY
")"
TERPRI
(ALIST3 MKN LIST2 KNOB SKLA KNIL ENTERF)   H   @   X       h   8        
\READCMLARRAY BINARY
               -.           Z   B  ,<  @    ,~   Z   -,   Z   Z  XB   B  0B  +   Z  3B   +   Z  -,   +   Z  ,<  ,<  $  Z  
,<  ,<  [  Z  ,<  ,<  [  [  Z  J  XB  ,<  [  Z  D  Z  ,~    R&"!    (VARIABLE-VALUE-CELL FILE . 3)
READ
(VARIABLE-VALUE-CELL L . 40)
(NIL VARIABLE-VALUE-CELL TEM . 43)
LENGTH
"Wrong object read in"
ERROR
ELEMENTTYPE
ALIGNMENT
MAKEARRAY
FILLARRAY
(SKNLST ASZ KNIL SKLST ENTERF)  8                   
(PRETTYCOMPRINT CMLARRAYCOMS)
(RPAQQ CMLARRAYCOMS ((* CommonLisp array facilities.) (DECLARE: EVAL@COMPILE DONTCOPY (MACROS 
\MACRO.MX \CHECKTYPE \INDEXABLE.FIXP)) (EXPORT (RECORDS CMLARRAY) (DECLARE: EVAL@COMPILE DONTCOPY (
CONSTANTS * CMLARRAYTYPES) (CONSTANTS \AT.MOD.BIT))) (COMS (MACROS \0DIM.ASET) (* Following macros 
likely differ in the various implementations but at least depend on the \GETBASE... and \PUTBASE... 
series) (MACROS DATATYPE.TEST \WORDREF.PTR \WORDSET.PTR \WORDREF.FIXP \WORDSET.FIXP \WORDREF.FLOATP 
\WORDSET.FLOATP \WORDREF.16 \WORDSET.16 \WORDREF.8 \WORDSET.8 \WORDREF.4 \WORDSET.4 \WORDREF.1 
\WORDSET.1) (FNS \BubbleWORDSET) (DECLARE: EVAL@COMPILE DONTCOPY (FNS \BubbleWORDSET))) (DECLARE: 
COPYWHEN (NEQ COMPILEMODE (QUOTE D)) (* Patch ups for non-D worlds) (FILES MACROAUX) (* Rather than 
forcibly load in NONDADDARITH we cause it to be loaded only when compiling this file, or at 
"last moment" when absolutely needed.) (FNS \NONDADDARITH.TRAMPOLINE) (DECLARE: EVAL@LOADWHEN (NEQ (
SYSTEMTYPE) (QUOTE D)) (DECLARE: EVAL@COMPILEWHEN (NEQ COMPILEMODE (QUOTE D)) DONTCOPY (P (OR (
CONSTANTEXPRESSIONP (QUOTE PTRBLOCK.GCT)) (PROGN (SETQ PTRBLOCK.GCT 1) (CONSTANTS PTRBLOCK.GCT)))) (
FILES NONDADDARITH)) (P (MAPC (QUOTE (LOADBYTE DEPOSITEBYTE \GETBASEBIT \GETBASENIBBLE \GETBASEBYTE 
\GETBASEDOUBLEBYTE \GETBASEFIXP \GETBASEFLOATP \GETBASEPTR \PUTBASEBIT \PUTBASENIBBLE \PUTBASEBYTE 
\PUTBASEDOUBLEBYTE \PUTBASEFIXP \PUTBASEFLOATP \PUTBASEPTR)) (FUNCTION (LAMBDA (X) (MOVD? (FUNCTION 
\NONDADDARITH.TRAMPOLINE) X))))))) (FNS MAKEARRAY \CML.ICP.CHECK \MARGINTO) (FNS AREF ASET) (MACROS 
AREF ASET) (DECLARE: EVAL@COMPILE DONTCOPY (MACROS \AREFSET.LINEARIZE \AREFSET.LINEARIZE1 
\AREFSET.LINEARIZE2)) (FNS \AREF.1 \ASET.1 \AREF.2 \ASET.2) (MACROS ARRAYRANK ARRAYDIMENSIONS 
ARRAYDIMENSION) (FNS ARRAYRANK ARRAYDIMENSIONS ARRAYDIMENSION ARRAYELEMENTTYPE ARRAYINBOUNDSP 
ARRAYTOTALSIZE ARRAYROWMAJORINDEX) (PROP ARGNAMES MAKEARRAY AREF ASET ARRAYINBOUNDSP) (COMS (* The 
"fast" versions of AREF and ASET -- following P causes them all to be set up as macros) (DECLARE: 
EVAL@COMPILE (P ((LAMBDA (C) (MAPC (QUOTE (P X 1 4 8 16 N L)) (FUNCTION (LAMBDA (A) (MAPC (QUOTE (AREF
 ASET)) (FUNCTION (LAMBDA (B) (SETQ C (MKATOM (CONCAT "\" A B))) (PUTPROP (MKATOM (CONCAT A B)) (QUOTE
 MACRO) (LIST (QUOTE X) (LIST (MKATOM (CONCAT "\Fast" B "expander")) (QUOTE X) (LIST (QUOTE QUOTE) C))
)) (PUTPROP C (QUOTE MACRO) (LIST (QUOTE X) (LIST (MKATOM (CONCAT "\NoSissy" B "expander")) (QUOTE X) 
(LIST (QUOTE QUOTE) C)))))))))))))) (FNS \FastAREFexpander \NoSissyAREFexpander \FastASETexpander 
\NoSissyASETexpander \AREFSET.INDEXFORM \CMLARRAY.LOCFTRAN) (INITVARS (AREFSissyFLG NIL)) (PROP 
GLOBALVAR AREFSissyFLG)) (FNS LISTARRAY FILLARRAY \PRINTCMLARRAY \READCMLARRAY) (FILEPKGCOMS CMLARRAYS
) (DECLARE: DONTEVAL@LOAD DOEVAL@COMPILE DONTCOPY COMPILERVARS (ADDVARS (NLAMA) (NLAML) (LAMA 
ARRAYROWMAJORINDEX ARRAYINBOUNDSP ASET AREF MAKEARRAY \NONDADDARITH.TRAMPOLINE)))))
(DATATYPE CMLARRAY ((CMLRANK BITS 7) (CMLANCHOR POINTER) (CMLTYPE BITS 8) (CMLANCHOROFFSET POINTER) (
CMLMARGINS POINTER) (CMLDIML POINTER) (CMLIMAX POINTER) (CMLALIGN BITS 16) (CMLMOD POINTER) (
CMLMOD#P2P FLAG)) (ACCESSFNS (CMLMOD# (CADR (fetch CMLMOD of DATUM)))))
(/DECLAREDATATYPE (QUOTE CMLARRAY) (QUOTE ((BITS 7) POINTER (BITS 8) POINTER POINTER POINTER POINTER (
BITS 16) POINTER FLAG)))
(PUTPROPS \0DIM.ASET MACRO (OPENLAMBDA (FUNNAME \NewVal \Array) (OR (ZEROP (ARRAYRANK \Array)) (ERROR 
\Array FUNNAME)) (freplace (CMLARRAY CMLANCHOR) of \Array with \NewVal)))
(PUTPROPS DATATYPE.TEST MACRO (OPENLAMBDA (X TYPE) (COND ((NOT (TYPENAMEP X TYPE)) (ERROR X (CONCAT (
QUOTE Not% of% type% TYPE)))) (T X))))
(PUTPROPS DATATYPE.TEST DMACRO (= . \DTEST))
(PUTPROPS \WORDREF.PTR DMACRO ((ADDRESS I) (\GETBASEPTR ADDRESS (PROG1 (LLSH I 1) (* (UNFOLD I 
WORDSPERCELL))))))
(PUTPROPS \WORDREF.PTR MACRO (= . \GETBASEPTR))
(PUTPROPS \WORDSET.PTR DMACRO (X (* (UNFOLD DATUM WORDSPERCELL)) (\BubbleWORDSET X (QUOTE \PUTBASEPTR)
 (QUOTE (LLSH DATUM 1)))))
(PUTPROPS \WORDSET.PTR MACRO (X (\BubbleWORDSET X (QUOTE \PUTBASEPTR))))
(PUTPROPS \WORDREF.FIXP DMACRO ((ADDRESS I) (\GETBASEFIXP ADDRESS (PROG1 (LLSH I 1) (* (UNFOLD I 
WORDSPERCELL))))))
(PUTPROPS \WORDREF.FIXP MACRO (= . \GETBASEFIXP))
(PUTPROPS \WORDSET.FIXP DMACRO (X (* (UNFOLD DATUM WORDSPERCELL)) (\BubbleWORDSET X (QUOTE 
\PUTBASEFIXP) (QUOTE (LLSH DATUM 1)))))
(PUTPROPS \WORDSET.FIXP MACRO (X (\BubbleWORDSET X (QUOTE \PUTBASEFIXP))))
(PUTPROPS \WORDREF.FLOATP DMACRO ((ADDRESS I) (\GETBASEFLOATP ADDRESS (PROG1 (LLSH I 1) (* (UNFOLD I 
WORDSPERCELL))))))
(PUTPROPS \WORDREF.FLOATP MACRO (= . \GETBASEFLOATP))
(PUTPROPS \WORDSET.FLOATP DMACRO (X (* (UNFOLD DATUM WORDSPERCELL)) (\BubbleWORDSET X (QUOTE 
\PUTBASEFLOATP) (QUOTE (LLSH DATUM 1)))))
(PUTPROPS \WORDSET.FLOATP MACRO (X (\BubbleWORDSET X (QUOTE \PUTBASEFLOATP))))
(PUTPROPS \WORDREF.16 DMACRO (= . \GETBASE))
(PUTPROPS \WORDREF.16 MACRO (= . \GETBASEDOUBLEBYTE))
(PUTPROPS \WORDSET.16 DMACRO (X (\BubbleWORDSET X (QUOTE \PUTBASE))))
(PUTPROPS \WORDSET.16 MACRO (X (\BubbleWORDSET X (QUOTE \PUTBASEDOUBLEBYTE))))
(PUTPROPS \WORDREF.8 DMACRO ((ADDRESS I) (\GETBASEBYTE ADDRESS I)))
(PUTPROPS \WORDREF.8 MACRO (= . \GETBASEBYTE))
(PUTPROPS \WORDSET.8 DMACRO (X (\BubbleWORDSET X (QUOTE \PUTBASEBYTE))))
(PUTPROPS \WORDSET.8 MACRO (X (\BubbleWORDSET X (QUOTE \PUTBASEBYTE))))
(PUTPROPS \WORDREF.4 DMACRO ((BASE OFFST) (\GETBASENIBBLE BASE OFFST)))
(PUTPROPS \WORDREF.4 MACRO (= . \GETBASENIBBLE))
(PUTPROPS \WORDSET.4 DMACRO (X (\BubbleWORDSET X (QUOTE \PUTBASENIBBLE))))
(PUTPROPS \WORDSET.4 MACRO (X (\BubbleWORDSET X (QUOTE \PUTBASENIBBLE))))
(PUTPROPS \WORDREF.1 DMACRO ((ADDRESS I) (\GETBASEBIT ADDRESS I)))
(PUTPROPS \WORDREF.1 MACRO (= . \GETBASEBIT))
(PUTPROPS \WORDSET.1 DMACRO (X (\BubbleWORDSET X (QUOTE \PUTBASEBIT))))
(PUTPROPS \WORDSET.1 MACRO (X (\BubbleWORDSET X (QUOTE \PUTBASEBIT))))
(FILESLOAD MACROAUX)
(DEFINEQ (\NONDADDARITH.TRAMPOLINE (LAMBDA NARGS (* JonL "11-SEP-83 15:09") (PROG ((FNAME (STKNAME (
STKNTH -1)))) (OR (FMEMB FNAME (QUOTE (LOADBYTE DEPOSITBYTE))) (AND FNAME (LITATOM FNAME) (ILESSP 8 (
NCHARS FNAME)) (FMEMB (SUBATOM FNAME 2 4) (QUOTE (GET PUT))) (EQ (SUBATOM FNAME 5 8) (QUOTE BASE))) (
SHOULDNT (QUOTE \NONDADDARITH.TRAMPOLINE))) (PUTD FNAME NIL) (FILESLOAD (SYSLOAD COMPILED FROM 
LISPUSERS) NONDADDARITH) (if (NOT (DEFINEDP FNAME)) then (MOVD (FUNCTION \NONDADDARITH.TRAMPOLINE) 
FNAME) (ERROR FNAME "Apparently not defined in NONDADDARITH file?") else (APPLY FNAME (for I to NARGS 
collect (ARG NARGS I))))))))
(DECLARE: EVAL@LOADWHEN (NEQ (SYSTEMTYPE) (QUOTE D)) (DECLARE: EVAL@COMPILEWHEN (NEQ COMPILEMODE (
QUOTE D)) DONTCOPY (OR (CONSTANTEXPRESSIONP (QUOTE PTRBLOCK.GCT)) (PROGN (SETQ PTRBLOCK.GCT 1) (
CONSTANTS PTRBLOCK.GCT))) (FILESLOAD NONDADDARITH)) (MAPC (QUOTE (LOADBYTE DEPOSITEBYTE \GETBASEBIT 
\GETBASENIBBLE \GETBASEBYTE \GETBASEDOUBLEBYTE \GETBASEFIXP \GETBASEFLOATP \GETBASEPTR \PUTBASEBIT 
\PUTBASENIBBLE \PUTBASEBYTE \PUTBASEDOUBLEBYTE \PUTBASEFIXP \PUTBASEFLOATP \PUTBASEPTR)) (FUNCTION (
LAMBDA (X) (MOVD? (FUNCTION \NONDADDARITH.TRAMPOLINE) X)))))
(PUTPROPS AREF MACRO (X (SELECTC (LENGTH X) (2 (CONS (QUOTE \AREF.1) X)) (3 (CONS (QUOTE \AREF.2) X)) 
(QUOTE IGNOREMACRO))))
(PUTPROPS ASET MACRO (X (SELECTC (LENGTH X) (3 (CONS (QUOTE \ASET.1) X)) (4 (CONS (QUOTE \ASET.2) X)) 
(QUOTE IGNOREMACRO))))
(PUTPROPS ARRAYRANK MACRO ((CMLARRAY) (fetch CMLRANK of CMLARRAY)))
(PUTPROPS ARRAYDIMENSIONS MACRO (X (if (AND X (NULL (CDR X))) then (LIST (QUOTE fetch) (QUOTE CMLDIML)
 (CAR X)) else (QUOTE IGNOREMACRO))))
(PUTPROPS ARRAYDIMENSION MACRO ((CMLARRAY AXIS#) (CAR (NTH (fetch CMLDIML of CMLARRAY) (ADD1 AXIS#))))
)
(PUTPROPS MAKEARRAY ARGNAMES (INDICESLST (KEYWORDNAMES: ELEMENTTYPE INITIALELEMENT INITIALCONTENTS 
DISPLACEDTO DISPLACEDINDEXOFFSET)))
(PUTPROPS AREF ARGNAMES (CMLARRY ...indices...))
(PUTPROPS ASET ARGNAMES (NEWVALUE CMLARRY ...indices...))
(PUTPROPS ARRAYINBOUNDSP ARGNAMES (CMLARRY ...indices...))
((LAMBDA (C) (MAPC (QUOTE (P X 1 4 8 16 N L)) (FUNCTION (LAMBDA (A) (MAPC (QUOTE (AREF ASET)) (
FUNCTION (LAMBDA (B) (SETQ C (MKATOM (CONCAT "\" A B))) (PUTPROP (MKATOM (CONCAT A B)) (QUOTE MACRO) (
LIST (QUOTE X) (LIST (MKATOM (CONCAT "\Fast" B "expander")) (QUOTE X) (LIST (QUOTE QUOTE) C)))) (
PUTPROP C (QUOTE MACRO) (LIST (QUOTE X) (LIST (MKATOM (CONCAT "\NoSissy" B "expander")) (QUOTE X) (
LIST (QUOTE QUOTE) C))))))))))))
(RPAQ? AREFSissyFLG NIL)
(PUTPROPS AREFSissyFLG GLOBALVAR T)
(PUTDEF (QUOTE CMLARRAYS) (QUOTE FILEPKGCOMS) (QUOTE ((COM MACRO (X (E (MAPC (QUOTE X) (FUNCTION (
LAMBDA (VAR) (PRIN1 "(RPAQ ") (PRIN2 VAR) (PRIN1 "(\READCMLARRAY))") (TERPRI) (\PRINTCMLARRAY VAR)))))
)))))
(PUTPROPS CMLARRAY COPYRIGHT ("Xerox Corporation" 1982 1983))
NIL
    