(FILECREATED " 8-JAN-83 14:31:57" ("compiled on " <LISPUSERS>GLISP.LSP;5) (2 . 2) bcompl'd in WORK 
dated "30-DEC-82 00:01:56")
(FILECREATED " 2-DEC-82 14:39:50" {DSK}GLISP.LSP;110 208089 changes to: (FNS GLCOMPOPEN GLCONST? 
GLDOFOR GLPREDICATE GLTHE GLMACLISPTRANSFM GLCOMPPROP GLCOMPPROPL GLINIT GLDESCENDANTP GLDOMSG 
GLGETSUPERS) (VARS GLISPCOMS) previous date: "18-NOV-82 16:55:12" {DSK}GLISP.LSP;105)

A BINARY
            -.          Z   B  ,~       (VARIABLE-VALUE-CELL L . 3)
GLAINTERPRETER
(ENTERF)      

AN BINARY
            -.          Z   B  ,~       (VARIABLE-VALUE-CELL L . 3)
GLAINTERPRETER
(ENTERF)      

GL-A-AN? BINARY
                -.           Z   Z  ,   ,~       (VARIABLE-VALUE-CELL X . 3)
((A AN a an An) . 0)
(FMEMB ENTERF)  8      

GLABSTRACTFN? BINARY
            
    -.           
@    ,~   Z   B  XB   3B   +   	-,   +   	Z  2B  7   Z   ,~   Z   ,~   J@  (VARIABLE-VALUE-CELL FNNAME . 6)
(NIL VARIABLE-VALUE-CELL DEFN . 13)
GETD
MLAMBDA
(KT SKLST KNIL ENTERF)       h       X      

GLADDINSTANCEFN BINARY
              -.           Z   ,<  ,<  Z   F  ,~   @   (VARIABLE-VALUE-CELL FN . 3)
(VARIABLE-VALUE-CELL ENTRY . 6)
GLINSTANCEFNS
ADDPROP
(ENTERF)    

GLADDRESULTTYPE BINARY
              -.          Z   2B   +   Z   XB  ,~   -,   +   Z  2B  +   Z  ,<  [  D  3B   +   Z   ,~   Z   Z  ,<  Z  ,   D  ,~   Z  Z  ,   3B   +   Z   ,~   Z   ,<  Z  ,<  Z  ,<  ,   XB  ,~   
     (VARIABLE-VALUE-CELL SDES . 40)
(VARIABLE-VALUE-CELL RESULTTYPE . 43)
OR
MEMBER
NCONC
(LIST3 EQUAL CONSNL KT SKLST KNIL ENTERF)               @    X      0 
  0      

GLADDSTR BINARY
                -.            Z   ,<  Z   ,<  Z   ,<  Z   ,<  ,   Z  ,   D  
,~    @  (VARIABLE-VALUE-CELL ATM . 5)
(VARIABLE-VALUE-CELL NAME . 7)
(VARIABLE-VALUE-CELL STR . 9)
(VARIABLE-VALUE-CELL CONTEXT . 12)
RPLACA
(CONS LIST3 ENTERF)             

GLADJ BINARY
        L    ¾    É-.          ¾@  A   ,~   Z   2B  C+   
Z   ,<  ,<  Ã,<  D&  ÄXB   3B   +   	+   $Z   ,~   [   Z  ,<  Z  ,<  Z  F  ÄXB  3B   +   +   $[  
Z  B  EXB   Z  2B   +   +   	,<  ÅZ  B  F,   ,<  Z  ,<  Z  F  ÆXB   3B   +   ¢Z  ,<  [  Z  ,<  ,<   &  GXB   Z  ,<  Z  D  ÇZ  ,<  Z  D  ÇZ  ,~   [  XB  ¢+   [  Z  -,   +   º[  $Z  Z  ,<  ,<  H$  È3B   +   º[  &Z  [  Z  -,   +   º[  *Z  [  [  2B   +   º[   Z  ,<  Z  ,<  [  -Z  [  Z  F  ÄXB  ¡3B   +   ºXB  ²Z   2B   +   97   Z   XB  7+   $Z  0,<  Z  ¶,<  ,<   Z   H  I,~   g2:@B4D         (VARIABLE-VALUE-CELL SOURCE . 117)
(VARIABLE-VALUE-CELL PROPERTY . 44)
(VARIABLE-VALUE-CELL ADJWD . 99)
(VARIABLE-VALUE-CELL NOTFLG . 115)
(VARIABLE-VALUE-CELL CONTEXT . 122)
(NIL VARIABLE-VALUE-CELL ADJL . 119)
(NIL VARIABLE-VALUE-CELL TRANS . 70)
(NIL VARIABLE-VALUE-CELL TMP . 106)
(NIL VARIABLE-VALUE-CELL FETCHCODE . 61)
ISASELF
ISA
self
GLSTRPROP
GLTRANSPARENTTYPES
*GL*
GLXTRTYPE
GLADJ
GLSTRFN
GLSTRVAL
((NOT Not not) . 0)
MEMB
GLCOMPMSG
(KT SKA SKLST ALIST2 KNIL ENTERF)    P   `   `   X :  ¶   * P  0           

GLAINTERPRETER BINARY
            -.           @    P,~   Z"   XB   Z  XB   Z   XB   Z"   XB   Z   ,   XB   XB   Z  Z   ,   B  XB   Z  B  ,~    H      (VARIABLE-VALUE-CELL L . 19)
(NIL VARIABLE-VALUE-CELL CODE . 23)
(NIL VARIABLE-VALUE-CELL GLNATOM . 7)
(NIL VARIABLE-VALUE-CELL FAULTFN . 9)
(NIL VARIABLE-VALUE-CELL CONTEXT . 17)
(NIL VARIABLE-VALUE-CELL VALBUSY . 11)
(NIL VARIABLE-VALUE-CELL GLSEPATOM . 0)
(NIL VARIABLE-VALUE-CELL GLSEPPTR . 13)
(NIL VARIABLE-VALUE-CELL EXPRSTACK . 0)
(NIL VARIABLE-VALUE-CELL GLTOPCTX . 16)
(NIL VARIABLE-VALUE-CELL GLGLOBALVARS . 0)
GLAINTERPRETER
A
GLDOA
EVAL
(CONS CONSNL KNIL KT ASZ ENTERF)                    @      

GLAMBDATRAN BINARY
             -.          @    ,~   Z   XB   Z  B  Z  ,<  ,<  ,<  Z   ,<  ,<   &  XB   F  Z  B  ,<  Z  	,<  Z   F  Z  ,~   
B      (VARIABLE-VALUE-CELL GLEXPR . 14)
(VARIABLE-VALUE-CELL FAULTFN . 20)
(VARIABLE-VALUE-CELL GLLASTFNCOMPILED . 7)
(VARIABLE-VALUE-CELL CLISPARRAY . 25)
(NIL VARIABLE-VALUE-CELL NEWEXPR . 27)
SAVEDEF
GLCOMPILED
GLCOMP
PUTPROP
GETD
PUTHASH
(KNIL ENTERF)       

GLANALYZEGLISP BINARY
                -.           @    ,~   Z   [  XB   ,<  Z   D  XB   ,<  "  ,<  ,<  $  B  XB   ,<  Zp  -,   +   +   Zp  ,<  @     +      Z   B  Z  ,<  ,<  ,<  &  B  B  ,~   [p  XBp  +   /  Z   ,~   \´x@   (VARIABLE-VALUE-CELL GLISPCOMS . 6)
(VARIABLE-VALUE-CELL GLSPECIALFNS . 10)
(NIL VARIABLE-VALUE-CELL CALLEDFNS . 19)
(NIL VARIABLE-VALUE-CELL GLFNS . 12)
(NIL VARIABLE-VALUE-CELL GLALLFNS . 8)
LDIFFERENCE
((WHAT FNS NOT IN GLALLFNS ARE CALLED BY FNS IN GLFNS) . 0)
MASTERSCOPE
((ATOM apply RPLACD CDDR SET SOME EQUAL NUMBERP CAR CADR CONS RPLACA LIST DECLARE NCONC) . 0)
SORT
(VARIABLE-VALUE-CELL X . 33)
TERPRI
PRINT
FN
((WHAT FNS IN GLFNS CALL FN) . 0)
SUBST
(KNIL BHC SKNLST ENTER0)                  

GLANDFN BINARY
      5    °    ³-.           °Z   2B   +   Z   ,~   Z  2B   +   Z  ,~   Z  -,   +   Z  Z  2B  ±+   Z  -,   +   Z  
Z  2B  ±+   Z  ,<  Z  [  D  2,<  [  Z  ,   ,~   Z  -,   +   Z  Z  2B  ±+   Z  ,<  Z  ,   D  2,<  [  Z  ,   ,~   Z  -,   +   $Z  Z  2B  ±+   $Z  Z  [  ,   Z  ±,   ,<  [  Z  ,   ,~   Z  ",<  ,<  ±Z  ,   F  ²2B   +   0Z  $,<  ,<  ±Z  ¥F  32B   +   0,<  ±Z  (,<  Z  ©,   ,<  [  -Z  ,   ,~   &&	B J`  (VARIABLE-VALUE-CELL LHS . 88)
(VARIABLE-VALUE-CELL RHS . 93)
AND
APPEND
GLDOMSG
GLUSERSTROP
(ALIST3 CONS21 CONS CONSNL ALIST2 SKLST KNIL ENTERF)   ®    "    !    '     $ 0      @      8 (  X        

GLANYCARCDR? BINARY
      $        #-.           @     ,~   Z   ,<  ,<  $  2B   +   	Z  ,<  ,<   $  3B  !+   
Z   ,~   Z  B  ¡,   /"  ,   XB   Z"  XB      ,>  ,>        ,^  /  3b  +   Z   ,~   Z  
,<  Z  D  XB   3B  "+   2B  ¢+   	Z  ,   XB     ."  ,   XB  +     <x@ A<  (VARIABLE-VALUE-CELL ATM . 39)
(NIL VARIABLE-VALUE-CELL RES . 50)
(NIL VARIABLE-VALUE-CELL N . 54)
(NIL VARIABLE-VALUE-CELL NMAX . 31)
(NIL VARIABLE-VALUE-CELL TMP . 43)
1
NTHCHAR
C
-1
R
NCHARS
D
A
(CONS BHC ASZ MKN IUNBOX KNIL ENTERF)          `   8         
       

GLATOMSTRFN BINARY
               -.           @    ,~   ,<  [   D  XB   3B   +   Z   ,<  ,<  Z   ,<  ,<   (  2B   +   ,<  [  D  XB  3B   +   Z  ,<  [  Z  ,<  ,<  &  ,~   Z   ,~   $R     (VARIABLE-VALUE-CELL IND . 27)
(VARIABLE-VALUE-CELL DES . 22)
(VARIABLE-VALUE-CELL DESLIST . 15)
(NIL VARIABLE-VALUE-CELL TMP . 29)
PROPLIST
ASSOC
GLPROPSTRFN
BINDING
((EVAL *GL*) . 0)
GLSTRVALB
(KT KNIL ENTERF)        X   `      

GLATMSTR? BINARY
       ®    ©    --.           ©@  *  ,~   [   3B   +   [  Z  -,   +   [  [  3B   +   [  [  Z  -,   +   [  [  [  3B   +   Z   ,~   ,<  ª[  D  +XB   3B   +   [  [  2B   +   [  Z  B  «2B   +   +   ,<  ,[  D  +XB  3B   +   ¨[  ,<  Zp  -,   +   Z   +    Zp  ,<  ,<wÿ/  @  ¬   +   %Z   -,   +   $[   Z  B  «,~   Z   ,~   2B   +   'Z   +    [p  XBp  +   Z   ,~   "B)tBI    (VARIABLE-VALUE-CELL STR . 46)
(NIL VARIABLE-VALUE-CELL TMP . 51)
BINDING
ASSOC
GLOKSTR?
PROPLIST
(VARIABLE-VALUE-CELL X . 68)
(SKA BHC URET1 KT SKNLST SKLST KNIL ENTERF)  "        § X              h   p & P  `    X   H      

GLBUILDALIST BINARY
    !         -.          @    ,~   Z   2B   +   	Z   3B   +   ,<  ,<   $  ,~   Z   ,~   Z  ,<  [  	XB  
,\  XB   ,<  Z   ,<  Z   F  XB   3B   +   Z  ,<  Z  3B   +   3B   +   -,   +   ,<  ,<  ,   ,<  Z  ,<  ,<   &  ,   D  XB  +   $@ HVP  (VARIABLE-VALUE-CELL ALIST . 21)
(VARIABLE-VALUE-CELL PREVLST . 27)
(VARIABLE-VALUE-CELL PAIRLIST . 25)
(NIL VARIABLE-VALUE-CELL LIS . 51)
(NIL VARIABLE-VALUE-CELL TMP1 . 34)
(NIL VARIABLE-VALUE-CELL TMP2 . 45)
GLBUILDLIST
GLBUILDSTR
QUOTE
GLBUILDCONS
NCONC
(CONSNL LIST2 SKNNM KT KNIL ENTERF)     h   H           	  x   H      

GLBUILDCONS BINARY
     «    ¤    *-.           ¤Z   2B   +   Z   ,   ,<  Z   D  &,~   -,   +   Z  2B  ¦+   Z  [  ,   ,<  Z  D  &,~   Z  3B   +   Z  B  '3B   +   Z  	B  '3B   +   ,<  §Z  B  (,<  Z  B  (,   ,   ,~   Z  3B   +   !Z  B  ¨3B   +   !Z  B  ¨3B   +   !,<  ),<  §Z  B  (,<  Z  B  (,   ,   ,   ,~   ,<  ©Z  ,<  Z  ,<  ,   ,~   	0"Õ$
W$     (VARIABLE-VALUE-CELL X . 67)
(VARIABLE-VALUE-CELL Y . 69)
(VARIABLE-VALUE-CELL OPTFLG . 44)
GLBUILDLIST
LIST
GLCONST?
QUOTE
GLCONSTVAL
GLCONSTSTR?
COPY
CONS
(LIST3 ALIST2 CONSS1 CONS SKLST CONSNL KNIL ENTERF)  H      `                          X        

GLBUILDLIST BINARY
       Î    G    L-.           GZ   ,<  Zp  -,   +   Z   +   Zp  ,<  ,<wÿ$  H2B   +   	Z   +   [p  XBp  +   /  3B   +   +Z   3B   +   ,<  ÈZ  ,<  ,<   Zwÿ-,   +   Zp  Z   2B   +    "  +   [  QD   "  +   ZwÿB  IZp  ,   XBp  [wÿXBwÿ+   /  ,   ,~   ,<  É,<  ÈZ  ,<  ,<   Zwÿ-,   +   ¤Zp  Z   2B   +   ¢ "  +   $[  QD   "  +   ¨ZwÿB  IZp  ,   XBp  [wÿXBwÿ+   /  ,   ,   B  J,~   Z  ,<  Zp  -,   +   ®Z   +   4Zp  ,<  ,<wÿ$  Ê2B   +   ²Z   +   4[p  XBp  +   ,/  3B   +   E,<  K,<  ÈZ  +,<  ,<   Zwÿ-,   +   ¾Zp  Z   2B   +   ¼ "  +   >[  QD   "  +   ÂZwÿB  IZp  ,   XBp  [wÿXBwÿ+   8/  ,   ,   B  J,~   Z  ËZ  ¶,   ,~   Q)(P#P"
ÉA
P     (VARIABLE-VALUE-CELL LST . 139)
(VARIABLE-VALUE-CELL OPTFLG . 24)
GLCONST?
QUOTE
GLCONSTVAL
APPEND
GLGENCODE
GLCONSTSTR?
COPY
LIST
(CONS ALIST2 COLLCT BHC KNIL KT SKNLST ENTERF)  G    Ä @ ª       A p     Ã P © 0     » 0 ¸ X ²  ¡   0     @ 	     h     ¹ X          

GLBUILDNOT BINARY
        .    &    ¬-.          &@  '  ,~   Z   B  §3B   +   Z  B  (2B   +   7   Z   ,~   Z  -,   +   ,<  ¨,<  ,   ,~   Z  2B  ¨+   [  Z  ,~   Z  -,   +   Z   ,~   Z  ,<  Z   2B  )+   Z  ©+   3B  *+   2B  ª+   Z  ++   2B  «+   Z  ,+   Z      ,\  7  [  Z  Z  1H  +   2D   +   XB   3B   +   £[  Z  [  ,   ,~   ,<  ¨Z  ",<  ,   ,~   U`
      (VARIABLE-VALUE-CELL CODE . 72)
(VARIABLE-VALUE-CELL GLLISPDIALECT . 37)
(NIL VARIABLE-VALUE-CELL TMP . 66)
GLCONST?
GLCONSTVAL
NOT
INTERLISP
(((LISTP NLISTP) (EQ NEQ) (NEQ EQ) (IGREATERP ILEQ) (ILEQ IGREATERP) (ILESSP IGEQ) (IGEQ ILESSP) (
GREATERP LEQ) (LEQ GREATERP) (LESSP GEQ) (GEQ LESSP)) . 0)
MACLISP
FRANZLISP
(((> <=) (< >=) (<= >) (>= <)) . 0)
PSL
(((EQ NE) (NE EQ) (LEQ GREATERP) (GEQ LESSP)) . 0)
(CONS SKNA LIST2 SKNLST KT KNIL ENTERF)  £        & @             0     P      

GLBUILDPROPLIST BINARY
              -.          @    ,~   Z   2B   +   	Z   3B   +   ,<  ,<   $  ,~   Z   ,~   Z  ,<  [  	XB  
,\  XB   ,<  Z   ,<  Z   F  XB   3B   +   Z  ,<  Z  3B   +   3B   +   -,   +   ,<  ,<  ,   ,<  Z  ,<  ,   D  XB  +   $@ HV@  (VARIABLE-VALUE-CELL PLIST . 21)
(VARIABLE-VALUE-CELL PREVLST . 27)
(VARIABLE-VALUE-CELL PAIRLIST . 25)
(NIL VARIABLE-VALUE-CELL LIS . 49)
(NIL VARIABLE-VALUE-CELL TMP1 . 34)
(NIL VARIABLE-VALUE-CELL TMP2 . 45)
GLBUILDLIST
GLBUILDSTR
QUOTE
NCONC
(LIST2 SKNNM KT KNIL ENTERF)                  	  x   H      

GLBUILDRECORD BINARY
       ¥      !-.         @   ,~   [   Z  -,   +   [  Z  XB   [  [  XB   +   [  XB  Z  2B +   Z Z  	,   XB  Z   2B +   AZ  3B   +   ­,<  Z  ,<  ,<   ,<   ,<   Zwþ-,   +   Zw+   +Zwþ,<  @    +   !Z   ,<  Z   ,<  Z   F XB   3B   +    Z  ,<  ,< Z  ,<  ,   ,~   Z   ,~   XBp  -,   +   ©Zwÿ3B   +   ¥Zp  QD  +   ¦Zp  XBw      [  2D   +   'XBwÿ[wþXBwþ+   /  ,   Z ,   ,~   Z  ,<  ,<   Zwÿ-,   +   µZp  Z   2B   +   ³ "  +   5[  QD   "  +   ¾Zwÿ,<  @    +   »Z  ,<  Z  ,<  Z  F ,~   Zp  ,   XBp  [wÿXBwÿ+   //  ,<  ,<   $ ,~   2B +   Ö,< Z  ­,<  ,<   Zwÿ-,   +   ÊZp  Z   2B   +   È "  +   J[  QD   "  +   ÓZwÿ,<  @    +   ÐZ  8,<  Z  9,<  Z  :F ,~   Zp  ,   XBp  [wÿXBwÿ+   D/  ,<  ,<   $ ,   ,~   2B +   oZ  Â,<  ,<   Zwÿ-,   +   ßZp  Z   2B   +   Ý "  +   _[  QD   "  +   èZwÿ,<  @    +   åZ  M,<  Z  N,<  Z  OF ,~   Zp  ,   XBp  [wÿXBwÿ+   Y/  XB  ,< [  i,<  Z  j,   D ,<  ,<   $ ,   ,~   2B  +  Z  ×,<  ,<   Zwÿ-,   +   xZp  Z   2B   +   v "  +   ÷[  QD   "  +  Zwÿ,<  @    +   ~Z  b,<  Z  c,<  Z  dF ,~   Zp  ,   XBp  [wÿXBwÿ+   ñ/  Z  ,   ,~   Z  p,<  ,<   Zwÿ-,   +  Zp  Z   2B   +  	 "  +  [  QD   "  +  Zwÿ,<  @    +  Z  ú,<  Z  û,<  Z  üF ,~   Zp  ,   XBp  [wÿXBwÿ+  /  ,<  ,<   $ ,~   aH	Q(8DP "0E	 @HIA
A@"DP@D   (VARIABLE-VALUE-CELL STR . 19)
(VARIABLE-VALUE-CELL PAIRLIST . 285)
(VARIABLE-VALUE-CELL PREVLST . 287)
(VARIABLE-VALUE-CELL GLLISPDIALECT . 26)
(NIL VARIABLE-VALUE-CELL TEMP . 214)
(NIL VARIABLE-VALUE-CELL ITEMS . 262)
(NIL VARIABLE-VALUE-CELL RECORDNAME . 29)
OBJECT
((CLASS ATOM) . 0)
INTERLISP
(VARIABLE-VALUE-CELL X . 283)
GLBUILDSTR
_
create
GLBUILDLIST
FRANZLISP
MAKHUNK
MACLISP
NCONC
PSL
Vector
(CONSNL ALIST2 KT COLLCT CONS21 CONSS1 BHC SKLST LIST3 SKNLST KNIL CONS SKA ENTERF)  ì    o 
h   ` Õ    x g 
  =    X   H   P  Ô x ,    ¢         0 Ú X ° H   ` x P ô   Ü @ Ù x G H À ( 2 x ) @ ! H  0      P    P      

GLBUILDSTR BINARY
     r   S   k-.          S@ Ô  (
,~   Z WXB   Z   2B   +   Z   ,~   -,   +   ,<  Z  D ×XB   3B   +   [  	,~   Z  ,<  Z   D X3B   +   +   Z  B ØXB  3B   +   ,<  ,<   Z  Z  ,   F Y,~   -,   +   ,< Y,< Ù,<  ,   D Z+   Z  2B Ú+   ¤[  Z  ,<  Z   ,<  Z  F Y,<  [  [  Z  ,<  Z  ,<  Z  F Y,<  ,<   & [,~   2B Û+   9[  ,<  ,<   Zwÿ-,   +   ­Zp  Z   2B   +   « "  +   -[  QD   "  +   ¶Zwÿ,<  @ \   +   ³Z   ,<  Z   ,<  Z  ¡F Y,~   Zp  ,   XBp  [wÿXBwÿ+   '/  ,<  ,<   $ Ü,~   2B ]+   ÓZ  23B   +   ?3B   +   ?-,   +   ?,< Ý,<  ,   ,<  [  ¥,<  ,<   Zwÿ-,   +   ÇZp  Z   2B   +   Å "  +   G[  QD   "  +   ÐZwÿ,<  @ \   +   ÍZ  0,<  Z  1,<  Z  :F Y,~   Zp  ,   XBp  [wÿXBwÿ+   A/  ,   ,<  ,<   $ Ü,~   2B ^+   W[  ¿,<  Z  LD Þ,~   2B _+   Ú[  Ô,<  Z  ÕD ß,~   2B `+   ,< àZ a,   ,<  ,< á,< aZ  Y3B   +   hZ  Þ-,   +   h,< bZ  `3B   +   g3B   +   g-,   +   g,< Ý,<  ,   ,   +   iZ â,   ,   ,   XB   ,< cZ  XD ×XB  3B   +   õ[  lZ  ,<  Z  K,<  Z  bF YXB   Z  j,<  ,< ã,< a,<  ,   ,   D d,< _Z  kD ×XB  í3B   +   {[  wXB   ,<  Z  pD äZ  ñ,<  ,< e" å,   D dZ  {,~   2B f+  ,< àZ a,   ,<  ,< á,< aZ  z3B   +  Z -,   +  ,< bZ 3B   +  3B   +  -,   +  ,< Ý,<  ,   ,   +  Z â,   ,   ,   XB  ~,<  ,< æ,< a,< Ý,< g,   ,<  Z 3B   +  3B   +  -,   +  ,< Ý,<  ,   ,   B ç,   D d[  v,<  Z D äZ ,<  ,< h" å,   D d,~   2B è+  ,[ Z  ,<  Z D X2B   +  +[  Z  B ØXB  ø3B   +  +,<  Z  o,<  [ £Z  Z ¡,   F Y,~   Z   ,~   2B i+  .Z   ,~   2B é+  ²Z (,<  Z ',<  Z )F j,~   2B ê+  ¾Z /,<  ,< gZ 13B   +  :3B   +  :-,   +  :,< Ý,<  ,   ,<  ,< `,   Z 0,   ,<  Z 5F j,~   Z ³-,   +  RZ ¾,<  Z »D ×XB %3B   +  E[ BZ  ,~   [ @Z  -,   +  N[ EZ  ,<  Z  D ×2B   +  N[ GZ  ,<  ,<   Z =F Y,~   [ ÊZ  ,<  Z A,<  Z ÌF Y,~   Z   ,~   Iis00"DP EJ`Q(XØ<de1ÂFH¦22XàpV&XR L%1! @            (VARIABLE-VALUE-CELL STR . 412)
(VARIABLE-VALUE-CELL PAIRLIST . 415)
(VARIABLE-VALUE-CELL PREVLST . 417)
(NIL VARIABLE-VALUE-CELL PROPLIS . 242)
(NIL VARIABLE-VALUE-CELL TEMP . 391)
(NIL VARIABLE-VALUE-CELL PROGG . 311)
(NIL VARIABLE-VALUE-CELL TMPCODE . 226)
(NIL VARIABLE-VALUE-CELL ATMSTR . 401)
(((ATOM) (INTEGER . 0) (REAL . 0.0) (NUMBER . 0) (BOOLEAN) (NIL) (ANYTHING)) . 0)
ASSOC
MEMB
GLGETSTR
GLBUILDSTR
"Illegal structure type encountered:"
GLERROR
CONS
GLBUILDCONS
LIST
(VARIABLE-VALUE-CELL X . 148)
GLBUILDLIST
LISTOBJECT
QUOTE
ALIST
GLBUILDALIST
PROPLIST
GLBUILDPROPLIST
ATOM
PROG
ATOMNAME
SETQ
GLMKATOM
GENSYM
BINDING
SET
NCONC
GLPUTPROPS
((RETURN ATOMNAME) . 0)
COPY
ATOMOBJECT
PUTPROP
CLASS
GLGENCODE
((RETURN ATOMNAME) . 0)
TRANSPARENT
LISTOF
RECORD
GLBUILDRECORD
OBJECT
(ALIST4 LIST3 ALIST3 ALIST2 CONSNL CONSS1 SKNNM KT BHC COLLCT LIST2 SKNLST CONS SKA KNIL ENTERF)     < P   p ( j        h ` ` õ  Ý    R   ¸ `
 X ½   · P	 H ¼    Ñ x   	p 5   º   @ ç x     Â     = (    G       S PÊ 8¶ `, h£ @ H ø X ã   S H D  »  ª   § @    (   X      

GLCARCDRRESULTTYPE BINARY
                -.           Z   2B   +   Z   ,~   Z  2B   +   Z   ,~   -,   +   	B  XB  +   -,   +      ,~   Z  ,<  B  D  ,~   k (VARIABLE-VALUE-CELL LST . 22)
(VARIABLE-VALUE-CELL STR . 16)
GLGETSTR
ERROR
GLXTRTYPE
GLCARCDRRESULTTYPEB
(SKNLST SKA KNIL ENTERF)  
          X        

GLCARCDRRESULTTYPEB BINARY
    º    3    ¸-.          3Z   2B   +   Z   ,~   -,   +   Z   ,<  D  ´,~   -,   +   	   5,~   Z  -,   +   Z  	,<  Z   D  µ2B   +   [  3B   +   [  [  2B   +   Z  ,<  [  Z  D  ´,~   Z  2B  6+   Z  3B  ¶+   Z  3B  7+   Z  2B  ·+   [  ,<  [  Z  D  ´,~   Z   ,~   Z  2B  8+   2Z  2B  7+   ¤[  ,<  [  [  Z  D  ´,~   Z  "2B  ·+   -[  ¤[  3B   +   ,[  !,<  Z  ·[  &[  ,   D  ´,~   Z   ,~   Z  ©2B  ¶7   7   +   ²[  (,<  Z  -D  ´,~      5,~   1
"6aàHB"@     (VARIABLE-VALUE-CELL LST . 95)
(VARIABLE-VALUE-CELL STR . 97)
(VARIABLE-VALUE-CELL GLTYPENAMES . 23)
GLCARCDRRESULTTYPE
ERROR
MEMB
A
LISTOF
CONS
LIST
D
(KT CONS SKNLST SKA KNIL ENTERF) x   8       (     / P ( `  p   @        

GLCARCDR? BINARY
            -.           Z   Z  ,   ,~       (VARIABLE-VALUE-CELL X . 3)
((CAR CDR CAAR CADR CDAR CDDR CAAAR CAADR CADAR CDAAR CADDR CDADR CDDAR CDDDR) . 0)
(FMEMB ENTERF)    8      

GLCC BINARY
           
    -.          
Z   2B   +   Z   XB  B  2B   +   Z  B  ,<  "     ,~   Z  B  ,~   +d  (VARIABLE-VALUE-CELL FN . 17)
(VARIABLE-VALUE-CELL GLLASTFNCOMPILED . 6)
GLGETD
PRIN1
" ?"
TERPRI
GLCOMPILE
(KNIL ENTERF)    X        

GLCLASS BINARY
              -.           @    ,~   Z   -,   +   ,<  ,<  $  +   	-,   +   Z  +   	Z   XB   3B   +   B  3B   +   Z  	,~   Z   ,~   .QP (VARIABLE-VALUE-CELL OBJ . 15)
(NIL VARIABLE-VALUE-CELL CLASS . 24)
CLASS
GETPROP
GLCLASSP
(KNIL SKLST SKA ENTERF)  `  (                

GLCLASSMEMP BINARY
               -.           Z   B  ,<  Z   D  ,~   @   (VARIABLE-VALUE-CELL OBJ . 3)
(VARIABLE-VALUE-CELL CLASS . 6)
GLCLASS
GLDESCENDANTP
(ENTERF)      

GLCLASSP BINARY
             -.           @    ,~   Z   -,   +   ,<  ,<  $  XB   3B   +   Z  B  Z  ,<  ,<  $  ,~   Z   ,~   ,S  (VARIABLE-VALUE-CELL CLASS . 6)
(NIL VARIABLE-VALUE-CELL TMP . 15)
GLSTRUCTURE
GETPROP
GLXTRTYPE
((OBJECT ATOMOBJECT LISTOBJECT) . 0)
MEMB
(KNIL SKA ENTERF)   @            

GLCLASSSEND BINARY
               -.            @    ,~   Z   ,<  Z   ,<  Z   F  XB   3B   +   ,<  Z   D  ,~   Z  ,~   J  (VARIABLE-VALUE-CELL CLASS . 6)
(VARIABLE-VALUE-CELL SELECTOR . 8)
(VARIABLE-VALUE-CELL ARGS . 16)
(VARIABLE-VALUE-CELL PROPNAME . 10)
(NIL VARIABLE-VALUE-CELL FNCODE . 12)
GLCOMPPROP
APPLY
GLSENDFAILURE
(KNIL ENTERF)  x      

GLCOMP BINARY
     ²    ¤    1-.          ¤@  ¦  X,~   Z"   XB   Z   2B   +   ,<  ,Z   ,<  ,   B  ¬Z   ,   XB   Z"   XB   Z   ,   XB   [  Z  ,<  ,<   ,<   Z  ,<  Z  J  -XB   [  [  XB     ­   .   ­   .[  2B   +   7   Z   XB   Z  ,<  Z   Z  ,   D  ®XB   Z  ,<  ,<  /Z   2B   +   [  Z  F  ¯Z  Z  ,   Z  0,   XB   ,<  ,<   $  °,~     <@     (VARIABLE-VALUE-CELL GLAMBDAFN . 54)
(VARIABLE-VALUE-CELL GLEXPR . 47)
(VARIABLE-VALUE-CELL GLTYPESUBS . 0)
(VARIABLE-VALUE-CELL GLQUIETFLG . 8)
(NIL VARIABLE-VALUE-CELL NEWARGS . 63)
(NIL VARIABLE-VALUE-CELL NEWEXPR . 64)
(NIL VARIABLE-VALUE-CELL GLNATOM . 20)
(NIL VARIABLE-VALUE-CELL GLTOPCTX . 50)
(NIL VARIABLE-VALUE-CELL RESULTTYPE . 57)
(NIL VARIABLE-VALUE-CELL GLGLOBALVARS . 0)
(NIL VARIABLE-VALUE-CELL RESULT . 68)
(NIL VARIABLE-VALUE-CELL GLSEPATOM . 0)
(NIL VARIABLE-VALUE-CELL GLSEPPTR . 7)
(NIL VARIABLE-VALUE-CELL VALBUSY . 46)
(NIL VARIABLE-VALUE-CELL EXPRSTACK . 18)
GLCOMP
PRINT
GLDECL
GLSKIPCOMMENTS
GLRESGLOBAL
GLPROGN
GLRESULTTYPE
PUTPROP
LAMBDA
GLUNWRAP
(CONS21 CONS KT CONSNL LIST2 KNIL ASZ ENTERF)   ¢    ¡ (   @  h   @            `  8       @      

GLCOMPABSTRACT BINARY
       !         -.           @    ,~   Z   ,<  ,<  $  2B   +   ^"   +   ,   ."  ,   XB   Z  ,<  ,<  F  Z  	B  ,<  Z  B  Z  ,   D  B  XB   Z  ,<  ,   XB   D  Z  ,<  ,<  Z  B  ,<  Z   F  D  Z  ,~   5S0B0   (VARIABLE-VALUE-CELL FN . 40)
(VARIABLE-VALUE-CELL TYPESUBS . 43)
(NIL VARIABLE-VALUE-CELL INSTFN . 46)
(NIL VARIABLE-VALUE-CELL N . 25)
(NIL VARIABLE-VALUE-CELL INSTENT . 35)
GLINSTANCEFNNO
GETPROP
PUTPROP
UNPACK
-
NCONC
PACK
GLADDINSTANCEFN
GETD
GLCOMP
PUTD
(CONSNL CONS21 MKN IUNBOX KNIL ENTERF)      p           `      

GLCOMPCOMS BINARY
      .    %    ¬-.           %@  &  ,~   Z   2B   +   Z   ,~   Z  -,   +   £Z  Z  2B  ¦+   £Z  [  Z  2B  '+   Z  	[  [  Z  B  §+   Z  [  XB   ,<  Zp  -,   +   +   #Zp  ,<  @  (   +   ¡Z   B  ¨Z  2B  )+   !Z  B  ©Z   3B   +   !   *   *   *Z  B  ªZ  B  ¨B  +   *Z  ,<  ,<  «$  ,B  +,~   [p  XBp  +   /  [  XB  £+   !aÀJZ=9b     (VARIABLE-VALUE-CELL COMSLIST . 72)
(VARIABLE-VALUE-CELL PRINTFLG . 49)
(NIL VARIABLE-VALUE-CELL FNS . 31)
FNS
*
EVAL
(VARIABLE-VALUE-CELL X . 61)
GLGETD
GLAMBDA
GLCOMPILE
TERPRI
PRINT
PRINTDEF
GLCOMPILED
GETPROP
(BHC SKNLST SKLST KNIL ENTERF)   @        p       H      

GLCOMPILE BINARY
               -.           Z   B  B  Z  ,~       (VARIABLE-VALUE-CELL FAULTFN . 6)
GLGETD
GLAMBDATRAN
(ENTERF)     

GLCOMPILE? BINARY
              -.           Z   ,<  ,<  $  2B   +   Z  B  ,~   (   (VARIABLE-VALUE-CELL FN . 9)
GLCOMPILED
GETPROP
GLCOMPILE
(KNIL ENTERF)  H      

GLCOMPMSG BINARY
            -.           @   (
,~   [   [  ,<  ,< $ XB   [  Z  XB   -,   +   ½[  [  ,<  ,< $ 3B   +   Z  ,<  Z   Z   ,   ,<  [  Z  ,<  [  [  ,<  ,< $ ,   ,<  Z  ,<  [  [  ,<  ,< $ J 	,~   Z  ,<  Z  ,<  Z  ,<  ,<   Zwÿ-,   +   ¢Zp  Z   2B   +     "  +   "[  QD   "  +   ¦ZwÿZ  Zp  ,   XBp  [wÿXBwÿ+   /  ,   ,   ,<  Z  ,<  [  Z  ,<  Z  ,<  ,<   Zwÿ-,   +   3Zp  Z   2B   +   1 "  +   ²[  QD   "  +   ·Zwÿ[  Z  Zp  ,   XBp  [wÿXBwÿ+   ¬/  ,   D 2B   +   ¼[  [  ,<  ,< $ ,   ,~   -,   +   Á,< 
,< Z  :,   D ,~   Z  ¨-,   +   ÓZ  ÁZ  ,<  ,< $ 3B   +   Ó[  ¿[  ,<  ,< $ XB   2B   +   Ð[  ©Z  ,<  Z  CD XB  IZ  Æ,<  ,< ,<  ,   D Z  Ê,<  Z  M,<  ,   ,~   Z   ,   XB   Z  Ð-,   +   \,< Z  U,   ,<  ,< [  WZ  ,<  Z  ÔH +   ïZ  Y-,   +   iZ  \Z  2B +   iZ  Ý[  Z  -,   +   iZ  ß[  [  2B   +   iZ  b,<  ,< [  äZ  ,<  Z  ÚH +   ï,< Z  f,   Z   ,   XB  ê,< ,<   [  éZ  ,<  Z  çH Z  L,<  Z  îD XB   ,<  Z  ñ[  3B   +   öZ Z  ò,   +   ÷Z  uZ  D Z  ë3B   +   ý,< ,<  ,< Z  ö,   ,   B +   ~Z  {,<  Z  2B   +  [  ýZ  ,   ,~   P ` "D  FD4d b!pA#         (VARIABLE-VALUE-CELL OBJECT . 218)
(VARIABLE-VALUE-CELL MSGLST . 155)
(VARIABLE-VALUE-CELL ARGLIST . 86)
(VARIABLE-VALUE-CELL CONTEXT . 225)
(NIL VARIABLE-VALUE-CELL GLPROGLST . 240)
(NIL VARIABLE-VALUE-CELL RESULTTYPE . 253)
(NIL VARIABLE-VALUE-CELL METHOD . 223)
(NIL VARIABLE-VALUE-CELL RESULT . 256)
(NIL VARIABLE-VALUE-CELL VTYPE . 163)
RESULT
LISTGET
OPEN
ARGTYPES
SPECVARS
GLCOMPOPEN
GLRESULTTYPE
GLCOMPMSG
"The form of Response is illegal for message"
GLERROR
((virtual Virtual VIRTUAL) . 0)
MEMB
VTYPE
GLMAKEVTYPE
NCONC
PROG1
self
GLADDSTR
GLPROGN
PROGN
RPLACA
PROG
RETURN
GLGENCODE
(ALIST3 CONSNL LIST2 SKLST ALIST2 BHC COLLCT SKNLST CONSS1 CONS KNIL SKA ENTERF) P   
P   
8 Ð    Ý 0     ü 0 Ø  ½    ¸ x   ` %    ¾ `     9  ( @   h l p     ù H í H Ô 	( Æ   0 x - x  H     b 
h        

GLCOMPOPEN BINARY
       ®      ©-.     (    @   0,~   Z   ,   XB   Z   B  XB   [  Z  ,<  ,<   ,<   Z  ,<  ,<   *  Z  B !XB   Z  ,<  ,<   $ ¡Z  2B   +   +   ÝZ   2B   +   Z  Z  ,<  ,<   Z   2B   +   Z  [  [  Z  ,<  Z  H "Z  Z  Z   ,   XB  +   ØZ  Z  -,   +   ®Z   3B   +   ®Z  Z  ,<  Z  D ¢2B   +   ®,< #Z  Z  ,   ,<  Z  Z  ,<  Z  #[  Z  2B   +   ¬Z  2B   +   ¬Z  %[  [  Z  ,<  Z  H "+   ØZ   3B   +   IZ  ªZ  ,<  Z  ®D ¢2B   +   IZ  ¦Z  -,   +   IZ  ³Z  Z  2B #+   IZ  µZ  [  Z  -,   +   IZ  8Z  [  [  2B   +   IZ  ;Z  ,<  Z  0Z  ,<  Z  >[  Z  2B   +   GZ  )2B   +   GZ  ¿[  [  Z  ,<  Z  -H "+   ØZ  EZ  ,<  Z  AZ  ,   Z   ,   XB  LZ  IZ  ,<  Z  Í[  Z  ,<  Z  Ê[  Z  2B   +   WZ  Ã2B   +   WZ  O[  [  Z  ,<  Z  ÇH "[  UXB  ØZ  Q-,   +   \[  ÙXB  [[  ÓXB  \+   [  [  XB  ÝZ  Þ3B   +   åZ  _-,   +   åZ  àZ  2B £+   å[  bXB  d+   _Z  ä,<  Z  ×D $XB   Z   2B   +   üZ   [  3B   +   üZ  ç,<  ,< ¤$ %XB  Y[  Z  -,   +   ú[  íZ  -,   +   ü[  pZ  Z  2B #+   ü[  rZ  [  Z  -,   +   ü[  ôZ  [  [  2B   +   üZ  ÷,<  ,<   $ ¥Z  M3B   +  Z  ëB &XB  ú,<  ,< ¦Z  ,   D ¡Z  üB !Z  ~,   Z ',   B §+  Z [  3B   +  
Z (Z ,   +  Z Z  ,<  Z   2B   +  Z  ,<  ,<   $ ¨2B   +  [ 
Z  ,   XB   Z  Û2B   +  Z ,<  ,< )Z  B !,<  Z ,   D ¡Z ,~   !$ Q  `  $!&"0D0 Ä$Rc¢        (VARIABLE-VALUE-CELL FN . 282)
(VARIABLE-VALUE-CELL ARGS . 292)
(VARIABLE-VALUE-CELL ARGTYPES . 185)
(VARIABLE-VALUE-CELL RESULTTYPE . 279)
(VARIABLE-VALUE-CELL SPCVARS . 99)
(VARIABLE-VALUE-CELL VALBUSY . 208)
(VARIABLE-VALUE-CELL EXPR . 211)
(VARIABLE-VALUE-CELL RESULT . 304)
(NIL VARIABLE-VALUE-CELL PTR . 257)
(NIL VARIABLE-VALUE-CELL FNDEF . 203)
(NIL VARIABLE-VALUE-CELL GLPROGLST . 260)
(NIL VARIABLE-VALUE-CELL NEWEXPR . 288)
(NIL VARIABLE-VALUE-CELL CONTEXT . 205)
(NIL VARIABLE-VALUE-CELL NEWARGS . 298)
GLGETD
GLDECL
DREVERSE
RPLACA
GLADDSTR
MEMB
PROG1
*
GLPROGN
2
NLEFT
RPLACD
LAST
RETURN
PROG
GLGENCODE
PROGN
GLRESULTTYPE
LAMBDA
(ALIST3 CONS21 SKNA SKLST ALIST2 SKA CONS KT CONSNL KNIL ENTERF)     X         b 0 µ      Ì P   x ; X     	X                 p   ~ H ú 8 é  U 
8 E 8 > 8 ª  ¢ P  x  ( 	  @      

GLCOMPPROP BINARY
      C    2    A-.           2@  ³  p,~   Z  ºXB   Z   ,<  ,<  ;$  »2B   +      <Z   ,<  Z   ,<  Z  F  ¼XB   3B   +   [  Z  -,   +   [  Z  ,~   Z  ,<  ,<  =$  ½XB   3B   +   Z  ,<  D  >XB   3B   +   Z  ,<  [  D  >XB  3B   +   [  Z  ,~   Z"   XB   Z   XB   Z"   XB   Z   ,   XB   XB   Z  ,<  Z  ,<  Z  F  ¾XB   2B   +   ¥Z   ,~   Z  2B   +   -Z   ,<  ,<  =,<  ?"  ¿XB  ¥F  @Z  ",<  Z  ©D  >XB  Z  ¬,<  Z  !Z  #,   [  -,   D  ÀZ  ®,~   A$D@ B:      (VARIABLE-VALUE-CELL STR . 78)
(VARIABLE-VALUE-CELL PROPNAME . 92)
(VARIABLE-VALUE-CELL PROPTYPE . 85)
(NIL VARIABLE-VALUE-CELL CODE . 98)
(NIL VARIABLE-VALUE-CELL PL . 87)
(NIL VARIABLE-VALUE-CELL SUBPL . 95)
(NIL VARIABLE-VALUE-CELL PROPENT . 51)
(NIL VARIABLE-VALUE-CELL GLNATOM . 55)
(NIL VARIABLE-VALUE-CELL CONTEXT . 63)
(NIL VARIABLE-VALUE-CELL VALBUSY . 57)
(NIL VARIABLE-VALUE-CELL GLSEPATOM . 0)
(NIL VARIABLE-VALUE-CELL GLSEPPTR . 59)
(NIL VARIABLE-VALUE-CELL EXPRSTACK . 0)
(NIL VARIABLE-VALUE-CELL GLTOPCTX . 62)
(NIL VARIABLE-VALUE-CELL GLGLOBALVARS . 0)
(NIL VARIABLE-VALUE-CELL GLTYPESUBS . 0)
(NIL VARIABLE-VALUE-CELL FAULTFN . 7)
GLCOMPPROP
((ADJ ISA PROP MSG) . 0)
MEMB
ERROR
GLGETPROP
GLPROPFNS
GETPROP
ASSOC
GLCOMPPROPL
(((PROP) (ADJ) (ISA) (MSG)) . 0)
COPY
PUTPROP
RPLACD
(CONS CONSNL KT ASZ SKA KNIL ENTERF)  0             @   `   p ¥ H    0   p      

GLCOMPPROPL BINARY
     h    Ö    e-.           Ö@  X  0,~   Z   ,<  Z   ,<  Z   F  [XB   3B   +   &[  Z  -,   +   [  [  ,<  ,<  Û$  \3B   +   [  Z  ,<  ,<   Z  ,   ,<  ,<   ,<   *  ÜXB   +   *[  Z  ,<  [  Z  ,<  ,<   $  ],   XB  +   *,<  ÝZ  ,<  ,   ,<  Z  ,<  Z  F  ^XB  3B   +   *,<  ÞZ  Ý,   ,<  Z  ,<  ,<   $  _,   ,<  [   Z  ,   XB  £+   *Z  B  ßXB   3B   +   )+   2Z   ,~   Z  %,<  ,<   $  _,<  [  *Z  2B   +   1[  [  ,<  ,<  `$  \,   ,~   Z  '2B   +   4+   )Z  2,<  Z  ,<  Z  F  àXB   3B   +   UZ  7-,   +   >,<  à,<  aZ  5,<  ,<  á,   D  b+   )Z  4,<  Z  &,<  ,<   &  âXB      cXB   Z  A,<  D  ã,<  ÞZ  BZ  ¸[  Z  [  ,   ,<  ,<  dZ  E[  Z  Z  ,<  Z  Â,   ,   ,<  ,<  äZ  È[  [  Z  ,   ,   ,   ,<  ,<   $  _,<  [  ÍZ  ,   ,~   [  >XB  U+   2D4  N
0!$r`Q@@ @     (VARIABLE-VALUE-CELL STR . 126)
(VARIABLE-VALUE-CELL PROPNAME . 118)
(VARIABLE-VALUE-CELL PROPTYPE . 108)
(NIL VARIABLE-VALUE-CELL CODE . 89)
(NIL VARIABLE-VALUE-CELL MSGL . 93)
(NIL VARIABLE-VALUE-CELL TRANS . 171)
(NIL VARIABLE-VALUE-CELL TMP . 166)
(NIL VARIABLE-VALUE-CELL FETCHCODE . 150)
(NIL VARIABLE-VALUE-CELL NEWVAR . 137)
GLSTRPROP
OPEN
LISTGET
GLCOMPOPEN
GLRESULTTYPE
self
GLADJ
LAMBDA
GLUNWRAP
GLTRANSPARENTTYPES
RESULT
GLCOMPPROPL
"GLISP cannot currently
handle inheritance of the property"
"which is specified as a function name
in a TRANSPARENT subtype.  Sorry."
GLERROR
GLSTRFN
GLMKVAR
GLSTRVAL
PROG
RETURN
(CONS LIST3 ALIST3 LIST2 ALIST2 CONSNL KT SKA KNIL ENTERF)   	    X   
 Q 8   0   
P Ð 	H 2 X     M      Ò @ ¢ x         A  ³ h *   p     x      

GLCONST? BINARY
                -.           Z   2B   +   Z   ,~   3B   7   7   +   Z  -,   +   -,   +   Z  2B  +   [  Z  -,   7   7   +   Z  
-,   +   ,<  ,<  $  ,~   Z   ,~   VX     (VARIABLE-VALUE-CELL X . 26)
QUOTE
GLISPCONSTANTFLG
GETPROP
(SKA SKNA SKLST SKNNM KT KNIL ENTERF)                     X   @      `        

GLCONSTSTR? BINARY
               -.           Z   B  2B   +   Z  -,   +   Z  3B  7   7   +   Z  ,<  ,<  $  3B   +   [  Z  -,   +   [  Z  Z  2B  +   Z  3B  +   Z   ,~   [  [  2B   +   Z   ,~   [  [  Z  2B   +   7   Z   ,~   Z   ,~   Z   ,~   Ml   (VARIABLE-VALUE-CELL X . 41)
GLCONST?
QUOTE
((COPY APPEND) . 0)
MEMB
APPEND
(KT SKLST KNIL ENTERF)            P   (    8   x        

GLCONSTVAL BINARY
        ¦    !    %-.           !Z   3B   +   3B   +   -,   +   ,~   -,   +   Z  2B  ¡+   [  Z  ,~   Z  -,   +   Z  ,<  ,<  "$  ¢3B   +   [  Z  -,   +   [  Z  Z  2B  ¡+   [  [  3B   +   [  [  Z  2B   +   [  Z  [  Z  ,~   Z  -,   +    ,<  ,<  #$  £3B   +    Z  ,<  ,<  $$  £,~      ¤,~   R`MD&@     (VARIABLE-VALUE-CELL X . 59)
QUOTE
((COPY APPEND) . 0)
MEMB
GLISPCONSTANTFLG
GETPROP
GLISPCONSTANTVAL
ERROR
(SKA SKLST SKNM KT KNIL ENTERF)       0              p  `        

GLCP BINARY
            -.          Z   2B   +   Z   XB  B  2B   +   Z  B  ,<  "     ,~   Z  B  Z  B  ,~   +e  (VARIABLE-VALUE-CELL FN . 19)
(VARIABLE-VALUE-CELL GLLASTFNCOMPILED . 6)
GLGETD
PRIN1
" ?"
TERPRI
GLCOMPILE
GLP
(KNIL ENTERF)    X        

GLDECL BINARY
          ñ   -.     (      ñ@  t  P,~   Z   2B   +   
Z   3B   +   ,<  ,<  yZ   B  ùF  zZ   B  ù,~   Z  ,<  [  
XB  ,\  XB   -,   +   +   QZ   XB   Z   XB   Z  B  ú   {XB      {XB   Z  2B  û+   §Z  2B   +    Z   3B   +   íZ  3B   +   íZ  B  |3B   +   í   ü,<  Z  ,<  [  XB  ,\  D  }+   Z  3B   +   íZ  B  |3B   +   í   {2B   +   í   ü,<  Z  ¡D  }+   Z  ,<  Z  ,   D  ýXB  §Z  &2B   +   ¬+   Æ2B  û+   ;   {XB   3B   +   4B  |3B   +   4   {2B   +   4Z  .XB  +   ÆZ  ²2B   +   íZ  B  |3B   +   íZ  µ,<  [  ·XB  ¸,\  XB  3+   Æ2B  ~+   í   {XB  ¨3B   +   ¿   {XB  ª+   §Z  9-,   +   ÆZ  ¿,<  [  AXB  B,\  B  ú   {XB  ¼   {XB  ¾+   §Z  *,<  Zp  -,   +   É+   PZp  ,<  @  þ   +   ÎZ   ,<  Z  :D  },~   [p  XBp  +   Ç/  +   Z  B  3B   +   YZ   3B   +   YZ  QB  |3B   +   Y   ü,<  Z  ÔD  }+   Z   3B   +   íZ  ×B  2B   +   íZ  Ú-,   +   í[  Ü3B   +   í[  ^XB   ,<   Z   ,<  ,<   &  ÿXB   Z  `3B   +   å+   íZ  ß,<  ,<   [  cZ  ,<  Z  aH  Z  å,<  Z  g,   Z  ,   XB  ë+   ,< ,< Z  Â,<  ,   D Z   ,~   %4Á&$V3>6IP4AT2D*JfTH`         (VARIABLE-VALUE-CELL LST . 221)
(VARIABLE-VALUE-CELL NOVAROK . 166)
(VARIABLE-VALUE-CELL VALOK . 178)
(VARIABLE-VALUE-CELL GLTOPCTX . 209)
(VARIABLE-VALUE-CELL FN . 9)
(NIL VARIABLE-VALUE-CELL RESULT . 217)
(NIL VARIABLE-VALUE-CELL FIRST . 137)
(NIL VARIABLE-VALUE-CELL SECOND . 139)
(NIL VARIABLE-VALUE-CELL THIRD . 104)
(NIL VARIABLE-VALUE-CELL TOP . 211)
(NIL VARIABLE-VALUE-CELL TMP . 213)
(NIL VARIABLE-VALUE-CELL EXPR . 199)
(NIL VARIABLE-VALUE-CELL VARS . 141)
(NIL VARIABLE-VALUE-CELL STR . 154)
(NIL VARIABLE-VALUE-CELL ARGTYPES . 14)
GLARGUMENTTYPES
DREVERSE
PUTPROP
GLSEPINIT
GLSEPNXT
:
GLOKSTR?
GLMKVAR
GLDECLDS
NCONC
,
(VARIABLE-VALUE-CELL X . 152)
GL-A-AN?
GLDOEXPR
GLADDSTR
GLDECL
"Bad argument structure"
GLERROR
(LIST2 CONS ALIST2 KT BHC SKNLST SKA CONSNL SKNA KNIL ENTERF)      P   @   0   
   	   ` A    *        ñ x e  ß H Ú 
h Ô 
0 > x µ ( 1 x , P £     h  x   H      

GLDECLDS BINARY
                -.           Z   3B   +   Z   ,<  D  XB  Z   Z   ,   XB  Z  Z   ,   XB  Z  ,<  ,<   Z  ,<  Z   H  Z   ,~      (VARIABLE-VALUE-CELL ATM . 18)
(VARIABLE-VALUE-CELL STR . 21)
(VARIABLE-VALUE-CELL GLTYPESUBS . 3)
(VARIABLE-VALUE-CELL RESULT . 13)
(VARIABLE-VALUE-CELL ARGTYPES . 17)
(VARIABLE-VALUE-CELL GLTOPCTX . 23)
GLSUBSTTYPE
GLADDSTR
(CONS KNIL ENTERF)  	  p   X   0      

GLDEFFNRESULTTYPES BINARY
                -.           Z   ,<  Zp  -,   +   Z   +    Zp  ,<  @     +   [   Z  ,<  Zp  -,   +   +    Zp  ,<  @     +   Z   ,<  ,<  Z  F  ,~   [p  XBp  +   	[p  XBp  +   BA
¨    (VARIABLE-VALUE-CELL LST . 3)
(VARIABLE-VALUE-CELL X . 30)
(VARIABLE-VALUE-CELL Y . 27)
GLRESULTTYPE
PUTPROP
(URET1 KNIL SKNLST ENTERF) 8           @      

GLDEFFNRESULTTYPEFNS BINARY
              -.           Z   ,<  Zp  -,   +   Z   +    Zp  ,<  @     +   Z   ,<  ,<  [  F  ,~   [p  XBp  +   BJ (VARIABLE-VALUE-CELL LST . 3)
(VARIABLE-VALUE-CELL X . 18)
GLRESULTTYPEFN
PUTPROP
(URET1 KNIL SKNLST ENTERF)                 

GLDEFPROP BINARY
    ®    ¤    --.           ¤@  &  ,~   Z   ,<  Zp  -,   +   +   Zp  ,<  @  ¦   +   Z   2B  '+   Z   -,   +   Z  
-,   +   Z  -,   +   [  2B   +   ,<  §"  (Z   B  (,<  ¨"  (Z  B  (,<  )"  (Z  B  (,<  ©"  (   *,<  ª"  (   *,~   Z  Z   ,   XB  ,~   [p  XBp  +   /  Z  ,<  ,<  +$  «,<  Z  ,<  Z  B  ,,   D  ¬Z   ,~   V$În #     (VARIABLE-VALUE-CELL OBJECT . 60)
(VARIABLE-VALUE-CELL PROP . 65)
(VARIABLE-VALUE-CELL LST . 6)
(NIL VARIABLE-VALUE-CELL LSTP . 67)
(VARIABLE-VALUE-CELL X . 51)
SUPERS
"GLDEFPROP: For object "
PRIN1
" the "
" property "
" has bad form."
TERPRI
"This property was ignored."
GLSTRUCTURE
GETPROP
DREVERSE
NCONC
(ALIST2 BHC CONS KNIL SKA SKLST SKNA SKNLST ENTERF)   £            ¤     h   P   8    X      

GLDEFSTR BINARY
        Â    ´    À-.           ´@  5  ,~   Z   ,<  [  XB  ,\  XB   Z  ,<  [  XB  ,\  XB   Z  ,<  ,<  6,   F  ¶Z  B  72B   +   Z  	B  ·,<  8"  ·   ¸Z  2B   +   Z   ,~   Z  3B  9+   3B  ¹+   2B  :+   Z  ,<  ,<  9[  Z  F  º+   ²3B  ;+   3B  »+   2B  <+    Z  ,<  ,<  ;[  Z  F  º+   ²3B  ¼+   %3B  =+   %3B  ½+   %3B  >+   %2B  ¾+   ¨Z  ,<  ,<  ¼[  Z  F  º+   ²3B  ?+   «3B  ¿+   «2B  @+   /Z  %,<  ,<  ?[  ¦Z  F  º+   ²Z  «,<  Z  -,<  [  0Z  F  º[  1[  XB  ²+    *yIÿdI@D     (VARIABLE-VALUE-CELL LST . 103)
(NIL VARIABLE-VALUE-CELL STRNAME . 94)
(NIL VARIABLE-VALUE-CELL STR . 23)
GLSTRUCTURE
PUTPROP
GLOKSTR?
PRIN1
" has faulty structure specification."
TERPRI
ADJ
Adj
adj
GLDEFPROP
PROP
Prop
prop
ISA
Isa
IsA
isA
isa
MSG
Msg
msg
(KNIL CONSNL ENTERF) (  X   8      

GLDEFSTRNAMES BINARY
                -.         Z   ,<  Zp  -,   +   Z   +    Zp  ,<  @     +   @    ,~   Z   ,<  Z   D  XB   3B   +   ,<  [  	D  ,~   Z  
,<  Z  ,   D  XB  ,~   [p  XBp  +   B`I    (VARIABLE-VALUE-CELL LST . 3)
(VARIABLE-VALUE-CELL GLUSERSTRNAMES . 34)
(VARIABLE-VALUE-CELL X . 31)
(NIL VARIABLE-VALUE-CELL TMP . 22)
ASSOC
RPLACD
NCONC
(CONSNL URET1 KNIL SKNLST ENTERF)     X   H            

GLDEFSTRQ BINARY
            -.          Z   ,<  Zp  -,   +   Z   +    Zp  ,<  @     +   	Z   B  ,~   [p  XBp  +   BQ  (VARIABLE-VALUE-CELL ARGS . 3)
(VARIABLE-VALUE-CELL ARG . 15)
GLDEFSTR
(URET1 KNIL SKNLST ENTERF)  X    P    @      

GLDEFUNITPKG BINARY
            -.          @    ,~   Z   XB   Z  2B   +   Z  ,<  Z   ,   D  XB  Z   ,~   Z  Z  Z  2B  +   Z  ,<  Z  D  [  XB  +    (VARIABLE-VALUE-CELL UNITREC . 26)
(VARIABLE-VALUE-CELL GLUNITPKGS . 16)
(NIL VARIABLE-VALUE-CELL LST . 29)
NCONC
RPLACA
(CONSNL KNIL ENTERF)         X      

GLDELDEF BINARY
                -.           Z   ,<  ,<  $  ,~       (VARIABLE-VALUE-CELL NAME . 3)
(VARIABLE-VALUE-CELL TYPE . 0)
GLSTRUCTURE
REMPROP
(ENTERF)     

GLDESCENDANTP BINARY
                -.           @    ,~   Z   Z   2B  +   Z   ,~   B  XB   Z  2B   +   Z   ,~   Z  ,<  Z  D  3B   +   +   [  XB  +   ,@(VARIABLE-VALUE-CELL SUBCLASS . 6)
(VARIABLE-VALUE-CELL CLASS . 21)
(NIL VARIABLE-VALUE-CELL SUPERS . 27)
GLGETSUPERS
GLDESCENDANTP
(KNIL KT ENTERF)   H      `      

GLDOA BINARY
              -.           @    ,~   [   Z  XB   B  3B   +   	Z  ,<  [  [  D  ,~   Z  B  XB   3B   +   ,<  [  
[  Z  D  XB   3B   +   [  ,<  Z  ,<   "  ,   ,~   ,<  ,<  Z  	,<  ,<  ,   D  Z   ,~   1    (VARIABLE-VALUE-CELL EXPR . 33)
(NIL VARIABLE-VALUE-CELL TYPE . 40)
(NIL VARIABLE-VALUE-CELL UNITREC . 24)
(NIL VARIABLE-VALUE-CELL TMP . 31)
GLGETSTR
GLMAKESTR
GLUNIT?
A
ASSOC
GLDOA
"The type"
"is not defined."
GLERROR
(LIST3 EVCC KNIL ENTERF)           x   `      

GLDOCASE BINARY
        æ    Ø    ã-.          Ø@  Ù  @,~   Z   XB   [   Z  ,   ,<  ,<   Z   ,<  ,<   (  ÝXB   Z  XB   [  	Z  XB   [  [  XB  Z  ,<  ,<  ^$  Þ3B   +   [  XB  Z  2B   +   Z  ,<  Z   ,<  Z   ,   D  _,   Z  ß,   B  `,<  Z   ,<  ,   ,~   Z  ,<  ,<  à$  Þ3B   +   '[  ,<  Z  D  aXB  
Z  [  3B   +   $Z  áZ   ,   +   %Z  ¢Z  XB  Z   XB  +   MZ  &[  ,<  Z  D  aXB  $Z  ,<  Z  'Z  -,   +   5Z  ,<  ,<  bZ  +Z  F  âXB   3B   +   ³[  0Z  2B   +   ÊZ  ®Z  +   ÊZ  ³Z  ,<  ,<   Zwÿ-,   +   ½Zp  Z   2B   +   » "  +   =[  QD   "  +   JZwÿ,<  @  c   +   GZ  -,<  ,<  bZ   F  âXB  ±3B   +   F[  ÂZ  2B   +   ÆZ  Á,~   Zp  ,   XBp  [wÿXBwÿ+   7/  Z  ©,   ,   D  _XB  *Z  3B   +   WZ  2B   +   R[  ÊZ  XB  Î+   WZ  Q[  PZ  ,   2B   +   WZ   XB  MZ   XB  R[  5XB  W+     h@T"	(J)""     (VARIABLE-VALUE-CELL EXPR . 175)
(VARIABLE-VALUE-CELL CONTEXT . 81)
(NIL VARIABLE-VALUE-CELL SELECTOR . 37)
(NIL VARIABLE-VALUE-CELL SELECTORTYPE . 128)
(NIL VARIABLE-VALUE-CELL RESULT . 153)
(NIL VARIABLE-VALUE-CELL TMP . 165)
(NIL VARIABLE-VALUE-CELL RESULTTYPE . 173)
(NIL VARIABLE-VALUE-CELL TYPEOK . 171)
(NIL VARIABLE-VALUE-CELL ELSECLAUSE . 74)
(NIL VARIABLE-VALUE-CELL TMPB . 136)
GLPUSHEXPR
((OF Of of) . 0)
MEMB
NCONC
SELECTQ
GLGENCODE
((ELSE Else else) . 0)
GLPROGN
PROGN
VALUES
GLSTRPROP
(VARIABLE-VALUE-CELL X . 140)
(EQUAL BHC COLLCT SKNLST SKA CONS LIST2 CONS21 CONSS1 KNIL CONSNL KT ENTERF)   
H   	0   	      P   	@ $                W 
` U 
  Î ` D ( : x ³  ¦    (   p   	H   `           

GLDOCOND BINARY
     -    ¦    «-.          ¦@  §   ,~   Z   XB   [   XB  2B   +   +   Z  ,<  Z   D  ©XB   Z  Z  3B   +   Z   ,<  Z  	,   D  *XB  Z  3B   +   Z   2B   +   [  Z  XB  +   Z  [  Z  ,   2B   +   Z   XB  Z   XB  Z  Z  3B   +   +   [  2B   +    Z  Z  2B   +    Z  ªZ  [  ,   +   "Z  +Z  ,   ,<  Z  3B   +   %Z  +   ¥Z   ,   ,~   B @2à     (VARIABLE-VALUE-CELL CONDEXPR . 13)
(VARIABLE-VALUE-CELL CONTEXT . 15)
(NIL VARIABLE-VALUE-CELL RESULT . 66)
(NIL VARIABLE-VALUE-CELL TMP . 48)
(NIL VARIABLE-VALUE-CELL TYPEOK . 69)
(NIL VARIABLE-VALUE-CELL RESULTTYPE . 72)
GLPROGN
NCONC
PROGN
COND
(ALIST2 CONS EQUAL CONSNL KNIL KT ENTERF) h   (              & @     `  x   `   `   @      

GLDOEXPR BINARY
       Ü   #   Ö-.         #@ &  ,~   Z   Z   ,   XB  Z  -,   +   	,< §Z (,   D ¨+  !Z   2B   +   Z  -,   +   Z  ,<  [  XB  ,\  ,<  ,< ),   XB   +  !Z  -,   +   Z  	2B   +   +   Z   2B ©+   Z  2B *+   Z  ,<  ,<   ,   XB  +  !Z  ,<  ,< ª$ +3B   +   Z  XB   +   ½Z  B «  ,XB  Z  3B  +   °Z  !,<  ,< ¬$ +2B   +   ­Z  ¢B -2B   +   ­Z  ¥,<  ,< ­$ .2B   +   ­Z   3B ®+   ¯B /3B   +   ¯  ¯Z  §XB  ª+   ½  ¯+   Z  ®3B ®+   32B 0+   4  ¯+   [  .-,   +   ½[  4Z  -,   +   8+   ½[  µZ  B «  ,XB     ¯Z  :B /3B   +   ½+   Z  °3B °+   D3B 1+   D3B ±+   D3B 2+   D3B ²+   D2B 3+   ÌZ  8,<  [  DZ  -,   +   HZ ³+   Ë[  EZ  -,   +   KZ )+   ËZ   ,   +  3B 4+   Ï3B ´+   Ï2B 5+   RZ  H,<  Z   D µ+  3B 6+   U3B ¶+   U2B 7+   ×Z  Ï,<  ,< ·,   +  3B 8+   Ú3B ¸+   Ú2B 9+   \Z  UB ¹+  3B :+   _3B º+   _2B ;+   àZ  ÚB »+  3B <+   ã3B ¼+   ã2B =+   eZ  _B ½+  3B >+   h3B ¾+   h2B ?+   éZ  ãB ¿+  3B @+   ì3B À+   ì2B A+   nZ  hB Á+  3B B+   q3B Â+   q2B C+   òZ  ìB Ã+  3B D+   õ3B Ä+   õ2B E+   xZ  q,<  Z  ÐD Å+  3B F+   }3B Æ+   }3B G+   }3B Ç+   }2B H+   þZ  õB È+  3B I+  3B É+  3B J+  2B Ê+  Z  }B K+  3B Ë+  2B L+  Z B Ì+  2B M+  Z ,<  Z  öD Í+  3B N+  2B Î+  Z ,<  Z D O+  3B Ï+  3B P+  2B Ð+  Z ,<  Z D Q+  3B Ñ+  3B R+  2B Ò+  Z B S+  3B Ó+  3B T+  2B Ô+  Z B U+  Z B ÕXB  +  !  VXB [  XB !Z  ,~   YMX%ÄUv;yU_?G|ß_w}¿_w|?þooã|?o{,               (VARIABLE-VALUE-CELL START . 37)
(VARIABLE-VALUE-CELL CONTEXT . 295)
(VARIABLE-VALUE-CELL VALBUSY . 0)
(VARIABLE-VALUE-CELL EXPR . 316)
(VARIABLE-VALUE-CELL EXPRSTACK . 323)
(VARIABLE-VALUE-CELL GLLISPDIALECT . 41)
(NIL VARIABLE-VALUE-CELL FIRST . 123)
(NIL VARIABLE-VALUE-CELL TMP . 118)
(NIL VARIABLE-VALUE-CELL RESULT . 324)
GLDOEXPR
"Expression is not a list."
GLERROR
STRING
INTERLISP
*
((QUOTE Quote quote) . 0)
MEMB
GLSEPINIT
GLSEPNXT
((APPLY* BLKAPPLY* PACK* PP*) . 0)
GETD
MACRO
GETPROP
~
GLOPERATOR?
GLSEPCLR
-
QUOTE
Quote
quote
GO
Go
go
ATOM
PROG
Prog
prog
GLDOPROG
FUNCTION
Function
function
LISP
SETQ
Setq
setq
GLDOSETQ
COND
Cond
cond
GLDOCOND
RETURN
Return
return
GLDORETURN
FOR
For
for
GLDOFOR
THE
The
the
GLDOTHE
THOSE
Those
those
GLDOTHOSE
IF
If
if
GLDOIF
A
a
AN
An
an
GLDOA
_
SEND
Send
send
GLDOSEND
PROGN
PROG2
GLDOPROGN
PROG1
GLDOPROG1
SELECTQ
CASEQ
GLDOSELECTQ
WHILE
While
while
GLDOWHILE
REPEAT
Repeat
repeat
GLDOREPEAT
CASE
Case
case
GLDOCASE
GLUSERFN
GLPARSEXPR
(ALIST2 SKA SKNLA SKLST SKLA LIST2 SKSTP KNIL CONSNL SKNLST CONS ENTERF)   Ì    G    ·    µ        ×       J @   	@ = X ª x ¥ X  @                    

GLDOFOR BINARY
         ì    ý-.          ì@  í  P,~   Z   XB   Z  ,<  [  XB  ,\  Z  ,<  ,<  ò$  s3B   +   Z   XB   Z  ,<  [  XB  ,\  +   Z  -,   +   k[  Z  ,<  ,<  ó$  s3B   +   kZ  ,<  [  XB  ,\  XB   Z  ,<  [  XB  ,\  Z  
B  tXB   2B   +   +   k[  Z  B  ôXB   3B   +   2B  u+    Z  õXB  +   &Z  3B  v+   &Z   B  öB  ôXB  "Z  3B  v+   &+   kZ   Z   ,   XB   Z  2B   +   ª   wXB  (,<  Z  3B   +   ­Z   +   .Z   ,<  [  £Z  ,<  Z  §H  ÷Z  ,<  ,<  x$  s3B   +   =Z  1,<  [  4XB  5,\  Z  *,<  [  ®Z  ,   ,<  Z  0,<  ,<   ,<   (  øXB   +   ÈZ  µ,<  ,<  y$  s3B   +   ÈZ  =,<  [  @XB  A,\  Z  ¶,<  [  ·Z  ,   ,<  Z  ¹,<  ,<   ,<   (  øXB  <Z  Á3B   +   TZ  È,<  ,<  ù$  s3B   +   TZ  J,<  [  MXB  N,\  Z  H,<  ,<   Z  Å,<  ,<   &  zD  úXB  ÏZ  Î,<  ,<  {$  s3B   +   ]Z  T,<  [  WXB  X,\  ,<   Z  Q,<  ,<   &  zXB   +   åZ  Ø,<  ,<  û$  s3B   +   âZ  ],<  [  `XB  a,\  Z  á,<  Z  ZD  |Z  XB   Z  Â,<  Z  ,<  Z  e,<  Z  Ó,<  Z  \J  ü,~   Z  B  },~    4#@[8h  	P c 
4      (VARIABLE-VALUE-CELL EXPR . 197)
(VARIABLE-VALUE-CELL CONTEXT . 77)
(NIL VARIABLE-VALUE-CELL DOMAIN . 205)
(NIL VARIABLE-VALUE-CELL DOMAINNAME . 89)
(NIL VARIABLE-VALUE-CELL DTYPE . 135)
(NIL VARIABLE-VALUE-CELL ORIGEXPR . 214)
(NIL VARIABLE-VALUE-CELL LOOPVAR . 203)
(NIL VARIABLE-VALUE-CELL NEWCONTEXT . 199)
(NIL VARIABLE-VALUE-CELL LOOPCONTENTS . 207)
(NIL VARIABLE-VALUE-CELL SINGFLAG . 86)
(NIL VARIABLE-VALUE-CELL LOOPCOND . 209)
(NIL VARIABLE-VALUE-CELL COLLECTCODE . 211)
((EACH Each each) . 0)
MEMB
((IN In in) . 0)
GLDOMAIN
GLXTRTYPE
ANYTHING
((LISTOF ANYTHING) . 0)
LISTOF
GLGETSTR
GLMKVAR
GLADDSTR
((WITH With with) . 0)
GLPREDICATE
((WHICH Which which WHO Who who THAT That that) . 0)
((when When WHEN) . 0)
GLDOEXPR
GLANDFN
((collect Collect COLLECT) . 0)
((DO Do do) . 0)
GLPROGN
GLMAKEFORLOOP
GLUSERFN
(ALIST2 CONS SKA KT KNIL ENTERF) X ¹    (        \ 
0 H x     ` ( W 
 M 	  @ @ » @ ® H © p  (        

GLDOIF BINARY
     Ä    ¸    Â-.           ¸@  ¹  0,~   Z   XB   Z   ,<  [  XB  ,\  Z  2B   +   Z  ¼Z   ,   ,<  Z   ,<  ,   ,~   Z   Z  ,   XB  ,<   ,<  ,<   ,<   (  =XB   Z  ,<  ,<  ½$  >3B   +   Z  ,<  [  XB  ,\  Z  ,   XB   [  Z  XB  
Z  ,<  Z  ,   D  ¾XB  Z  2B   +   +   Z  ,<  ,<  ?$  >3B   +   ¤Z  ,<  [  ¡XB  ¢,\  +   Z  #,<  ,<  ¿$  >3B   +   -Z  ¤,<  [  §XB  ¨,\  Z   ,   XB  Z  @XB  +   ,<   Z  ,<  ,<   &  ÀXB   3B   +   µZ  +,<  Z  ¯,   D  ¾[  2Z  XB  ,+   ,<  AZ  Á,   D  BZ   ,~    0 h PM ($P    (VARIABLE-VALUE-CELL EXPR . 82)
(VARIABLE-VALUE-CELL CONTEXT . 91)
(NIL VARIABLE-VALUE-CELL PRED . 48)
(NIL VARIABLE-VALUE-CELL ACTIONS . 98)
(NIL VARIABLE-VALUE-CELL CONDLIST . 56)
(NIL VARIABLE-VALUE-CELL TYPE . 105)
(NIL VARIABLE-VALUE-CELL TMP . 103)
(NIL VARIABLE-VALUE-CELL OLDCONTEXT . 25)
COND
GLPREDICATE
((THEN Then then) . 0)
MEMB
NCONC
((ELSEIF ElseIf Elseif elseIf elseif) . 0)
((ELSE Else else) . 0)
BOOLEAN
GLDOEXPR
GLDOIF
"IF statement contains bad code."
GLERROR
(CONSNL KT LIST2 CONS KNIL ENTERF)  x ³ 8      x +    @   ` 
    ¸  . x ¡ `     P        

GLDOLAMBDA BINARY
                -.           @    ,~   [   Z  XB   Z   Z   ,   XB  Z  3B   +   Z  ,<  ,<   Z   ,<  Z  H  [  XB  [  XB  +   Z   XB   [  [  ,<  Z  D  XB   [  Z  Z  ,   Z  ,   ,<  [  Z  ,   ,~     !    (VARIABLE-VALUE-CELL EXPR . 36)
(VARIABLE-VALUE-CELL ARGTYPES . 26)
(VARIABLE-VALUE-CELL CONTEXT . 33)
(NIL VARIABLE-VALUE-CELL ARGS . 24)
(NIL VARIABLE-VALUE-CELL NEWEXPR . 43)
(NIL VARIABLE-VALUE-CELL VALBUSY . 29)
GLADDSTR
GLPROGN
LAMBDA
(ALIST2 CONS21 KT CONS KNIL ENTERF) x   X   p   H     
          

GLDOMAIN BINARY
     /    ¥    ­-.          ¥@  §  ,~   Z   Z  ¨,   3B   +   Z  XB   ,<   "  ),~   Z  -,   +   ¢Z  B  ©   *XB   Z  2B  +   Z  ,<  [  XB  ,\  Z  XB   Z   3B   +   Z  Z  ª,   3B   +   Z  +XB  Z  B  «Z  ,   XB  ,<   "  ),~   Z  B  «,<  ,<   $  ,,~   Z  ,<  ,<   $  ,,~      ¬,<   Z   ,<  ,<   &  -,~   ,<   Z   ,<  ,<   &  -,~   HED&!
     (VARIABLE-VALUE-CELL SINGFLAG . 33)
(VARIABLE-VALUE-CELL EXPR . 47)
(VARIABLE-VALUE-CELL DOMAINNAME . 32)
(VARIABLE-VALUE-CELL CONTEXT . 70)
(NIL VARIABLE-VALUE-CELL NAME . 57)
(NIL VARIABLE-VALUE-CELL FIRST . 42)
((THE The the) . 0)
GLPARSFLD
GLSEPINIT
GLSEPNXT
((OF Of of) . 0)
THE
GLPLURAL
GLIDNAME
GLSEPCLR
GLDOEXPR
(KT CONS SKA KNIL FMEMB ENTERF)  %            8   h        X   @        

GLDOMSG BINARY
      é    X    æ-.          X@  Z  0,~   [   Z  B  ]XB   ,<  ,<  ÝZ   F  ^XB   3B   +   %[  [  ,<  ,<  Þ$  _3B   +    Z  ,<  Z  ,<  Z   ,<  ,<   Zwÿ-,   +   Zp  Z   2B   +    "  +   [  QD   "  +   ZwÿZ  Zp  ,   XBp  [wÿXBwÿ+   /  ,   ,   Z  ß,   ,<  [  [  ,<  ,<  `$  _,   ,~   Z  ,<  Z  ,<  Z  ,<  Z   H  à,~   Z  B  aXB   3B   +   1,<  Ý[  &[  Z  D  áXB   3B   +   1[  *,<  Z   ,<  Z  ,<  Z  ¢,<   "  ,   ,~   [  ¬Z  B  bXB   2B   +   ÄZ  %Z  â,   3B   +   ÃZ  ­Z  c,   3B   +   ÃZ  ®3B   +   Ã[  92B   +   ÃZ  º[  Z  B  ]Z  ã,   3B   +   ÃZ  ¶,<  Z  1,<  Z  <F  d,~   Z   ,~   Z  ²2B   +   Æ+   Ã,<  äZ  ÄB  ],   ,<  Z  @,<  Z  BF  eXB  «3B   +   ÕZ  G,<  [  AZ  ,<  ,<   &  åXB   Z  K,<  Z  PD  fZ  Ð,<  Z  ÍD  fZ  Ò,~   [  ÔXB  Õ3B   +   Ã+   Ä%P(@" ID@ JR$2 !     (VARIABLE-VALUE-CELL OBJECT . 167)
(VARIABLE-VALUE-CELL SELECTOR . 146)
(VARIABLE-VALUE-CELL ARGS . 148)
(VARIABLE-VALUE-CELL CONTEXT . 71)
(NIL VARIABLE-VALUE-CELL UNITREC . 80)
(NIL VARIABLE-VALUE-CELL TYPE . 104)
(NIL VARIABLE-VALUE-CELL TMP . 172)
(NIL VARIABLE-VALUE-CELL METHOD . 67)
(NIL VARIABLE-VALUE-CELL TRANS . 153)
(NIL VARIABLE-VALUE-CELL FETCHCODE . 163)
GLXTRTYPE
MSG
GLSTRPROP
MESSAGE
LISTGET
SEND
RESULT
GLCOMPMSG
GLUNIT?
ASSOC
GLTRANSPARENTTYPES
((NUMBER REAL INTEGER) . 0)
((+ - * / ^ > < >= <=) . 0)
((NUMBER REAL INTEGER) . 0)
GLREDUCEARITH
*GL*
GLDOMSG
GLSTRFN
GLSTRVAL
(FMEMB EVCC ALIST2 CONS21 CONSS1 BHC COLLCT SKNLST KNIL ENTERF) x ¸ `      	           8   0         
x P 	H F H @ @ º  ¶ @ « x  (  @        

GLDOPROG BINARY
     ·    .    6-.           .@  /  0,~   Z   ,<  [  XB  ,\  Z   Z   ,   XB  Z  ,<  [  XB  ,\  ,<  ,<   ,<   Z  ,<  ,<   *  2XB   Z   Z  ,   XB  Z  	2B   +   +   §Z  ,<  [  XB  ,\  XB   -,   +   Z   ,   XB  +   -,   +   ,<  ²,<  3,<  ,   D  ³+   Z  2B  4+    Z  Z  ,   XB  +   Z  ,<  ,<   Z  ,<  ,<   (  ´XB   3B   +   Z  £Z  ,   XB  ¥+   Z  ,<  Z  ¦B  5,   Z  µ,   XB   ,<  Z   ,<  ,   ,~      Efa!
   (VARIABLE-VALUE-CELL EXPR . 39)
(VARIABLE-VALUE-CELL CONTEXT . 67)
(NIL VARIABLE-VALUE-CELL PROGLST . 79)
(NIL VARIABLE-VALUE-CELL NEWEXPR . 81)
(NIL VARIABLE-VALUE-CELL RESULT . 86)
(NIL VARIABLE-VALUE-CELL NEXTEXPR . 64)
(NIL VARIABLE-VALUE-CELL TMP . 74)
(NIL VARIABLE-VALUE-CELL RESULTTYPE . 88)
GLDECL
GLDOPROG
"PROG contains bad stuff:"
GLERROR
*
GLPUSHEXPR
DREVERSE
PROG
(CONS21 CONSS1 LIST2 SKNLST SKA KT CONS KNIL ENTERF)   «    ª    . 8      `         ' x        % 8  p  8        

GLDOPROGN BINARY
            -.          @    ,~   [   ,<  Z   D  XB   Z  Z  ,   ,<  [  Z  ,   ,~      (VARIABLE-VALUE-CELL EXPR . 11)
(VARIABLE-VALUE-CELL CONTEXT . 8)
(NIL VARIABLE-VALUE-CELL RES . 15)
GLPROGN
(ALIST2 CONS ENTERF)       x      

GLDOPROG1 BINARY
       ¢        ¡-.           @     ,~   [   XB  Z  2B   +   
Z   B  Z  ,   ,<  Z   ,<  ,   ,~   ,<   Z   ,<  Z   2B   +   7   Z   F  XB   3B   +   Z  Z  ,   XB  Z  2B   +   [  Z  XB  Z   XB  +   ,<   Z   ,   D  !Z  ,<  [  XB  ,\  +    H:  (VARIABLE-VALUE-CELL EXPR . 52)
(VARIABLE-VALUE-CELL CONTEXT . 21)
(NIL VARIABLE-VALUE-CELL RESULT . 35)
(NIL VARIABLE-VALUE-CELL TMP . 39)
(NIL VARIABLE-VALUE-CELL TYPE . 41)
(NIL VARIABLE-VALUE-CELL TYPEFLG . 43)
DREVERSE
PROG1
GLDOEXPR
GLDOPROG1
"PROG1 contains bad subexpression."
GLERROR
(CONSNL CONS KT LIST2 CONS21 KNIL ENTERF)            `           8  h  0        

GLDOREPEAT BINARY
        =    1    ;-.          1@  2  ,~   Z   ,<  [  XB  ,\  Z  ,<  ,<  ³$  43B   +   Z  ,<  [  XB  ,\  +   Z  
3B   +   ,<   Z   ,<  ,<   &  ´XB   3B   +   Z   ,<  Z  ,   D  5XB  +   Z  3B   +   ,<  µZ  6,   D  ¶,~   Z  3B   +    ,<   Z  ,<  ,<   ,<   (  7XB  3B   +    Z  3B   +   $,<  µZ  ·,   D  ¶,<   ,<  8,   XB     ¸XB   ,<  Z  ,<  ,<  9Z  £B  ¹,<  ,<  :Z  ¤,<  ,   ,   ,   ,   D  5,   Z   ,   Z  º,   ,<  ,<   ,   ,~   P$t IjBP       (VARIABLE-VALUE-CELL EXPR . 61)
(VARIABLE-VALUE-CELL CONTEXT . 53)
(NIL VARIABLE-VALUE-CELL ACTIONS . 75)
(NIL VARIABLE-VALUE-CELL TMP . 78)
(NIL VARIABLE-VALUE-CELL LABEL . 82)
((UNTIL Until until) . 0)
MEMB
GLDOEXPR
NCONC
GLDOREPEAT
"REPEAT contains bad subexpression."
GLERROR
GLPREDICATE
"REPEAT contains no UNTIL or bad UNTIL clause"
BOOLEAN
GLMKLABEL
COND
GLBUILDNOT
GO
PROG
(CONS21 CONSS1 ALIST2 LIST2 CONSNL KT KNIL ENTERF)   ¯ h   X   @ «    1 0 $    ¬    8   0     ° `   h  H       P        

GLDORETURN BINARY
                -.          @    ,~   Z   ,<  [  XB  ,\  Z  2B   +   	,<   "  Z  ,~   ,<   Z   ,<  ,<   &  XB   [  Z  B  ,<  Z  ,   ,<  [  Z  ,   ,~   0#      (VARIABLE-VALUE-CELL EXPR . 11)
(VARIABLE-VALUE-CELL CONTEXT . 19)
(NIL VARIABLE-VALUE-CELL TMP . 31)
GLADDRESULTTYPE
(((RETURN) NIL) . 0)
GLDOEXPR
RETURN
(ALIST2 KT KNIL ENTERF)          
          

GLDOSELECTQ BINARY
       d    W    a-.           W@  X  8,~   Z   XB   [  Z  ,   ,<  ,<   Z   ,<  ,<   (  ÛZ  ,   XB   Z   XB   [  [  XB  Z  -,   Z   XB   2B   +   Z  -,   +   7Z  Z  2B  \+   7Z  [  Z  XB  3B   +   7Z  ,<  Zp  -,   +   Z   +   )Zp  ,<  ,<wÿ/  @  Ü   +   ¥Z   -,   +    Z  Z  ,   ,~   Z  -,   +   ¤Z  ,<  Z   D  ],~   Z   ,~   3B   +   §Zp  +   )[p  XBp  +   /  XB   3B   +   ¬[  ©2B   +   0Z  B  Ý,<  Z  D  ^XB   +   3Z  +[  ,<  Z  .D  ^XB  /Z  ÞZ  ²,   ,<  [  ³Z  ,   ,~   Z  ¬2B   +   =Z  Z  ,   B  _,<  Z   ,<  ,   ,~   Z  9,<  [  72B   +   AZ  ¸2B  ß+   ÆZ  >[  ,<  Z  ±D  ^XB  0Z  AZ  Z  Ã,   +   J,<   Z  Â,<  ,<   &  `XB  EZ  I,   D  àXB  =Z  3B   +   ÕZ  ;2B   +   Ð[  ÉZ  XB  M+   ÕZ  Ï[  ÎZ  ,   2B   +   ÕZ   XB  ËZ   XB  Ð[  DXB  Õ+   7  `BBHPP B"       (VARIABLE-VALUE-CELL EXPR . 172)
(VARIABLE-VALUE-CELL CONTEXT . 142)
(NIL VARIABLE-VALUE-CELL RESULT . 150)
(NIL VARIABLE-VALUE-CELL RESULTTYPE . 170)
(NIL VARIABLE-VALUE-CELL TYPEOK . 168)
(NIL VARIABLE-VALUE-CELL KEY . 68)
(NIL VARIABLE-VALUE-CELL TMP . 162)
(NIL VARIABLE-VALUE-CELL TMPB . 106)
(NIL VARIABLE-VALUE-CELL FN . 127)
GLPUSHEXPR
QUOTE
(VARIABLE-VALUE-CELL X . 70)
MEMBER
LAST
GLPROGN
PROGN
GLGENCODE
CASEQ
GLDOEXPR
NCONC
(LIST2 ALIST2 CONS EQUAL SKA BHC SKNLST SKLST SKNM KT KNIL CONSNL ENTERF)  P   p   h º P   
0          * @                I 0     Õ 
H Ó 	h M x ¿  ¬ 0 ¦ X  `  h     K          

GLDOSEND BINARY
     C    ¸    A-.          ¸@  ¹  0,~   Z   XB   [  XB   Z  ,<  [  XB  ,\  ,   ,<  ,<   Z   ,<  ,<   (  ¼XB   Z  ,<  [  XB  ,\  XB   3B   +   -,   +   ,<  =,<  ,<  ½,   D  >,~   Z  2B   +   ®Z  ,<  Z  ,<  Z   F  ¾XB   3B   +   Z  ,~   Z  ,<  Z  ,<  Z  ,<  Z  ,<  ,<   Zwÿ-,   +   ¥Zp  Z   2B   +   £ "  +   %[  QD   "  +   ©ZwÿZ  Zp  ,   XBp  [wÿXBwÿ+   /  ,   ,   ,   B  ?,<  [  Z  ,   ,~   ,<   Z  	,<  ,<   &  ¿XB  3B   +   µZ  ,<  ,   D  @XB  ²+   ,<  =Z  À,   D  >Z   ,~     @"@ E ÅP    (VARIABLE-VALUE-CELL EXPRR . 8)
(VARIABLE-VALUE-CELL CONTEXT . 94)
(NIL VARIABLE-VALUE-CELL EXPR . 39)
(NIL VARIABLE-VALUE-CELL OBJECT . 89)
(NIL VARIABLE-VALUE-CELL SELECTOR . 57)
(NIL VARIABLE-VALUE-CELL ARGS . 105)
(NIL VARIABLE-VALUE-CELL TMP . 98)
(NIL VARIABLE-VALUE-CELL FNNAME . 53)
GLPUSHEXPR
GLDOSEND
"is an illegal message Selector."
GLERROR
GLDOMSG
GLGENCODE
GLDOEXPR
NCONC
"A message argument is bad."
(ALIST2 CONSS1 BHC COLLCT SKNLST LIST2 SKNLA KT KNIL CONSNL ENTERF)  h   @ « 0   (          0           ¸ ( ¯ ( " x  P     x ´       

GLDOSETQ BINARY
                -.          @    ,~   Z   ,<  [  XB  ,\  Z  ,<  [  XB  ,\  XB   ,<  ,<   Z   ,<  ,<   &  D  ,~     0 (VARIABLE-VALUE-CELL EXPR . 14)
(VARIABLE-VALUE-CELL CONTEXT . 19)
(NIL VARIABLE-VALUE-CELL VAR . 16)
GLDOEXPR
GLDOVARSETQ
(KT KNIL ENTERF)  8          

GLDOTHE BINARY
            -.           @  
  ,~   ,<   "  XB   Z   3B   +   ,<  ,<  ,<  ,   D  Z  ,~   G  (VARIABLE-VALUE-CELL EXPR . 9)
(NIL VARIABLE-VALUE-CELL RESULT . 17)
GLTHE
GLDOTHE
"Stuff left over at end of The expression."
GLERROR
(LIST2 KNIL ENTERF)     `        

GLDOTHOSE BINARY
            -.           @    ,~   [   XB  ,<   "  XB   Z  3B   +   ,<  ,<  ,<  ,   D  Z  ,~   d  (VARIABLE-VALUE-CELL EXPR . 11)
(NIL VARIABLE-VALUE-CELL RESULT . 19)
GLTHE
GLDOTHOSE
"Stuff left over at end of The expression."
GLERROR
(LIST2 KNIL KT ENTERF)                  

GLDOVARSETQ BINARY
           	    -.           	Z   ,<  [   Z  D  
,<  Z  ,<  Z  ,   ,<  [  Z  ,   ,~   `   (VARIABLE-VALUE-CELL VAR . 9)
(VARIABLE-VALUE-CELL RHS . 14)
GLUPDATEVARTYPE
SETQ
(ALIST2 ALIST3 ENTERF)       p      

GLDOWHILE BINARY
       5    +    ³-.           +@  ,  ,~   Z   Z   ,   XB  Z   ,<  [  XB  ,\  ,<   Z  ,<  ,<   ,<   (  ­Z  ,   XB   Z  ,<  ,<  .$  ®3B   +   Z  ,<  [  XB  ,\  Z  3B   +   ,<   Z  ,<  ,<   &  /XB   3B   +   Z  ,<  Z  ,   D  ¯XB  +   Z  3B   +   ¡,<  0,<  °,<  ,   D  1Z  ,<  [  XB  ,\  +      ±XB   ,<  2,<   ,<  ,<  ²Z  ,<  ,<  3,<  ,   ,   D  ¯,   ,   ,<  ,<   ,   ,~     !SHH@   (VARIABLE-VALUE-CELL EXPR . 64)
(VARIABLE-VALUE-CELL CONTEXT . 39)
(NIL VARIABLE-VALUE-CELL ACTIONS . 73)
(NIL VARIABLE-VALUE-CELL TMP . 48)
(NIL VARIABLE-VALUE-CELL LABEL . 68)
GLPREDICATE
((DO Do do) . 0)
MEMB
GLDOEXPR
NCONC
GLDOWHILE
"Bad stuff in While statement:"
GLERROR
GLMKLABEL
PROG
COND
GO
(ALIST4 ALIST2 LIST2 CONSNL KT CONS KNIL ENTERF)       0 § h      @   X         ª @  p  0      @      

GLED BINARY
               -.           ,<  "  Z   ,~       (VARIABLE-VALUE-CELL FN . 5)
(((GETPROPLIST (OR FN GLLASTFNCOMPILED))) . 0)
EDITV
(ENTERF)      

GLEDS BINARY
              -.           ,<  "  Z   ,~       (VARIABLE-VALUE-CELL STR . 5)
(((GETPROP (SETQ GLLASTSTREDITED (OR STR GLLASTSTREDITED)) (QUOTE GLSTRUCTURE))) . 0)
EDITV
(ENTERF)      

GLEQUALFN BINARY
       ±    (    0-.           (@  )  ,~   Z   ,<  ,<  ©Z   ,   F  *XB   3B   +   ,~   Z  ,<  ,<  ©Z  F  ªXB  3B   +   ,~   Z  2B   +   ,<  +Z  ,   +   &Z  2B   +   ,<  +Z  ,   +   &[  Z  3B  «+   [  Z  2B  «+   Z  ,+   #[  Z  3B  ¬+   [  Z  2B  ¬+   Z  -+   #[  Z  2B  ­+   ¢[  Z  2B  ­+   ¢Z  .+   #Z  ®,<  Z  ,<  Z  ,   B  /,<  ,<  ¯,   ,~   $EÉ3f>
    (VARIABLE-VALUE-CELL LHS . 71)
(VARIABLE-VALUE-CELL RHS . 73)
(NIL VARIABLE-VALUE-CELL TMP . 21)
=
GLDOMSG
GLUSERSTROP
NULL
INTEGER
EQP
ATOM
EQ
STRING
STREQUAL
EQUAL
GLGENCODE
BOOLEAN
(LIST2 ALIST3 ALIST2 KNIL CONSNL ENTERF)     `   8      `   x    `      

GLERR BINARY
              -.          ,<  "  Z   B     ,~   @   (VARIABLE-VALUE-CELL ERREXP . 5)
"Execution of GLISP error expression: "
PRIN1
PRINT
ERROR
(ENTERF)     

GLERROR BINARY
    K    7    È-.           7,<  :"  ºZ   B  º,<  ;"  ºZ   B  »Z   ,<  Zp  -,   +   +   Zp  ,<  @  <   +   Z   B  º,<  ¼"  =,~   [p  XBp  +   /     ½,<  >"  º,<  ¾"  ?,<  @  ¿  +   0,<  ?Z   ,<  ,   ,   Z   ,   XB  XB` ,<  Á,<  B,<   @  Â ` +   'Z   Z  DXB Z   ,<  ,<  Ä,<   ,<   (  E   ½,<  Å"  º[  Z  ,<  ,<  Ä,<   ,<   (  EZw~XB8 Z   ,~   2B   +   )Z  FXB   [` XB  ,<  ?Z` Z  [  D  ÆZ  ¨3B   +   /   G,~   Z` ,~      ½Z   3B   +   ²   F,<  Ç,<  HZ  ¡,   ,   ,<  ,<   ,   ,~   h2\¯,U	q b	p          (VARIABLE-VALUE-CELL FN . 5)
(VARIABLE-VALUE-CELL MSGLST . 11)
(VARIABLE-VALUE-CELL FAULTFN . 9)
(VARIABLE-VALUE-CELL RESETVARSLST . 83)
(VARIABLE-VALUE-CELL EXPRSTACK . 103)
(VARIABLE-VALUE-CELL GLBREAKONERROR . 97)
"GLISP error detected by "
PRIN1
" in function "
PRINT
(VARIABLE-VALUE-CELL X . 22)
1
SPACES
TERPRI
"in expression: "
((2 . 20) . 0)
PRINTLEVEL
(VARIABLE-VALUE-CELL OLDVALUE . 41)
NIL
NIL
(NIL VARIABLE-VALUE-CELL RESETSTATE . 89)
((DUMMY) . 0)
INTERNAL
(0 . 1)
(0 . 1)
(0 . 1)
ERRORSET
15
PRINTDEF
"within expr. "
ERROR
APPLY
ERROR!
GLERR
QUOTE
(ALIST2 KT CF KNIL CONS CONSNL LIST2 BHC SKNLST ENTERF)  µ P   p ¤           ¶   .   % (       p   p                

GLEXPANDPROGN BINARY
     @    :    >-.           :Z   ,<  Zp  -,   +   Z   +    ,<  @  º   +   ¸Z   -,   +   8Z  Z  Z  ;,   3B   +   Z  [  [  3B   +   Z  B  »,<  [  D  <Z  ,<  Z  [  [  D  <Z  ,<  Z  [  Z  D  ¼,~   Z  Z  2B  =+   8Z  [  Z  2B   +   8Z  [  [  ,<  Zp  -,   +    Z   +   *Zp  ,<  ,<wÿ/  @  ½   +   ¦Z   -,   +   ¥7   Z   ,~   2B   +   ¨Z   +   *[p  XBp  +   /  3B   +   8Z  [  [  [  3B   +   ´Z  «B  »,<  [  ®D  <Z  0,<  Z  1[  [  [  D  <Z  2,<  Z  ´[  [  Z  D  ¼,~   [p  XBp  +   E!$#!$A$@   (VARIABLE-VALUE-CELL LST . 3)
(VARIABLE-VALUE-CELL X . 107)
((PROGN PROG2) . 0)
LAST
RPLACD
RPLACA
PROG
(VARIABLE-VALUE-CELL Y . 71)
(SKNA BHC KT FMEMB SKLST URET1 KNIL SKNLST ENTERF)   %    + (   `                  ® 8 ¨ x ¦ 8  8       @      

GLEXPENSIVE? BINARY
            -.           Z   -,   +   Z   ,~   -,   +      ,~   Z  Z  ,   3B   +   [  Z  XB  +   Z  2B  +   [  [  2B   +   [  Z  XB  +   Z   ,~   1     (VARIABLE-VALUE-CELL EXPR . 30)
ERROR
((CDR CDDR CDDDR CDDDDR CAR CAAR CADR CAADR CADDR CADDDR) . 0)
PROG1
(KT FMEMB SKNLST KNIL SKA ENTERF)          P   `   @    0      

GLFINDVARINCTX BINARY
               
-.           Z   3B   +   Z   ,<  Z  D  2B   +   [  XB  +   Z   ,~   @  (VARIABLE-VALUE-CELL VAR . 6)
(VARIABLE-VALUE-CELL CONTEXT . 13)
ASSOC
(KNIL ENTERF)    `        

GLFRANZLISPTRANSFM BINARY
     i    Û    f-.           Û@  \  ,~   Z   -,   +   Z  ,~   Z  Z  ],   3B   +   Z  ,<  [  [  Z  ,<  [  	Z  ,   XB  +   Z  Z  Ý,   3B   +   Z  ,<  [  Z  ,<  [  [  [  Z  ,<  [  [  Z  ,   XB  Z  Z  ^,   XB   Z  Z  Þ7  [  Z  Z  1H  +   2D   +   XB   3B   +   #[  Z  [  ,   XB  !+   ÖZ  "Z  _,   3B   +   ®[  #[  [  2B   +   ®Z  ¥,<  [  (Z  ,<  [  )[  Z  ,<  ,<   ,   XB  ª+   ÖZ  ­Z  ß,   3B   +   ·[  ®[  2B   +   ·Z  1,<  [  3Z  ,<  ,<   ,   XB  4+   ÖZ  ¶2B  `+   E,<  à[  ·[  Z  -,   +   ¿[  ¹[  Z  ,   /"  ,   +   B,<  a[  <[  Z  ,   ,<  [  @Z  ,   XB  Â+   ÖZ  D2B  á+   TZ  E,<  ,<  b$  âZ  Æ,<  ,<  c$  ãXB   [  ÊZ  2B   +   ÏZ  K,<  ,<   $  d+   ÖZ  M,<  ,<   [  ÏZ  ,   ,   D  d+   ÖZ  È2B  ä+   ÖZ  TB  eZ  3B   +   Ú,<  åZ  Õ,<  ,   ,~   Z  Ø,~   " H )@$  ¬L@6L     (VARIABLE-VALUE-CELL X . 181)
(NIL VARIABLE-VALUE-CELL TMP . 162)
(NIL VARIABLE-VALUE-CELL NOTFLG . 173)
((MAP MAPC MAPCAR MAPCONC MAPLIST MAPCON push PUSH GLSTRGREATERP ALPHORDER) . 0)
((PUTPROP) . 0)
((ALPHORDER GLSTRGEP NLISTP) . 0)
(((MEMB MEMQ) (FMEMB MEMQ) (FASSOC ASSQ) (LITATOM SYMBOLP) (GETPROP GET) (GETPROPLIST PLIST) (
IGREATERP >) (IGEQ >=) (GEQ >=) (ILESSP <) (ILEQ <=) (LEQ <=) (IPLUS +) (IDIFFERENCE -) (ITIMES *) (
IQUOTIENT /) (ADD1 1+) (SUB1 1-) (EQP =) (* COMMENT) (MAPCONC MAPCAN) (APPLY* FUNCALL) (DECLARE 
COMMENT) (NCHARS FLATC) (LISTP DTPR) (NLISTP DTPR) (UNPACK EXPLODE) (PACK READLIST) (STREQUAL EQUAL) (
GLSTRLESSP ALPHALESSP) (ALPHORDER ALPHALESSP) (GLSTRGREATERP ALPHALESSP) (GLSTRGEP ALPHALESSP) (
DREVERSE NREVERSE)) . 0)
((SOME EVERY) . 0)
((APPEND) . 0)
NTH
NTHCDR
1-
SELECTQ
CASEQ
RPLACA
2
NLEFT
RPLACD
PROG
GLTRANSPROG
not
(LIST2 CONSNL KT ALIST2 MKN IUNBOX SKI LIST3 LIST4 CONS ALIST4 ALIST3 KNIL FMEMB SKNLST ENTERF) (   
8   
   
0 Â    ¿    ¾    <    7    .    ¢        Ä P     O 	P ¶ 0 1 X ( X   h       %    x    H      

GLGENCODE BINARY
               -.          Z   2B  +   Z   B  ,~   2B  +   Z  B  ,~   2B  +   Z  B  ,~   2B  +   Z  B  ,~   2B  +   Z  B  ,~      ,~   Zk-      (VARIABLE-VALUE-CELL X . 26)
(VARIABLE-VALUE-CELL GLLISPDIALECT . 3)
INTERLISP
GLINTERLISPTRANSFM
MACLISP
GLMACLISPTRANSFM
FRANZLISP
GLFRANZLISPTRANSFM
UCILISP
GLUCILISPTRANSFM
PSL
GLPSLTRANSFM
ERROR
(ENTERF)      

GLGETASSOC BINARY
                -.           @    ,~   Z   ,<  Z   D  
XB   3B   +   [  ,~   Z   ,~      (VARIABLE-VALUE-CELL KEY . 6)
(VARIABLE-VALUE-CELL ALST . 8)
(NIL VARIABLE-VALUE-CELL TMP . 13)
ASSOC
(KNIL ENTERF)          

GLGETCONSTDEF BINARY
             -.           Z   ,<  ,<  $  3B   +   Z  ,<  ,<  $  3B   +   3B   +   -,   +   ,<  ,<  ,   ,<  Z  ,<  ,<  $  ,   ,~   Z   ,~   &V      (VARIABLE-VALUE-CELL ATM . 23)
GLISPCONSTANTFLG
GETPROP
GLISPCONSTANTVAL
QUOTE
GLISPCONSTANTTYPE
(ALIST2 LIST2 SKNNM KT KNIL ENTERF)   h   8         x   H      

GLGETD BINARY
             -.           Z   B  3B   +   
Z  ,<  ,<  $  2B  +   
Z  B  ,<  "  ,<  "     Z  B  ,~   ~@ (VARIABLE-VALUE-CELL FN . 20)
CCODEP
EXPR
UNSAVEDEF
PRIN1
1
SPACES
"unsaved."
TERPRI
GETD
(KNIL ENTERF)    8      

GLGETDB BINARY
            -.           Z   B  2B  	+   Z  B  2B   +   Z  ,<  ,<  	$  
,~   )@  (VARIABLE-VALUE-CELL FN . 11)
FNTYP
EXPR
GETD
GETPROP
(KNIL ENTERF)         

GLGETDEF BINARY
     	        -.           ,<  Z   ,<  ,<  ,<  $  ,   ,   ,~   `   (VARIABLE-VALUE-CELL NAME . 4)
(VARIABLE-VALUE-CELL TYPE . 0)
GLDEFSTRQ
GLSTRUCTURE
GETPROP
(ALIST2 CONSS1 ENTERF)   `    X      

GLGETFIELD BINARY
      ß    Ò    Ü-.           Ò@  T  ,~   Z   2B   +   +   ;-,   +   ,,<  Z   D  ÕXB   3B   +   Z  ,<  Z   ,<  [  [  Z  ,<  ,<   (  VXB   3B   +   Z  ,~   ,<  Ö,<  WZ  
,<  ,<  ×Z  	,<  ,<  X[  [  Z  ^,  ,   D  Ø+   ,,<   Z  ,<  Z  F  ÖXB  3B   +   XB  +   ,Z  B  YXB  3B   +   ¢,<  Z  ,<  ,<   &  Ö,~   Z  B  ÙXB  3B   +   (,<  Z   ,<  ,<   &  Ö,~   ,<  Ö,<  ZZ  ¢,<  ,<  Ú,   D  Ø,~   Z  )-,   +   ;Z  ,,<  Z  ¥,<  [  ­Z  ,<  ,<   (  VXB  £3B   +   4+   ,<  Ö,<  [Z  ®,<  ,<  Û[  ¯Z  ,<  ,<  \Z  ¶^,  ,   D  Ø,~   Z  2B   +   ½Z   ,~   Z  ;,<  [  ½XB  ¾,\  XB   Z  @2B   +   Â+   ;Z  À,<  [  ÂXB  Ã,\  XB  Z  5[  EZ  2B  +   ËZ  F,<  [  H[  Z  ,   ,~   Z  I,<  Z  Å,<  [  Ë[  Z  ,<  ,<   (  VXB  22B   +   +   À4H$R	!2DD"          (VARIABLE-VALUE-CELL SOURCE . 113)
(VARIABLE-VALUE-CELL FIELD . 153)
(VARIABLE-VALUE-CELL CONTEXT . 126)
(NIL VARIABLE-VALUE-CELL TMP . 161)
(NIL VARIABLE-VALUE-CELL CTXENTRY . 155)
(NIL VARIABLE-VALUE-CELL CTXLIST . 136)
GLFINDVARINCTX
GLVALUE
GLGETFIELD
"The property"
"cannot be found for"
"whose type is"
GLERROR
GLGETGLOBALDEF
GLGETCONSTDEF
"The name"
"cannot be found."
"The property"
"cannot be found for type"
"in"
(ALIST2 SKLST LIST3 ALIST SKA KNIL ENTERF) 	8   X   8   (         R 
 B X ¼ 8 2 x %    @  x          

GLGETFROMUNIT BINARY
             -.           @    ,~   ,<  [   [  Z  D  XB   3B   +   [  ,<  Z   ,<  Z   ,<   "  ,   ,~   Z   ,~   	   (VARIABLE-VALUE-CELL UNITREC . 7)
(VARIABLE-VALUE-CELL IND . 16)
(VARIABLE-VALUE-CELL DES . 18)
(NIL VARIABLE-VALUE-CELL TMP . 14)
GET
ASSOC
(EVCC KNIL ENTERF) 8   H        

GLGETGLOBALDEF BINARY
        	    -.           	Z   ,<  ,<  $  
3B   +   Z  ,<  ,<  ,<  $  
,   ,~   Z   ,~   #   (VARIABLE-VALUE-CELL ATM . 9)
GLISPGLOBALVAR
GETPROP
GLISPGLOBALVARTYPE
(ALIST2 KNIL ENTERF)       	  H      

GLGETPAIRS BINARY
      ¢        ¡-.          @    ,~   Z   2B   +   Z   ,~   Z  ,<  [  XB  ,\  XB   -,   +   ,<  ,<  ,<  ,   D  +   2B  +   +   Z  ,<  ,<  $   3B   +   Z  ,<  [  XB  ,\  ,<   Z   ,<  ,<   &   XB   Z  ,<  Z  Z  ,   ,   D  !XB  +    _ @(  (VARIABLE-VALUE-CELL EXPR . 37)
(VARIABLE-VALUE-CELL CONTEXT . 40)
(NIL VARIABLE-VALUE-CELL PROP . 47)
(NIL VARIABLE-VALUE-CELL VAL . 48)
(NIL VARIABLE-VALUE-CELL PAIRLIST . 52)
GLGETPAIRS
"is not a legal property name."
GLERROR
,
((= _ :=) . 0)
MEMB
GLDOEXPR
NCONC
(CONSNL CONS KT LIST2 SKNA KNIL ENTERF)          `   @      H   H      

GLGETPROP BINARY
               -.           @    ,~   Z   ,<  ,<  $  XB   3B   +   [  ,<  Z   D  XB   3B   +   Z   ,<  D  XB   ,~   Z   ,~   2       (VARIABLE-VALUE-CELL STR . 6)
(VARIABLE-VALUE-CELL PROPNAME . 20)
(VARIABLE-VALUE-CELL PROPTYPE . 15)
(NIL VARIABLE-VALUE-CELL PL . 13)
(NIL VARIABLE-VALUE-CELL SUBPL . 17)
(NIL VARIABLE-VALUE-CELL PROPENT . 23)
GLSTRUCTURE
GETPROP
LISTGET
ASSOC
(KNIL ENTERF)  X 
  h      

GLGETSTR BINARY
                -.           @    ,~   Z   B  XB   3B   +   -,   +   ,<  ,<  $  XB   3B   +   Z  ,~   Z   ,~   Jd  (VARIABLE-VALUE-CELL DES . 6)
(NIL VARIABLE-VALUE-CELL TYPE . 8)
(NIL VARIABLE-VALUE-CELL TMP . 19)
GLXTRTYPE
GLSTRUCTURE
GETPROP
(SKA KNIL ENTERF)    h   8   X      

GLGETSUPERS BINARY
     	        -.           Z   ,<  ,<  $  [  ,<  ,<  $  ,~      (VARIABLE-VALUE-CELL CLASS . 3)
GLSTRUCTURE
GETPROP
SUPERS
LISTGET
(ENTERF)    

GLIDNAME BINARY
        ?    ³    =-.          ³@  µ  ,~   Z   -,   +   32B   +   ,<   ,<   ,   ,~   -,   +   *2B   +   ,<  ,<  6,   ,~   ,<  Z   D  ¶XB   3B   +   Z  ,<  2B  7+   Z   +   ,   ,~   ,<   Z  ,<  Z  F  ·2B   +   3Z  ,<  Z  D  8XB  3B   +   Z  ,<  [  [  Z  ,   ,~   Z  B  ¸2B   +   3Z  B  92B   +   3Z   3B   +   $Z   3B   +   §,<  ¹,<  :Z  ,<  ,<  º,   D  ;Z  %,<  ,<   ,   ,~   -,   +   -,<  ,<  »,   ,~      +   0,<  ,<  <,   ,~   ,<  ¹,<  ,<  ¼,   D  ;,~   ,~   (MD@¤e"J@     (VARIABLE-VALUE-CELL NAME . 79)
(VARIABLE-VALUE-CELL DEFAULTFLG . 66)
(VARIABLE-VALUE-CELL CONTEXT . 46)
(VARIABLE-VALUE-CELL GLCAUTIOUSFLG . 69)
(NIL VARIABLE-VALUE-CELL TMP . 53)
BOOLEAN
GLVARTYPE
*NIL*
GLGETFIELD
GLIDTYPE
GLGETCONSTDEF
GLGETGLOBALDEF
GLIDNAME
"The name"
"cannot be found in this context."
GLERROR
INTEGER
REAL
"is an illegal name."
(FLOATT SKI LIST3 ALIST2 KT SKLA LIST2 KNIL SKA ENTERF)   .    +    §     (         ( 0 P * 8     © @ ¢     8  h   h            

GLIDTYPE BINARY
     "        !-.           @    ,~   Z   XB   Z  2B   +   Z   ,~   Z  ,<  [  XB  ,\  XB   Z  	2B   +   +   Z  XB   [  XB  [  Z  Z   3B  +   [  [  Z  Z  3B  +   [  [  Z  -,   +   [  [  Z  Z  B   3B   +   Z  [  [  Z  [  Z  2B  +   Z  ,~    `! @ (VARIABLE-VALUE-CELL NAME . 50)
(VARIABLE-VALUE-CELL CONTEXT . 6)
(NIL VARIABLE-VALUE-CELL CTXLEVELS . 16)
(NIL VARIABLE-VALUE-CELL CTXLEVEL . 26)
(NIL VARIABLE-VALUE-CELL CTXENTRY . 58)
GL-A-AN?
(SKLST KNIL ENTERF)        0   X      

GLINIT BINARY
     Þ    Æ    Û-.          ` Æ,<  Ì"  MXB   Z   XB   Z   XB   Z   XB   Z   XB   Z"   XB   Z   XB   Z   XB   Z   XB   Z   XB   Z   XB   Z   2B  Í+   Z  N+   2B  Î+   Z  O+   2B  Ï+   Z  P+   2B  Ð+   Z  Q+   2B  Ñ+   Z  R+   Z   ,<  Zp  -,   +   +   ¡Zp  ,<  @  Ò   +    Z   ,<  ,<  S,<   &  Ó,~   [p  XBp  +   /  Z  2B  Í+   ¤Z  T+   -2B  Î+   ¦Z  Ô+   -2B  Ï+   ¨Z  U+   -2B  Ð+   ªZ  Õ+   -2B  Ñ+   ¬Z  V+   -Z   ,<  Zp  -,   +   ¯+   ¶Zp  ,<  @  Ò   +   5Z  ,<  ,<  Ö,<   &  Ó,~   [p  XBp  +   ­/  ,<  W"  ×Z  "2B  Í+   ;,<  X"  ×+   Ä2B  Î+   ½,<  Ø"  ×+   Ä2B  Ï+   @,<  Y"  ×+   Ä2B  Ð+   Â,<  Ù"  ×+   Ä2B  Ñ+   Ä,<  Z"  ×,<  Ú"  [Z   ,~     ÿx2Jpe[p          (VARIABLE-VALUE-CELL GLSEPBITTBL . 5)
(VARIABLE-VALUE-CELL GLUNITPKGS . 7)
(VARIABLE-VALUE-CELL GLSEPMINUS . 9)
(VARIABLE-VALUE-CELL GLQUIETFLG . 11)
(VARIABLE-VALUE-CELL GLSEPATOM . 13)
(VARIABLE-VALUE-CELL GLSEPPTR . 15)
(VARIABLE-VALUE-CELL GLBREAKONERROR . 17)
(VARIABLE-VALUE-CELL GLUSERSTRNAMES . 19)
(VARIABLE-VALUE-CELL GLLASTFNCOMPILED . 21)
(VARIABLE-VALUE-CELL GLLASTSTREDITED . 23)
(VARIABLE-VALUE-CELL GLCAUTIOUSFLG . 25)
(VARIABLE-VALUE-CELL GLLISPDIALECT . 112)
((: _ + - ' = ~ < > * / , ^) . 0)
MAKEBITTABLE
INTERLISP
((EQ EQP NEQ EQUAL MEMB AND OR NOT ZEROP NULL NUMBERP FIXP FLOATP ATOM LITATOM LISTP MINUSP STRINGP 
FASSOC ASSOC IGREATERP IGEQ ILESSP ILEQ IPLUS ITIMES IDIFFERENCE IQUOTIENT ADD1 SUB1 PLUS MINUS IMINUS
 TIMES SQRT EXPT DIFFERENCE QUOTIENT GREATERP GEQ LESSP LEQ CAR CDR CAAR CADR) . 0)
MACLISP
((EQ EQP AND OR NOT EQUAL ZEROP NULL NULL NUMBERP FIXP FLOATP ATOM SYMBOLP PAIRP BIGP HUNKP ASCII 
PLUSP MINUSP ODDP GREATERP LESSP MEMQ ASSQ > = MAX MIN ABS FIX FLOAT REMAINDER GCD \ \\ ^ LOG EXP SIN 
COS ATAN BOOLE ASH LSH ROT < + * / - 1+ 1- ADD1 SUB1 PLUS MINUS TIMES SQRT EXPT DIFFERENCE QUOTIENT 
CAR CDR CAAR CADR) . 0)
FRANZLISP
((EQ NEQ AND OR NOT EQUAL ATOM NULL DTPR SYMBOLP STRINGP HUNKP MEMQ > = < + * / - 1+ 1- ADD1 SUB1 PLUS
 MINUS TIMES SQRT EXPT DIFFERENCE QUOTIENT ABS BOOLE COS EVENP EXP FIX FIXP FLOAT FLOATP GREATERP 
LESSP LOG LSH MAX MIN MINUSP MOD NUMBERP ODDP ONEP REMAINDER ROT SIN SQRT ZEROP CAR CDR CAAR CADR) . 0
)
UCILISP
((EQ EQUAL AND OR NOT MEMQ > GE = LE < + * / - ADD1 SUB1 PLUS MINUS TIMES DIFFERENCE QUOTIENT CAR CDR 
CAAR CADR) . 0)
PSL
((EQ NE EQUAL AND OR NOT MEMQ ADD1 SUB1 EQN ASSOC PLUS MINUS TIMES SQRT EXPT DIFFERENCE QUOTIENT 
GREATERP GEQ LESSP LEQ CAR CDR CAAR CADR) . 0)
(VARIABLE-VALUE-CELL X . 100)
GLEVALWHENCONST
PUTPROP
((IGREATERP IGEQ ILESSP ILEQ IPLUS ITIMES IDIFFERENCE IQUOTIENT ADD1 SUB1 PLUS MINUS IMINUS TIMES SQRT
 EXPT DIFFERENCE QUOTIENT GREATERP GEQ LESSP LEQ) . 0)
((> = < + * / - 1+ 1- ADD1 SUB1 PLUS MINUS IMINUS TIMES SQRT EXPT DIFFERENCE QUOTIENT GREATERP LESSP) 
. 0)
((> = < + * / - 1+ 1- ADD1 SUB1 PLUS MINUS IMINUS TIMES SQRT EXPT DIFFERENCE QUOTIENT GREATERP LESSP) 
. 0)
((> GE = LE < + * / - ADD1 SUB1 PLUS MINUS IMINUS TIMES SQRT EXPT DIFFERENCE QUOTIENT GREATERP LESSP) 
. 0)
((ADD1 SUB1 EQN PLUS MINUS TIMES SQRT EXPT DIFFERENCE QUOTIENT GREATERP GEQ LESSP LEQ) . 0)
GLARGSNUMBERP
(((NUMBER (PLUS MINUS DIFFERENCE TIMES EXPT QUOTIENT REMAINDER MIN MAX ABS)) (INTEGER (LENGTH FIX ADD1
 SUB1)) (REAL (SQRT LOG EXP SIN COS ATAN ARCSIN ARCCOS ARCTAN ARCTAN2 FLOAT)) (BOOLEAN (ATOM NULL 
EQUAL MINUSP ZEROP GREATERP LESSP NUMBERP FIXP FLOATP STRINGP ARRAYP EQ NOT NULL BOUNDP))) . 0)
GLDEFFNRESULTTYPES
(((INTEGER (FLENGTH IPLUS NCHARS IMINUS IDIFFERENCE ITIMES IQUOTIENT IREMAINDER IMIN IMAX LOGAND LOGOR
 LOGXOR LSH RSH LRSH LLSH GCD COUNT COUNTDOWN NARGS)) (BOOLEAN (LISTP IGREATERP SMALLP FGREATERP 
FLESSP GEQ LEQ LITATOM NLISTP NEQ ILESSP IGEQ ILEQ IEQP CCODEP SCODEP SUBRP EVERY EQUALALL EQLENGTH 
EQUALN EXPRP EQP)) (REAL (RAND RANDSET))) . 0)
(((INTEGER (+ - * / 1+ 1- FLATC)) (BOOLEAN (> PAIRP HUNKP BIGP EQP < = SYMBOLP))) . 0)
(((INTEGER (+ - * / 1+ 1- FLATC)) (BOOLEAN (> BIGP HUNKP < = DTPR SYMBOLP))) . 0)
(((INTEGER (+ - * / ADD1 SUB1 FLATSIZE FLATSIZEC)) (BOOLEAN (CONSP GE LE INUMP))) . 0)
(((INTEGER (FLATSIZE FLATSIZE2)) (BOOLEAN (EQN NE PAIRP IDP UNBOUNDP))) . 0)
(((NTH . GLNTHRESULTTYPEFN) (CONS . GLLISTRESULTTYPEFN) (LIST . GLLISTRESULTTYPEFN) (NCONC . 
GLLISTRESULTTYPEFN)) . 0)
GLDEFFNRESULTTYPEFNS
(BHC KT SKNLST ASZ KNIL ENTER0) x ¢    ´ x   p         Æ X  P  0 
    `   @      

GLINSTANCEFN BINARY
            -.           @    ,~   Z   ,<  ,<  $  XB   2B   +   Z   ,~   Z  2B   +   +   Z  Z  ,<  ,<  $  XB   Z   XB   Z  2B   +   Z  ,~   Z  B  ,<  Z  B  ,\  ,   3B   +   [  XB  [  XB  +   [  XB  +   20"D   (VARIABLE-VALUE-CELL FNNAME . 6)
(VARIABLE-VALUE-CELL ARGTYPES . 25)
(NIL VARIABLE-VALUE-CELL INSTANCES . 47)
(NIL VARIABLE-VALUE-CELL IARGS . 42)
(NIL VARIABLE-VALUE-CELL TMP . 44)
GLINSTANCEFNS
GETPROP
GLARGUMENTTYPES
GLXTRTYPEB
(EQUAL KNIL ENTERF)  @   H     h      

GLINTERLISPTRANSFM BINARY
        6    0    ´-.           0@  °  ,~   Z   -,   +   Z  ,~   Z  Z  ±,   3B   +   Z  ,<  [  [  Z  ,<  [  	Z  ,   XB  Z  Z  2,   XB   Z  Z  ²7  [  Z  Z  1H  +   2D   +   XB   3B   +   [  Z  [  ,   XB  +   +Z  2B  3+   +[  [  Z  -,   +   +[  [  Z  0B   +   ![  Z  XB  +   +[   [  Z  ,   0"  +   +,<  ³[  ![  Z  ,   /"  ,   D  3Z  ,<  [  ¤Z  ,   XB  )Z  3B   +   /,<  4Z  ª,<  ,   ,~   Z  -,~   " )a @@  (VARIABLE-VALUE-CELL X . 94)
(NIL VARIABLE-VALUE-CELL TMP . 43)
(NIL VARIABLE-VALUE-CELL NOTFLG . 86)
((GLSTRLESSP GLSTRGEP) . 0)
((GLSTRGREATERP GLSTRLESSP) . 0)
(((GLSTRLESSP ALPHORDER) (GLSTRGREATERP ALPHORDER) (GLSTRGEP ALPHORDER)) . 0)
NTH
((CDR CDDR CDDDR CDDDDR) . 0)
NOT
(LIST2 ALIST2 MKN IUNBOX ASZ SKNM CONS ALIST3 KNIL FMEMB SKNLST ENTERF)  p   0       p £                    ¬ X      p            

GLISPCONSTANTS BINARY
    )    !    §-.          !@  ¡   ,~   Z   ,<  Zp  -,   +   +   Zp  ,<  @  £   +   Z   ,<  ,<  $,<   &  ¤Z  ,<  ,<  %[  Z  F  ¤Z  ,<  ,<  ¥[  Z  ,   XB   ,<   ,<   ,<   &  &XB   Z  ,<  Z  B  ¦   ,\  ,   F  ¤Z  ,<  ,<  '[  [  Z  2B   +   [  Z  F  ¤,~   [p  XBp  +   /  Z   ,~   RIDB"      (VARIABLE-VALUE-CELL ARGS . 6)
(NIL VARIABLE-VALUE-CELL TMP . 56)
(NIL VARIABLE-VALUE-CELL EXPR . 34)
(NIL VARIABLE-VALUE-CELL EXPRSTACK . 0)
(NIL VARIABLE-VALUE-CELL FAULTFN . 0)
(VARIABLE-VALUE-CELL ARG . 51)
GLISPCONSTANTFLG
PUTPROP
GLISPORIGCONSTVAL
GLISPCONSTANTVAL
GLDOEXPR
EVAL
GLISPCONSTANTTYPE
(BHC SET KNIL CONSNL KT SKNLST ENTERF)           0          0    X      

GLISPGLOBALS BINARY
            -.          Z   ,<  Zp  -,   +   Z   +    Zp  ,<  @     +   Z   ,<  ,<  ,<   &  Z  ,<  ,<  [  
Z  F  ,~   [p  XBp  +   BJ$ (VARIABLE-VALUE-CELL ARGS . 3)
(VARIABLE-VALUE-CELL ARG . 23)
GLISPGLOBALVAR
PUTPROP
GLISPGLOBALVARTYPE
(KT URET1 KNIL SKNLST ENTERF)        X    P    @      

GLISPOBJECTS BINARY
            -.          Z   ,<  Zp  -,   +   Z   +    Zp  ,<  @     +   	Z   B  ,~   [p  XBp  +   BQ  (VARIABLE-VALUE-CELL ARGS . 3)
(VARIABLE-VALUE-CELL ARG . 15)
GLDEFSTR
(URET1 KNIL SKNLST ENTERF)  X    P    @      

GLLISPADJ BINARY
               -.           @    ,~   Z   B  Z  7  [  Z  Z  1H  +   2D   +   XB   3B   +   [  ,~   Z   ,~   `R  (VARIABLE-VALUE-CELL ADJ . 6)
(NIL VARIABLE-VALUE-CELL TMP . 20)
U-CASE
(((ATOMIC . ATOM) (NULL . NULL) (NIL . NULL) (INTEGER . FIXP) (REAL . FLOATP) (BOUND . BOUNDP) (ZERO .
 ZEROP) (NUMERIC . NUMBERP) (NEGATIVE . MINUSP) (MINUS . MINUSP)) . 0)
(KNIL ENTERF)  @ 
       

GLLISPISA BINARY
               -.           @    ,~   Z   B  Z  7  [  Z  Z  1H  +   2D   +   XB   3B   +   [  ,~   Z   ,~   `R  (VARIABLE-VALUE-CELL ISAWORD . 6)
(NIL VARIABLE-VALUE-CELL TMP . 20)
U-CASE
(((ATOM . ATOM) (LIST . LISTP) (NUMBER . NUMBERP) (INTEGER . FIXP) (SYMBOL . LITATOM) (ARRAY . ARRAYP)
 (STRING . STRINGP) (BIGNUM . BIGP) (LITATOM . LITATOM)) . 0)
(KNIL ENTERF)  @ 
       

GLLISTRESULTTYPEFN BINARY
        Å    ¾    Ã-.           ¾@  ¿  ,~   Z   B  ÀXB   [  3B   +   [  Z  B  ÀXB   Z   2B  A+   Z  -,   +   Z  2B  Á+   Z  [  ,   Z  Á,   2B   +   >+   Z  2B  B+   Z  [  Z  ,   3B   +   +   Z   +   Z  2B   +   >Z  ,<  Z  ,<  ,   ,~   2B  Â+   ®Z  Z  ,   3B   +   Z  ,~   Z  -,   +   ,Z  -,   +   ,Z  2B  B+   ,Z  !2B  Á+   ,[  $[  2B   +   ,[  ¢Z  [  ¥Z  ,   3B   +   ,Z  §,~   Z  +2B   +   >Z  ¨,~   2B  Á+   ½,<  Z  ,<  ,<   Zwÿ-,   +   8Zp  Z   2B   +   6 "  +   ·[  QD   "  +   <ZwÿB  ÀZp  ,   XBp  [wÿXBwÿ+   ±/  ,   ,~      C,~   DLXÍ$¥1`¢
   (VARIABLE-VALUE-CELL FN . 48)
(VARIABLE-VALUE-CELL ARGTYPES . 96)
(NIL VARIABLE-VALUE-CELL ARG1 . 88)
(NIL VARIABLE-VALUE-CELL ARG2 . 91)
GLXTRTYPE
CONS
LIST
LISTOF
NCONC
ERROR
(CONSS1 BHC COLLCT SKNLST LIST2 EQUAL CONS21 CONS SKLST KNIL ENTERF) X   P   (   0   0   (  H   x   h   ( ! 0   P ´   ­ 0 § h  h           

GLLISTSTRFN BINARY
       *    ¡    ¨-.           ¡@  #  ,~   Z"  XB   Z  ¤XB   Z   2B  %+      ."  ,   XB  [  XB  Z  ,<  [  XB  ,\  Z  2B   +   Z   ,~   Z  -,   +   Z   ,<  Z  ,<  Z   F  ¥XB   3B   +   ,<  Z  	3B   +   Z  +   ,<  &,<  ¦,<  'Z  ,<  ,   B  §,   D  (,~      ."  ,   XB  Z  3B   +   [  XB   +   & $/
     (VARIABLE-VALUE-CELL IND . 32)
(VARIABLE-VALUE-CELL DES . 34)
(VARIABLE-VALUE-CELL DESLIST . 36)
(NIL VARIABLE-VALUE-CELL TMP . 38)
(NIL VARIABLE-VALUE-CELL N . 60)
(NIL VARIABLE-VALUE-CELL FNLST . 65)
(((CAR *GL*) (CADR *GL*) (CADDR *GL*) (CADDDR *GL*)) . 0)
LISTOBJECT
GLSTRFN
CAR
NTH
*GL*
GLGENCODE
GLSTRVAL
(ALIST2 LIST3 SKLST KNIL MKN ASZ ENTERF) @   0          H  X   h            

GLMACLISPTRANSFM BINARY
       â    U    ß-.           U@  Õ  ,~   Z   -,   +   Z  ,~   Z  Z  Ö,   3B   +   Z  ,<  [  [  Z  ,<  [  	Z  ,   XB  +   Z  Z  W,   3B   +   Z  ,<  [  Z  ,<  [  [  [  Z  ,<  [  [  Z  ,   XB  Z  Z  ×,   XB   Z  Z  X7  [  Z  Z  1H  +   2D   +   XB   3B   +   #[  Z  [  ,   XB  !+   PZ  "2B  Ø+   )[  #2B   +   )Z  ¤,<  ,<   ,   XB  &+   PZ  (2B  Y+   1[  )[  2B   +   1Z  ª,<  [  ¬Z  ,<  ,<   ,   XB  ­+   PZ  02B  Ù+   @Z  1,<  ,<  Z$  ÚZ  ²,<  ,<  [$  ÛXB   [  ¶Z  2B   +   »Z  7,<  ,<   $  \+   PZ  9,<  ,<   [  »Z  ,   ,   D  \+   PZ  ´2B  Ü+   Í,<  ][  @[  Z  -,   +   H[  B[  Z  ,   /"  ,   +   Ê,<  Ý[  Ä[  Z  ,   ,<  [  ÈZ  ,   XB  K+   PZ  Ì2B  ^+   PZ  ÍB  ÞZ  3B   +   T,<  _Z  O,<  ,   ,~   Z  R,~   " H )HÌBpÀ@&       (VARIABLE-VALUE-CELL X . 168)
(NIL VARIABLE-VALUE-CELL TMP . 122)
(NIL VARIABLE-VALUE-CELL NOTFLG . 160)
((MAP MAPC MAPCAR MAPCONC MAPLIST MAPCON push PUSH SOME EVERY SUBSET GLSTRGREATERP ALPHORDER) . 0)
((PUTPROP) . 0)
((ALPHORDER GLSTRGEP NEQ NLISTP) . 0)
(((MEMB MEMQ) (FMEMB MEMQ) (FASSOC ASSQ) (LITATOM SYMBOLP) (GETPROP GET) (GETPROPLIST PLIST) (LISTP 
PAIRP) (NLISTP PAIRP) (NEQ EQ) (IGREATERP >) (IGEQ >=) (GEQ >=) (ILESSP <) (ILEQ <=) (LEQ <=) (IPLUS +
) (IDIFFERENCE -) (ITIMES *) (IQUOTIENT //) (ADD1 1+) (SUB1 1-) (* COMMENT) (MAPCONC MAPCAN) (APPLY* 
FUNCALL) (DECLARE COMMENT) (NCHARS FLATC) (UNPACK EXPLODE) (PACK READLIST) (DREVERSE NREVERSE) (
STREQUAL EQUAL) (ALPHORDER ALPHALESSP) (GLSTRGREATERP ALPHALESSP) (GLSTRGEP ALPHALESSP) (GLSTRLESSP 
ALPHALESSP)) . 0)
RETURN
APPEND
SELECTQ
CASEQ
RPLACA
2
NLEFT
RPLACD
NTH
NTHCDR
1-
PROG
GLTRANSPROG
NOT
(MKN IUNBOX SKI CONSNL ALIST2 KT LIST3 LIST2 CONS ALIST4 ALIST3 KNIL FMEMB SKNLST ENTERF) 	    p   H   x   	0 ?    ½    °    T    (   x   	P     Ñ 0 9   ¬   &           x            

GLMAKEFORLOOP BINARY
     D    :    B-.     (      :Z   2B   +   ,<  ¼Z   ,<  ,<  =,<  ½Z   ,   ,<  Z   3B   +   ,<  >Z  Z   ,   ,   +   [  2B   +   Z  +   Z  ¾Z  ,   ,   ,   ,   B  ?,<  ,<   ,   ,~   Z  	3B   +    ,<  ¿Z  ,<  ,<  =,<  ½Z  ,   ,<  ,<  @Z  ,<  ,<  ÀZ  ,<  ,<   ,   ,   ,   ,   ,   B  ?+   ¶Z  -,   +   0Z   Z  -,   +   0Z  ¡[  3B   +   0Z  £[  Z  Z  2B  +   0Z  ¥[  [  2B   +   0,<  AZ  ,<  ,<  =Z  ¨Z  ,   ,   B  ?+   ¶,<  AZ  «,<  ,<  =,<  ½Z  ',   ,<  Z  -,   ,   ,   B  ?,<  ,<  Á[  4Z  ,   ,   ,~   %AH!H9@P    (VARIABLE-VALUE-CELL LOOPVAR . 101)
(VARIABLE-VALUE-CELL DOMAIN . 97)
(VARIABLE-VALUE-CELL LOOPCONTENTS . 29)
(VARIABLE-VALUE-CELL LOOPCOND . 51)
(VARIABLE-VALUE-CELL COLLECTCODE . 111)
MAPC
FUNCTION
LAMBDA
COND
PROGN
GLGENCODE
MAPCONC
AND
CONS
MAPCAR
LISTOF
(SKA SKLST LIST3 LIST2 ALIST3 ALIST2 CONS CONSNL KNIL ENTERF)   £    ¡            ¶ X ¯ x  `       ¹ ` / p  8         4      + X  P  P   0      

GLMAKEGLISPVERSION BINARY
                -.          @    ,~   Z  XB   Z   ,<  D  2B   +   ,<  Z  D  ,<  "  Z   [  ,<  Z   D  XB   ,<  Zp  -,   +   +   Zp  B  [p  XBp  +   /  ,<   "  Z  ,<  Z   D  ,~   8!RD    (VARIABLE-VALUE-CELL OUTPUTDIALECT . 8)
(VARIABLE-VALUE-CELL FILE . 39)
(VARIABLE-VALUE-CELL GLISPCOMS . 18)
(VARIABLE-VALUE-CELL GLSPECIALFNS . 21)
(NIL VARIABLE-VALUE-CELL FNS . 37)
(NIL VARIABLE-VALUE-CELL DIALECTS . 14)
((MACLISP FRANZLISP UCILISP PSL) . 0)
MEMB
"Dialect must be a member of "
ERROR
LISPTRANS.LSP
LOAD?
LDIFFERENCE
COUNTARGS
UNBREAK
LTRANFNS
(BHC SKNLST KNIL ENTERF)       `   (        

GLMAKESTR BINARY
    ³    ©    2-.          ©@  +  ,~   Z   ,<  ,<  ,$  ¬3B   +   Z  ,<  [  XB  ,\  Z   B  -XB   2B   +   ,<  ­,<  .Z  ,<  ,<  ®,   D  /Z  2B  ¯+   ¢Z  ,<  ,<   Zwÿ-,   +   Zp  Z   2B   +    "  +   [  QD   "  +    Zwÿ,<  @  *   +   ,<   Z   ,<  ,<   &  0,~   Zp  ,   XBp  [wÿXBwÿ+   /  Z  °,   ,~   Z  B  1XB   Z  ,<  ,<  Z  ,   F  ±,<  Z  ¥,<  ,   ,~   4rX"DP@Q    (VARIABLE-VALUE-CELL TYPE . 79)
(VARIABLE-VALUE-CELL EXPR . 69)
(VARIABLE-VALUE-CELL CONTEXT . 54)
(NIL VARIABLE-VALUE-CELL PAIRLIST . 71)
(NIL VARIABLE-VALUE-CELL STRDES . 72)
((WITH With with) . 0)
MEMB
GLGETSTR
GLMAKESTR
"The type name"
"is not defined."
GLERROR
LISTOF
GLDOEXPR
LIST
GLGETPAIRS
GLBUILDSTR
(LIST2 CONSNL CONS21 BHC COLLCT KT SKNLST LIST3 KNIL ENTERF)   ©    '    ¢    ¡                     P      `      

GLMAKEVTYPE BINARY
     2    §    °-.           §@  ¨  (
,~   [   Z  XB   [  [  XB  Z  ,<  ,<  +$  «3B   +   
[  XB  	Z  2B   +   +   Z  
XB   [  XB  Z  2B  ,+   [  XB  Z   XB   Z  3B   +   Z  2B  ¬+   [  XB  Z  ,<  Z  B  -,   Z   ,   XB  +   
Z  Z  ,   XB  [  XB  +      ­XB   ,<  ,<  .,<  ®Z   ,<  ,   ,<  ,<  /Z  ,<  ,<  ¯Z  ,   ^,  ,   F  0Z  ,~    h00, 3    (VARIABLE-VALUE-CELL ORIGTYPE . 64)
(VARIABLE-VALUE-CELL VLIST . 57)
(NIL VARIABLE-VALUE-CELL SUPER . 72)
(NIL VARIABLE-VALUE-CELL PL . 69)
(NIL VARIABLE-VALUE-CELL PNAME . 43)
(NIL VARIABLE-VALUE-CELL TMP . 55)
(NIL VARIABLE-VALUE-CELL VTYPE . 77)
((with With WITH) . 0)
MEMB
=
,
DREVERSE
GLMKVTYPE
GLSTRUCTURE
TRANSPARENT
PROP
SUPERS
PUTPROP
(ALIST CONSNL LIST2 CONS ALIST2 KNIL ENTERF)   ¦    ¥    "           0  8 	       

GLMINUSFN BINARY
            -.           Z   ,<  ,<  ,<   &  2B   +   Z  ,<  ,<  ,<   &  2B   +   Z  -,   +   Z  B  +   [  
Z  B  2B  +   ,<  Z  ,   +   ,<  Z  ,   B  ,<  [  Z  ,   ,~   RRgÌ     (VARIABLE-VALUE-CELL LHS . 37)
MINUS
GLDOMSG
GLUSERSTROP
GLXTRTYPE
INTEGER
IMINUS
GLGENCODE
(ALIST2 SKNM KNIL ENTERF) H             P        

GLMKATOM BINARY
             -.           @    ,~   Z   ,<  ,<  ,<  ,<  $  2B   +   ^"   +   ,   ."  ,   XB   F  Z  B  ,<  Z  B  D  B  XB   [  3B   +   +   Z  ,~   -!'     (VARIABLE-VALUE-CELL NAME . 21)
(NIL VARIABLE-VALUE-CELL N . 24)
(NIL VARIABLE-VALUE-CELL NEWATOM . 33)
GLISPATOMNUMBER
GETPROP
PUTPROP
UNPACK
APPEND
PACK
(MKN IUNBOX KNIL ENTERF)                   

GLMKLABEL BINARY
    	        -.               ."  ,   XB  ,<  B  D  B  ,~   x   (VARIABLE-VALUE-CELL GLNATOM . 6)
((G L L A B E L) . 0)
UNPACK
APPEND
PACK
(MKN ENTER0)         

GLMKVAR BINARY
      	        -.               ."  ,   XB  ,<  B  D  B  ,~   x   (VARIABLE-VALUE-CELL GLNATOM . 6)
((G L V A R) . 0)
UNPACK
APPEND
PACK
(MKN ENTER0)    8      

GLMKVTYPE BINARY
               -.            ,<  "  ,~       GLVIRTUALTYPE
GLMKATOM
(ENTER0)      

GLNCONCFN BINARY
       ê    Ø    ç-.          Ø@  Z  (
,~   Z   XB   [  Z  B  ÜXB   2B  ]+   Z   Z$  ,   3B   +   ,<  ÝZ  ,<  ,   XB   +   ÒZ  -,   +   [  Z  2B  ]+   ,<  ^Z  
,<  Z  ,   XB  +   Ò,<  ÞZ  ,<  Z  ,   XB  +   Ò3B  _+   2B  ß+   ,<  ÞZ  ,<  Z  ,   XB  +   Ò2B  `+   !,<  àZ  ,<  Z  ,   XB  +   Ò2B   +   .,<  aZ  ,<  Z  ,   XB   Z  ¢-,   +   Ò[  £Z  3B   +   ÒZ  %,<  ,<   ,<  á[  ¦Z  ,   ,<  Z   H  b+   Ò-,   +   4Z  2B  á+   4,<  aZ  ¨,<  Z  ª,   XB  ¤+   ÒZ  ,<  Z  2,<  ,<  â&  cXB   3B   +   ¹Z  7,~   Z  4,<  ,<  ãZ  5,   F  dXB  ¸3B   +   ¾+   ¸Z  ¹,<  ,<  äZ  ;,   F  dXB  ¼3B   +   ÄZ  ÁXB  3+   ÒZ  /B  eXB   3B   +   MZ  ¾,<  Z  Å,<  ,   ,<  Z  @D  åXB  C3B   +   M+   ¸Z  G,<  ,<  ãZ  JF  fXB  K3B   +   Ñ+   ¸Z   ,~   Z  M,<  Z  ÃB  æ,<  Z  Ä,<  ,   ,<  ,<   &  g,~   	Ap,"\d2$R2L     (VARIABLE-VALUE-CELL LHS . 165)
(VARIABLE-VALUE-CELL RHS . 157)
(VARIABLE-VALUE-CELL CONTEXT . 89)
(NIL VARIABLE-VALUE-CELL LHSCODE . 98)
(NIL VARIABLE-VALUE-CELL LHSDES . 170)
(NIL VARIABLE-VALUE-CELL NCCODE . 167)
(NIL VARIABLE-VALUE-CELL TMP . 159)
(NIL VARIABLE-VALUE-CELL STR . 144)
GLXTRTYPE
INTEGER
ADD1
IPLUS
PLUS
NUMBER
REAL
BOOLEAN
OR
NCONC1
LISTOF
GLADDSTR
NCONC
GLUNITOP
_+
GLDOMSG
+
GLGETSTR
GLNCONCFN
GLUSERSTROP
GLGENCODE
GLPUTFN
(KT CONSNL SKLST ALIST2 SKA ALIST3 SKNI LIST2 KNIL EQP ASZ ENTERF)   X    Á H   p   H   h   8 %   h         W 	      Ò 
 Ì p C ` ¸ ( ¨       	           

GLNEQUALFN BINARY
        #        "-.           @    ,~   Z   ,<  ,<  Z   ,   F  XB   3B   +   Z  ,~   Z  ,<  ,<  Z  F  XB  3B   +   +   [  Z  3B  +   [  
Z  2B  +   ,<  Z  ,<  Z  ,   B   ,<  ,<   ,   ,~   ,<  !Z  ,<  Z  D  ¡Z  ,   B   ,<  ,<   ,   ,~   $BLg
"(  (VARIABLE-VALUE-CELL LHS . 45)
(VARIABLE-VALUE-CELL RHS . 47)
(NIL VARIABLE-VALUE-CELL TMP . 22)
~=
GLDOMSG
GLUSERSTROP
ATOM
NEQ
GLGENCODE
BOOLEAN
NOT
GLEQUALFN
(ALIST2 LIST2 ALIST3 KNIL CONSNL ENTERF)       @           x    `      

GLNOTFN BINARY
            -.           Z   ,<  ,<  ,<   &  2B   +   Z  ,<  ,<  ,<   &  2B   +   Z  B  ,<  ,<  ,   ,~   RU  (VARIABLE-VALUE-CELL LHS . 17)
~
GLDOMSG
GLUSERSTROP
GLBUILDNOT
BOOLEAN
(LIST2 KNIL ENTERF)        x   @      

GLNTHRESULTTYPEFN BINARY
        	    -.           	@  
  ,~   Z   B  XB   -,   +   Z  2B  +   Z  ,~   Z   ,~   K   (VARIABLE-VALUE-CELL FN . 0)
(VARIABLE-VALUE-CELL ARGTYPES . 14)
(NIL VARIABLE-VALUE-CELL TMP . 11)
GLXTRTYPE
LISTOF
(KNIL SKLST ENTERF)   	           

GLOCCURS BINARY
             -.           Z   Z   2B  +   Z   ,~   Z  -,   +   Z   ,~   Z  ,<  Z  D  2B   +   [  XB  
+   ,~   
  (VARIABLE-VALUE-CELL X . 14)
(VARIABLE-VALUE-CELL STR . 21)
GLOCCURS
(KNIL SKNLST KT ENTERF)                  

GLOKSTR? BINARY
        ú   -.          úZ   2B   +   Z   ,~   -,   +   Z   ,~   -,   +   ùZ  -,   +   ùZ  3B  |+   3B  ü+   3B  }+   3B  ý+   2B  ~+   [  [  3B   +   Z   ,~   [  Z  B  þ2B   +   z[  Z  B  2B   +   zZ   3B   +   ,<  ÿ"  [  Z  B  ,< "    Z   ,~   Z   ,~   2B +   ª[  3B   +   ©[  [  3B   +   ©[   [  [  2B   +   ©[  "Z  B 3B   +   ©[  ¤[  Z  XB  '+   Z   ,~   3B +   ®3B +   ®3B +   ®2B +   :[  ¨3B   +   9[  ®,<  Zp  -,   +   ³Z   +    Zp  ,<  ,<wÿ$ 2B   +   ·Z   +    [p  XBp  +   1Z   ,~   2B +   Ò[  03B   +   A[  ;Z  -,   +   AZ  ¼,<  [  ¾XB  ¿,\  [  @3B   +   Ñ[  A,<  Zp  -,   +   FZ   +    Zp  ,<  ,<wÿ/  @    +   NZ   -,   +   M[  ÉZ  B ,~   Z   ,~   2B   +   PZ   +    [p  XBp  +   ÃZ   ,~   2B +   Z[  Â3B   +   Y[  Ó[  2B   +   Y[  UZ  XB  W+   Z   ,~   3B +   \2B +   í[  X3B   +   ì[  \,<  Zp  -,   +   aZ   +    Zp  ,<  ,<wÿ/  @    +   iZ  K-,   +   h[  äZ  B ,~   Z   ,~   2B   +   kZ   +    [p  XBp  +   ÞZ   ,~   2B +   pZ  ÝB ,~   [  î3B   +   õ[  p[  2B   +   õ[  ñZ  XB  ó+   Z  ô,<  Z   D 2B   +   zZ   ,~   Z   ,~   RN<J	AB2 R!d"yMD(      (VARIABLE-VALUE-CELL STR . 235)
(VARIABLE-VALUE-CELL GLCAUTIOUSFLG . 44)
(VARIABLE-VALUE-CELL GLUSERSTRNAMES . 237)
A
AN
a
an
An
GLGETSTR
GLUNIT?
"The structure "
PRIN1
" is not currently defined.  Accepted."
TERPRI
CONS
GLOKSTR?
LIST
OBJECT
ATOMOBJECT
LISTOBJECT
RECORD
(VARIABLE-VALUE-CELL X . 204)
LISTOF
ALIST
PROPLIST
ATOM
GLATMSTR?
ASSOC
(BHC URET1 SKNLST SKLST KT SKA KNIL ENTERF) 8 È    ë  Ð h 8 @     E (    p    F 8  H     f 	0 ¾      ú  ø 8 ñ X k   i X Z 
p U 
( P 	p N ( ¼   · h 0 ( ' H "    `     @        

GLOPERAND BINARY
            -.              XB   3B   +      ,~   Z   2B   +   Z   ,~   Z  -,   +   Z  ,<  [  XB  ,\  ,<  ,<  ,   ,~   Z  
-,   +   Z  ,<  [  XB  ,\  B     XB     ,~   Z  ,<  [  XB  ,\  ,<  ,<   Z   ,<  ,<   (  ,~   DÁ    (VARIABLE-VALUE-CELL FIRST . 36)
(VARIABLE-VALUE-CELL EXPR . 42)
(VARIABLE-VALUE-CELL CONTEXT . 46)
GLSEPNXT
GLPARSNFLD
STRING
GLSEPINIT
GLPUSHEXPR
(KT SKA LIST2 SKSTP KNIL ENTER0)                      `        

GLOPERATOR? BINARY
               -.           Z   Z  ,   ,~       (VARIABLE-VALUE-CELL ATM . 3)
((_ := __ + - * / > < >= <= ^ _+ +_ _- -_ = ~= <> AND And and OR Or or __+ __- _+_) . 0)
(FMEMB ENTERF)  8      

GLORFN BINARY
             -.           Z   ,<  ,<  Z   ,   F  2B   +   Z  ,<  ,<  Z  F  2B   +   ,<  Z  ,<  Z  ,   ,<  [  Z  B  ,<  [  Z  B  ,\  ,   3B   +   [  Z  +   Z   ,   ,~   ),     (VARIABLE-VALUE-CELL LHS . 35)
(VARIABLE-VALUE-CELL RHS . 28)
OR
GLDOMSG
GLUSERSTROP
GLXTRTYPE
(ALIST2 EQUAL ALIST3 KNIL CONSNL ENTERF)                 	  X    H      

GLP BINARY
                -.          @    ,~   Z   2B   +   Z   XB   ,<  "  Z  ,<  ,<  $  B  Z  ,<  ,<  $  B     Z  	,~   &9p      (VARIABLE-VALUE-CELL FUN . 6)
(VARIABLE-VALUE-CELL GLLASTFNCOMPILED . 9)
(NIL VARIABLE-VALUE-CELL FN . 24)
"GLRESULTTYPE: "
PRIN1
GLRESULTTYPE
GETPROP
PRINT
GLCOMPILED
PRINTDEF
TERPRI
(KNIL ENTERF)    H      

GLPARSEXPR BINARY
      [    K    Ø-.            K@  M  (
,~      ÏZ   ,   XB  Z   2B   +   0Z   3B   +   GZ  -,   +   
+   GZ  B  P   ÐXB  B  Q3B   +   Z  
,<  [  XB  ,\  +   5Z  ,<  ,<  Ñ$  R3B   +   /Z   3B   +   Z  B  Ò,   1b  +      SZ   XB  +   Z  ,<  [  XB  ,\  ,<  Z   ,<  ,<   ,<  ÓZp  -,   +   (Zp  Z 7@  7   Z  2B  T+   ',<p  ,<   Z   F  ÔB  U3B   +   (Z   +   ¨Z   /  3B   +   +Z   +   «Z   H  ÕZ  ,   XB  ,Z   XB  +      V+   GB  Q3B   +   2+   5,<  ÖZ  .,<  ,<  W,   D  ×Z  3B   +   ÄZ  5B  ÒXB   ,   ,>  Ê,>  Z  ²B  ÒXB   ,      ,^  /  3"  +   ÄZ  ·Z  º,   3B   +   ÃZ  ¹,<  ,<  X$  R2B   +   Ä   S+   5Z  ÀZ  ¶,   XB  E+   Z  F3B   +   É   S+   GZ  -,~     &jRL@	E {JR !Bp    (VARIABLE-VALUE-CELL EXPR . 30)
(VARIABLE-VALUE-CELL CONTEXT . 57)
(VARIABLE-VALUE-CELL BOUNDPDUMMY . 73)
(VARIABLE-VALUE-CELL ADDISATYPE . 84)
(NIL VARIABLE-VALUE-CELL OPNDS . 147)
(NIL VARIABLE-VALUE-CELL OPERS . 142)
(NIL VARIABLE-VALUE-CELL FIRST . 137)
(NIL VARIABLE-VALUE-CELL LHSP . 124)
(NIL VARIABLE-VALUE-CELL RHSP . 125)
GLOPERAND
GLSEPINIT
GLSEPNXT
GLOPERATOR?
((IS Is is HAS Has has) . 0)
MEMB
GLPREC
GLREDUCE
ADDISATYPE
NOBIND
STKSCAN
RELSTK
GLPREDICATE
GLSEPCLR
GLPARSEXPR
"appears illegally or cannot be interpreted."
GLERROR
((_ ^ :=) . 0)
(EQP LIST2 BHC KNOB SKLA KT IUNBOX SKNA KNIL CONS ENTER0)   @    5    ½    (             <          È 8 À h ± h ,   ) p %   8        Æ X        

GLPARSFLD BINARY
    ½    3    »-.          3@  5  ,~   Z   2B   +   ¥Z   2B  6+      ¶XB   3B   +      ¶XB  Z  3B   +   3B   +   -,   +   ,<  7,<  ,   ,<  ,<  ·,   ,~   Z   3B   +   Z   XB  Z  ,<  [  XB  ,\  3B   +   3B   +   -,   +   ,<  7,<  ,   ,<  ,<   ,   ,~   Z   ,~   ,<  ,<  8$  ¸3B   +   ¢,<   "  9XB  	Z   XB  Z   ,~   Z  !3B  ¹+   ¥XB     ¶XB  ¢Z  %2B  ¹+   ­   ¶XB   3B   +   Z  $,<  ,<  Z   F  :XB  )   ¶XB  ¥+   ¥Z  «2B  º+   1,<   ,<   ,   ,~   ,<  ,<   $  ;,~   .1,! V 5'U@@     (VARIABLE-VALUE-CELL PREV . 91)
(VARIABLE-VALUE-CELL FIRST . 89)
(VARIABLE-VALUE-CELL EXPR . 40)
(VARIABLE-VALUE-CELL CONTEXT . 85)
(NIL VARIABLE-VALUE-CELL FIELD . 79)
(NIL VARIABLE-VALUE-CELL TMP . 67)
'
GLSEPNXT
QUOTE
ATOM
((THE The the) . 0)
MEMB
GLTHE
:
GLGETFIELD
*NIL*
GLIDNAME
(LIST2 SKNNM KT KNIL ENTERF)      h         ² p     °   )    p  0  (  (   H      

GLPARSNFLD BINARY
      -    %    «-.           %@  ¦  ,~   Z   3B  §+   2B  (+   £XB      ¨XB  3B   +   
,<   "  )XB   +   Z   3B   +   Z  
-,   +   Z  ,<  [  XB  ,\  B  ©   ¨XB  ,<   "  )XB  	+   Z  3B   +   Z  -,   +   Z  ,<  [  XB  ,\  ,<  ,<   Z   ,<  ,<   (  *XB  +   Z  ,<  ,<   ,   ,~   Z  2B  §+   "Z  B  ª,~   Z   B  +,~   ,<   "  ),~   z*$$@R@    (VARIABLE-VALUE-CELL FIRST . 33)
(VARIABLE-VALUE-CELL EXPR . 47)
(VARIABLE-VALUE-CELL CONTEXT . 51)
(NIL VARIABLE-VALUE-CELL TMP . 68)
(NIL VARIABLE-VALUE-CELL UOP . 62)
~
-
GLSEPNXT
GLPARSFLD
GLSEPINIT
GLPUSHEXPR
GLNOTFN
GLMINUSFN
(LIST2 KT SKLST SKA KNIL ENTER0)           `   P   H  H  8 	        

GLPLURAL BINARY
        °    $    /-.           $@  ¤   ,~   Z   ,<  ,<  ¦$  'XB   3B   +   Z  ,~   Z  B  §B  (XB   Z  	B  ¨XB   Z  ,<  ,<  )$  ©3B   +   [  Z  ,<  ,<  *$  ©2B   +   [  XB  Z  3B   +   Z  ª+   Z  +XB   +   !Z  ,<  ,<  «$  ©3B   +   Z  3B   +   Z  ,+   Z  ¬XB  +   !Z  3B   +    Z  -+    Z  ­XB  ,<  Z  D  .B  (B  ®,~   2&O'G     (VARIABLE-VALUE-CELL WORD . 15)
(NIL VARIABLE-VALUE-CELL TMP . 13)
(NIL VARIABLE-VALUE-CELL LST . 67)
(NIL VARIABLE-VALUE-CELL UCASE . 59)
(NIL VARIABLE-VALUE-CELL ENDING . 65)
PLURAL
GETPROP
UNPACK
DREVERSE
U-CASEP
((Y y) . 0)
MEMB
((A a E e O o U u) . 0)
((S E I) . 0)
((s e i) . 0)
((S s X x) . 0)
((S E) . 0)
((s e) . 0)
((S) . 0)
((s) . 0)
APPEND
PACK
(KNIL ENTERF)   0  @  `        

GLPOPFN BINARY
      Q    D    Î-.           D@  E  0,~   Z   XB   [  Z  B  HXB   -,   +   Z  2B  È+   Z  ,<  ,<  IZ  ,<  ,   ,<  Z  ,<  ,   ,<  ,<   &  ÉXB   Z   ,<  ,<  JZ  ,   ,<  [  Z  ,   ,<  ,<   &  ÉXB   +   ?Z  2B  Ê+   Z  ,<  ,<  K,<   &  ÉXB  Z  ,<  Z  ,<  ,<   &  ÉXB  +   ?Z  ,<  ,<  ËZ  ,   F  LXB   3B   +   ¤Z  ",~   Z  B  ÌXB   3B   +   -Z   ,<  Z  ,<  Z  ¥,<  ,   D  MXB  £3B   +   -+   £Z  (,<  ,<  ËZ  'F  ÍXB  +3B   +   ±+   £Z  -,<  ,<  IZ  
,<  ,   ,<  Z  ¤,<  ,   ,<  ,<   &  ÉXB  Z  ®,<  ,<  JZ  ±,   ,<  [  5Z  ,   ,<  ,<   &  ÉXB  ,<  NZ  ¾,<  Z  8,   ,<  [  ¿Z  ,   ,~   	2 ",PI& @       (VARIABLE-VALUE-CELL LHS . 113)
(VARIABLE-VALUE-CELL RHS . 116)
(NIL VARIABLE-VALUE-CELL RHSCODE . 102)
(NIL VARIABLE-VALUE-CELL RHSDES . 119)
(NIL VARIABLE-VALUE-CELL POPCODE . 129)
(NIL VARIABLE-VALUE-CELL GETCODE . 132)
(NIL VARIABLE-VALUE-CELL TMP . 95)
(NIL VARIABLE-VALUE-CELL STR . 82)
GLXTRTYPE
LISTOF
CDR
GLPUTFN
CAR
BOOLEAN
((NIL NIL) . 0)
-_
GLDOMSG
GLGETSTR
GLPOPFN
GLUSERSTROP
PROG1
(ALIST3 CONSNL KNIL ALIST2 KT LIST2 SKLST ENTERF)   B    "    ¾  ¬ p £ `  X   @ ½ 8  (         7 P + `            

GLPREC BINARY
               -.           @    ,~   Z   Z  7  [  Z  Z  1H  +   2D   +   XB   3B   +   [  ,~   Z  2B  +   Z"  ,~   Z"  ,~   A$0 (VARIABLE-VALUE-CELL OP . 21)
(NIL VARIABLE-VALUE-CELL TMP . 19)
(((_ . 1) (:= . 1) (__ . 1) (_+ . 2) (__+ . 2) (+_ . 2) (_+_ . 2) (_- . 2) (__- . 2) (-_ . 2) (= . 5) 
(~= . 5) (<> . 5) (AND . 4) (And . 4) (and . 4) (OR . 3) (Or . 3) (or . 3) (/ . 7) (+ . 6) (- . 6) (> 
. 5) (< . 5) (>= . 5) (<= . 5) (^ . 8)) . 0)
*
(ASZ KNIL ENTERF)    P           

GLPREDICATE BINARY
      0      +-.          @   (
,~   Z   2B   +   ,<   Z   ,<  ,<   & XB   +  Z   2B   +   ,< ,< Z   ,<  ,   D +  Z  ,<  ,< $ 3B   +   Z  ,<  [  XB  ,\  Z  ,<  ,< $ 3B   +   Z   XB   Z  ,<  [  XB  ,\  ,<   Z  ,<  ,<   & XB  +  Z  ,<  ,< $ 3B   +  Z  ,<  [  XB   ,\  Z  !,<  ,< $ 3B   +   ¨Z   XB  Z  ",<  [  &XB  ',\  Z  §B 3B   +   pZ  ¨,<  [  ªXB  «,\  Z  ,,<  [  -XB  .,\  XB   Z  ,<  ,<  ,< &  XB  2B   +  Z  0,<  Z  ¯,<  ,<  &  XB  ²3B   +   ÐZ   3B   +  Z  4-,   +   ¿Z  :,<  ,<   Z  5,<  Z  H !+  Z  »-,   +  Z  ¿Z  ,<  ,< ¡$ 3B   +  Z  A[  Z  -,   +  Z  Ä[  Z  ,<  Z  G,<  Z  >D "XB   3B   +   Í[  KZ  ,<  Z  =,<  Z  JH !+  Z  NB ¢3B   +   \,< #Z  I,<  Z  Ð3B   +   Y3B   +   Y-,   +   Y,< £,<  ,   ,   ,<  ,< $,   XB  7+  Z  TB ¤XB  Ì3B   +   â,<  Z  S,   ,<  ,< $,   XB  [+  ,< ,< %Z  \,<  ,< ¥Z  _,<  ,< &[  eZ  ^,  ,   D ,< ¦Z  æ,<  ,< ',< §Z  ã,<  ^"  ,   ,<  ,< $,   XB  á+  Z  ®XB   Z  é,<  ,<  ,< (&  XB  o3B   +   xZ  p,<  [  uXB  v,\  +  Z  ðB ¨XB  ]3B   +  Z  ö,<  [  úXB  û,\  Z  y,<  Z  q,   ,<  ,< $,   XB  ó+  ,< ,< )Z  x,<  ,< ©Z  ~,<  ,< *[ Z  ^,  ,   D Z  |,<  [ XB 	,\  ,< ¦Z ,<  ,< 'Z ,<  ,   ,<  ,< $,   XB Z  ¥3B   +  Z B ª,<  ,< $,   ,~   Z ,~   !'h  
 HdHFB 5BXJ!H3AH@	dBB         (VARIABLE-VALUE-CELL SOURCE . 278)
(VARIABLE-VALUE-CELL CONTEXT . 158)
(VARIABLE-VALUE-CELL VERBFLG . 6)
(VARIABLE-VALUE-CELL ADDISATYPE . 113)
(VARIABLE-VALUE-CELL EXPR . 275)
(NIL VARIABLE-VALUE-CELL NEWPRED . 297)
(NIL VARIABLE-VALUE-CELL SETNAME . 215)
(NIL VARIABLE-VALUE-CELL PROPERTY . 281)
(NIL VARIABLE-VALUE-CELL TMP . 250)
(NIL VARIABLE-VALUE-CELL NOTFLG . 288)
GLDOEXPR
GLPREDICATE
"The object to be tested was not found.  EXPR ="
GLERROR
((HAS Has has) . 0)
MEMB
((NO No no) . 0)
((IS Is is ARE Are are) . 0)
((NOT Not not) . 0)
GL-A-AN?
ISA
GLADJ
ISASELF
GLADDSTR
((SETQ PROG1) . 0)
GLFINDVARINCTX
GLCLASSP
GLCLASSMEMP
QUOTE
BOOLEAN
GLLISPISA
"IS A adjective"
"could not be found for"
"whose type is"
GLERR
IS
A
ADJ
GLLISPADJ
"The adjective"
"could not be found for"
"whose type is"
GLBUILDNOT
(LIST4 LIST ALIST ALIST2 ALIST3 SKNNM SKLST SKA LIST2 KT KNIL ENTERF) h   `     i    ÿ        
x      p »      x b 8 Ù H   
h & 8   p    ú P Þ 
X Ò 	H Ä X :  4 ( % x  X     H      

GLPRETTYPRINTCONST BINARY
        6    +    ´-.          +   ¬   ¬,<  -"  ­,<  ."  ­Z   ,<  Zp  -,   +   +   'Zp  ,<  @  ®   +   ¥,<   "  ¬,<   "  ¬,<  /,<   $  ­Z   ,<  ,<   $  ¯Z   ,<  ,<   $  ­Z   ,<  ,<   $  ¯,<  0,<   $  °Z  ,<  ,<  1$  ±,<  ,<   "  2,<  ,<   ,<   ,<   ,<   ,  ²,<  0,<   $  °Z  ,<  ,<  3$  ±,<  ,<   "  2,<  ,<   ,<   ,<   ,<   ,  ²,<  ³,<   $  ­,~   [p  XBp  +   /     ¬,<  4"  ­   ¬   ¬Z   ,~   aJZ2LÁ"|   (VARIABLE-VALUE-CELL LST . 9)
(VARIABLE-VALUE-CELL LAMBDAFONT . 27)
(VARIABLE-VALUE-CELL DEFAULTFONT . 35)
TERPRI
%[
PRIN1
GLISPCONSTANTS
(VARIABLE-VALUE-CELL X . 58)
"("
CHANGEFONT
3
SPACES
GLISPORIGCONSTVAL
GETPROP
POSITION
PRINTDEF
GLISPCONSTANTTYPE
"  )"
%]
(BHC KNIL SKNLST ENTERF)     0 % 8 # ( "   8  (    8  x  @            

GLPRETTYPRINTGLOBALS BINARY
        ­    #    ,-.          #   ¤   ¤,<  %"  ¥,<  &"  ¥Z   ,<  Zp  -,   +   +   Zp  ,<  @  ¦   +   ,<   "  ¤,<   "  ¤,<  ',<   $  ¥Z   ,<  ,<   $  §Z   ,<  ,<   $  ¥Z   ,<  ,<   $  §,<  (,<   $  ¨Z  ,<  ,<  )$  ©,<  ,<   "  *,<  ,<   ,<   ,<   ,<   ,  ª,<  +,<   $  ¥,~   [p  XBp  +   /     ¤,<  «"  ¥   ¤   ¤Z   ,~   aJZ2Ex     (VARIABLE-VALUE-CELL LST . 9)
(VARIABLE-VALUE-CELL LAMBDAFONT . 27)
(VARIABLE-VALUE-CELL DEFAULTFONT . 35)
TERPRI
%[
PRIN1
GLISPGLOBALS
(VARIABLE-VALUE-CELL X . 42)
"("
CHANGEFONT
3
SPACES
GLISPGLOBALVARTYPE
GETPROP
POSITION
PRINTDEF
"  )"
%]
(BHC KNIL SKNLST ENTERF)     0  8  (    8  x  @            

GLPRETTYPRINTSTRS BINARY
      H    ;    F-.          ;@  ¼  ,~      ½   ½,<  >"  ¾,<  ?"  ¿Z   2B   +      ½,<  @"  ¾   ½   ½Z   ,~   Z  ,<  [  XB  ,\  XB   ,<  ,<  À$  AXB   3B   +   ,<   "  ½,<   "  ½,<  Á,<   $  ¾Z   ,<  ,<   $  BZ  ,<  ,<   $  ¾Z   ,<  ,<   $  B,<   "  ½,<   "  ½,<  Â,<   ,<   &  CZ  ,<  ,<   "  Ã,<  ,<   ,<   ,<   ,<   ,  D[  ,<  Zp  -,   +   ¦+   ¸,<  @  Ä   +   ¶,<   "  ½,<   "  ½,<  Â,<   ,<   &  CZ   ,<  ,<   $  ¾,<  E,<   ,<   &  C[  ¬Z  ,<  ,<   "  Ã,<  ,<   ,<   ,<   ,<   ,  D,~   [p  [  XBp  +   ¤/  ,<  Å,<   $  ¾+   |~ ²4"HA+H 0   (VARIABLE-VALUE-CELL LST . 25)
(VARIABLE-VALUE-CELL LAMBDAFONT . 41)
(VARIABLE-VALUE-CELL DEFAULTFONT . 49)
(NIL VARIABLE-VALUE-CELL TMP . 71)
(NIL VARIABLE-VALUE-CELL OBJ . 45)
TERPRI
%[
PRIN1
GLISPOBJECTS
PRINT
%]
GLSTRUCTURE
GETPROP
"("
CHANGEFONT
3
TAB
POSITION
PRINTDEF
(VARIABLE-VALUE-CELL REST . 97)
10
"  )"
(BHC SKNLST KNIL ENTERF)  ¹    &    º ` µ P ´ 0 °   ® H , ( © 8 # ( "   `  8    H     0        

GLPROGN BINARY
              -.          @    (
,~   Z"   XB   Z   2B   +   	Z   B  ,<  Z   ,<  ,   ,~   ,<   Z   ,<  Z   F  XB   3B   +   Z  Z  ,   XB  [  Z  XB  +   ,<  ,<  Z  ,<  ,   D  Z   ,~   
 $    (VARIABLE-VALUE-CELL EXPR . 36)
(VARIABLE-VALUE-CELL CONTEXT . 19)
(VARIABLE-VALUE-CELL VALBUSY . 21)
(NIL VARIABLE-VALUE-CELL RESULT . 29)
(NIL VARIABLE-VALUE-CELL TMP . 30)
(NIL VARIABLE-VALUE-CELL TYPE . 32)
(NIL VARIABLE-VALUE-CELL GLSEPATOM . 0)
(NIL VARIABLE-VALUE-CELL GLSEPPTR . 7)
DREVERSE
GLDOEXPR
GLPROGN
"Illegal item appears in implicit PROGN.  EXPR ="
GLERROR
(CONS LIST2 KNIL ASZ ENTERF) p   @ 	     P 
  X    @      

GLPROPSTRFN BINARY
     o    Û    l-.           Û@  ^   ,~   Z   ,<  [  XB  ,\  XB   2B  `+   Z  -,   +   Z  ,<  [  XB  ,\  XB   Z"   XB   Z  
2B   +   Z   ,~   Z  -,   +   ÖZ  Z  -,   +   ÖZ  [  3B   +   ÖZ   ,<  Z  ,<  Z   F  àXB   3B   +   Ö,<  Z  2B  a+   #,<  áZ  Z  3B   +   !3B   +   !-,   +   !,<  b,<  ,   ,<  ,<  â,   +   Ò3B  `+   %2B  c+   DZ   2B  ã+   6Z  3B   +   -,<  d,<  Z  Z  ,   ,<  ,<  ä,<  â,   +   Ò,<  e,<  å,<  âZ  2B  c+   ²   ."  ."  ,   +   4   0."  ,   ,   B  f,   +   Ò3B  æ+   82B  g+   ;,<  çZ  ²,<  ,<  â,   +   Ò2B  h+   ?,<  è,<  âZ  ¸,<  ,   +   Ò,<  e,<  å,<  â   =."  ,   ,   B  f,   +   Ò3B  i+   F2B  é+   RZ   2B   +   IZ  ®2B  é+   JZ  j+   ÊZ  ê,<  ,<  âZ  )Z  3B   +   Q3B   +   Q-,   +   Q,<  b,<  ,   ,   +   ÒZ   D  kXB  ,<  Z  SB  fD  ëZ  T,~   Z  Ë,<  [  ÖXB  ×,\     À."  ,   XB  Y+   D	+l`o0Â|_y}
bF     (VARIABLE-VALUE-CELL IND . 41)
(VARIABLE-VALUE-CELL DES . 176)
(VARIABLE-VALUE-CELL DESLIST . 45)
(VARIABLE-VALUE-CELL FLG . 140)
(VARIABLE-VALUE-CELL GLLISPDIALECT . 74)
(NIL VARIABLE-VALUE-CELL DESIND . 143)
(NIL VARIABLE-VALUE-CELL TMP . 171)
(NIL VARIABLE-VALUE-CELL RECNAME . 77)
(NIL VARIABLE-VALUE-CELL N . 181)
RECORD
GLSTRFN
ALIST
GLGETASSOC
QUOTE
*GL*
OBJECT
INTERLISP
fetch
of
CAR
NTH
GLGENCODE
MACLISP
FRANZLISP
CXR
PSL
GetV
PROPLIST
ATOMOBJECT
GETPROP
LISTGET
GLSTRVAL
RPLACA
(ALIST3 MKN LIST4 ALIST2 LIST3 LIST2 SKNNM KT SKLST KNIL ASZ SKA ENTERF)  
  C P   0 Â H ²    -    D ` +    ? 0 #    Ñ    	x     Î h      
0 Í x ( X  H  `   H   (        

GLPSLTRANSFM BINARY
      è    Ú    å-.           Ú@  [  ,~   Z   -,   +   Z  ,~   Z  Z  \,   3B   +   Z  ,<  [  [  Z  ,<  [  	Z  ,   XB  +   Z  Z   ,   3B   +   Z  ,<  [  Z  ,<  [  [  [  Z  ,<  [  [  Z  ,   XB  +   Z  2B  Ü+   ,<  ][  Z  ,<  Z  Ý[  [  ,   ,   XB  Z  Z  ^,   XB   Z  Z  Þ7  [  Z  Z  1H  +   ¥2D   +   "XB   3B   +   *[  ¥Z  [   ,   XB  (+   ÕZ  )2B  _+   0[  *2B   +   0Z  «,<  ,<   ,   XB  -+   ÕZ  /2B  ß+   8[  0[  2B   +   8Z  ±,<  [  ³Z  ,<  ,<   ,   XB  ´+   ÕZ  72B  `+   DZ  8,<  ,<  à[  ¹2B   +   ½Z   +   Â[  ;[  2B   +   A[  ½Z  +   ÂZ  Ý[  ¿,   ,   XB  Á+   ÕZ  C2B  a+   SZ  D,<  ,<  á$  bZ  Å,<  ,<  â$  cXB  '[  ÉZ  2B   +   ÎZ  J,<  ,<   $  ã+   ÕZ  L,<  ,<   [  ÎZ  ,   ,   D  ã+   ÕZ  Ç2B  d+   ÕZ  SB  äZ   3B   +   Ù,<  eZ  Ô,<  ,   ,~   Z  ×,~   "  bRHDa30FZ0     (VARIABLE-VALUE-CELL X . 179)
(NIL VARIABLE-VALUE-CELL TMP . 160)
(NIL VARIABLE-VALUE-CELL NOTFLG . 171)
((push PUSH) . 0)
APPLY*
APPLY
LIST
((NLISTP BOUNDP GEQ LEQ IGEQ ILEQ) . 0)
(((MEMB MEMQ) (FMEMB MEMQ) (FASSOC ASSOC) (LITATOM IDP) (GETPROP GET) (GETPROPLIST PROP) (PUTPROP PUT)
 (LISTP PAIRP) (NLISTP PAIRP) (NEQ NE) (IGREATERP GREATERP) (IGEQ LESSP) (GEQ LESSP) (ILESSP LESSP) (
ILEQ GREATERP) (LEQ GREATERP) (IPLUS PLUS) (IDIFFERENCE DIFFERENCE) (ITIMES TIMES) (IQUOTIENT QUOTIENT
) (* CommentOutCode) (MAPCONC MAPCAN) (DECLARE CommentOutCode) (NCHARS FlatSize2) (DREVERSE REVERSIP) 
(STREQUAL String!=) (ALPHORDER String!<!=) (GLSTRGREATERP String!>) (GLSTRGEP String!>!=) (GLSTRLESSP 
String!<) (EQP EQN) (LAST LASTPAIR) (NTH PNth) (NCONC1 ACONC) (U-CASE String!-UpCase) (DSUBST SUBSTIP)
 (BOUNDP UNBOUNDP) (KWOTE MKQUOTE) (UNPACK EXPLODE) (PACK IMPLODE)) . 0)
RETURN
APPEND
ERROR
0
SELECTQ
CASEQ
RPLACA
2
NLEFT
RPLACD
PROG
GLTRANSPROG
NOT
(CONSNL ALIST2 KT LIST3 LIST2 CONS ALIST4 ALIST3 KNIL FMEMB SKNLST ENTERF)  Ò    R    Ð    ·    Ù x   0 © `   x   8  P   
p N 	@ ¿ X ¼ p ³ p - p ¥           x    H      

GLPURE BINARY
             -.           Z   Z  ,   ,~       (VARIABLE-VALUE-CELL X . 3)
((CAR CDR CXR CAAR CADR CDAR CDDR ADD1 SUB1 CADDR CADDDR) . 0)
(FMEMB ENTERF)         

GLPUSHEXPR BINARY
                -.            @    ,~   Z"   XB   Z   ,<  Z   ,<  Z   F  ,~      (VARIABLE-VALUE-CELL EXPR . 0)
(VARIABLE-VALUE-CELL START . 8)
(VARIABLE-VALUE-CELL CONTEXT . 10)
(VARIABLE-VALUE-CELL VALBUSY . 12)
(NIL VARIABLE-VALUE-CELL GLSEPATOM . 0)
(NIL VARIABLE-VALUE-CELL GLSEPPTR . 7)
GLDOEXPR
(ASZ ENTERF)  @      

GLPUSHFN BINARY
        n    [    k-.          [@  Ü  (
,~   Z   XB   [  Z  B  _XB   2B  ß+   Z   Z$  ,   3B   +   ,<  `Z  ,<  ,   XB   +   UZ  -,   +   [  Z  2B  ß+   ,<  àZ  
,<  Z  ,   XB  +   U,<  aZ  ,<  Z  ,   XB  +   U3B  á+   2B  b+   ,<  aZ  ,<  Z  ,   XB  +   U2B  â+   !,<  cZ  ,<  Z  ,   XB  +   U2B   +   ®,<  ãZ  ,<  Z  ,<  ,   XB   Z  £-,   +   U[  ¢Z  3B   +   UZ  ¥,<  ,<   ,<  d[  'Z  ,   ,<  Z   H  ä+   U-,   +   ¶Z  ,<  ,<  e$  å3B   +   ¶,<  ãZ  +,<  Z  ),<  ,   XB  %+   UZ  ,<  Z  3,<  ,<  f&  æXB   3B   +   <Z  ¹,~   Z  ¶,<  ,<  gZ  ·,   F  çXB  ;3B   +   A+   ;Z  <,<  ,<  hZ  ½,   F  çXB  ?3B   +   GZ  DXB  µ+   UZ  ¯B  èXB   3B   +   ÏZ  A,<  Z  H,<  ,   ,<  Z  ÂD  iXB  Å3B   +   Ï+   ;Z  É,<  ,<  gZ  ÌF  éXB  Í3B   +   T+   ;Z   ,~   Z  Ï,<  Z  FB  j,<  Z  G,<  ,   ,<  ,<   &  ê,~   	Ap,&`CII	J0 @    (VARIABLE-VALUE-CELL LHS . 170)
(VARIABLE-VALUE-CELL RHS . 162)
(VARIABLE-VALUE-CELL CONTEXT . 90)
(NIL VARIABLE-VALUE-CELL LHSCODE . 104)
(NIL VARIABLE-VALUE-CELL LHSDES . 175)
(NIL VARIABLE-VALUE-CELL NCCODE . 172)
(NIL VARIABLE-VALUE-CELL TMP . 164)
(NIL VARIABLE-VALUE-CELL STR . 149)
GLXTRTYPE
INTEGER
ADD1
IPLUS
PLUS
NUMBER
REAL
BOOLEAN
OR
CONS
LISTOF
GLADDSTR
((LIST CONS LISTOF) . 0)
MEMB
PUSH
GLUNITOP
+_
GLDOMSG
+
GLGETSTR
GLPUSHFN
GLUSERSTROP
GLGENCODE
GLPUTFN
(KT CONSNL SKLST ALIST2 SKA LIST3 ALIST3 SKNI LIST2 KNIL EQP ASZ ENTERF)   Ú    D p   x   P   p   ` ¥      @  0   `    Ì @   
P Ó 	p É X À 0 ² 0 )       	           

GLPUTARITH BINARY
        Ý    Ï    Ú-.           Ï@  Ð  (
,~   Z   XB   Z  XB   Z  Z  S7  [  Z  Z  1H  +   
2D   +   XB   2B   +   Z   ,~   Z  3B  Ó+   3B  T+   3B  Ô+   2B  U+   [  
Z  ,<  Z   ,   XB   [  Z  XB   +   D3B  Õ+   3B  V+   3B  Ö+   3B  W+   3B  ×+   3B  X+   3B  Ø+   2B  Y+   ;[  [  Z  -,   +   §[  Z  ,<  Z  ,<  [  [  Z  ,   XB  [  #Z  XB  +   D[  ¥Z  -,   +   DZ  3B  V+   .3B  X+   .3B  W+   .2B  Y+   4,<  [  §Z  ,<  Z  ",   XB  %[  ®[  Z  XB  ¦+   D[   Z  ,<  Z  0,<  [  ±Z  ,   XB  1[  ¶[  Z  XB  3+   D2B  Ù+   D[  ¸[  Z  Z$  ,   3B   +   D[  4Z  ,<  Z  µ,   XB  8[  <Z  XB  :Z  Ã3B   +   ÎZ  B3B   +   ÎZ  D,<  [  Z  ,   ,<  Z  Å,<  [  AZ  ,   ,<  ,<   &  Z,~   Z   ,~   
#~ p@~            (VARIABLE-VALUE-CELL LHS . 144)
(VARIABLE-VALUE-CELL RHS . 150)
(NIL VARIABLE-VALUE-CELL LHSC . 133)
(NIL VARIABLE-VALUE-CELL OP . 83)
(NIL VARIABLE-VALUE-CELL TMP . 127)
(NIL VARIABLE-VALUE-CELL NEWLHS . 142)
(NIL VARIABLE-VALUE-CELL NEWRHS . 148)
(((PLUS DIFFERENCE) (MINUS MINUS) (DIFFERENCE PLUS) (TIMES QUOTIENT) (QUOTIENT TIMES) (IPLUS 
IDIFFERENCE) (IMINUS IMINUS) (IDIFFERENCE IPLUS) (ITIMES IQUOTIENT) (IQUOTIENT ITIMES) (ADD1 SUB1) (
SUB1 ADD1) (EXPT SQRT)) . 0)
ADD1
SUB1
MINUS
IMINUS
PLUS
DIFFERENCE
TIMES
QUOTIENT
IPLUS
IDIFFERENCE
ITIMES
IQUOTIENT
EXPT
GLPUTFN
(EQUAL ASZ ALIST3 SKNM ALIST2 KNIL ENTERF)   ?    ¾    ¸  ¥    ©    	P J (     Ï 	` G X ¿ H         

GLPUTFN BINARY
   V   ¸   P-.          ¸@ :  (
,~   Z   XB   -,   +   Z  ,<  ,< ¼Z   ,   F =2B   +  8Z  ,<  ,< ¼Z  F ½2B   +  8[  	Z  2B   +   [  Z  3B   +   Z  ,<  [  Z  ,   ,<  ,< ¼Z  F ½2B   +  8Z  ,<  Z  D >,~   Z  XB   2B ¾+   0Z   3B   +   +[  Z  B ?3B   +   +,< ¿  @XB   ,<  [  Z  ,   ,   ,<  ,< À,< ¾,< AZ  ,<  ,<  [   Z  ,<  Z  F Á,   ,   ,   ,   +   /,< ¾,< A[  &Z  ,<  Z  §,   ,   XB   +  32B B+   ÆZ  3B   +   Á[  ,Z  B ?3B   +   Á,< ¿  @XB  ¤,<  [  ²Z  ,   ,   ,<  ,< À,< B,< ÂZ  6,<  ,<  [  7Z  ,<  Z  ­F Á,   ,   ,   ,   +   Å,< B,< Â[  ¼Z  ,<  Z  >,   ,   XB  /+  3Z  Z C7  [  Z  Z  1H  +   Ë2D   +   HXB   3B   +   æZ  13B   +   `[  ÂZ  B ?3B   +   `,< ¿  @XB  ;,<  [  Ë,<  [  ÎZ  ,   ,   ,   ,<  ,< À,< ¾,< AZ  R,<  ,< ¾,<  ,   ,<  Z  T,<  Z  DF Á,   ,   ,   ,   +   å,< ¾,< A[  S,<  [  ÛZ  ,   ,<  Z  Ü,   ,   XB  Å+  3Z  Æ2B Ã+   o,< Ã,< D[  bZ  ,<  [  i[  Z  ,<  Z  d,   ,   XB  å+  32B Ä+   v,< E[  êZ  ,<  [  ð[  Z  ,<  Z  ì,   XB  n+  3,<  ,< Å$ F3B   +   þ,< Æ[  rZ  ,<  [  y[  Z  ,<  Z  t,   XB  u+  3Z  æ2B G+  ,< Ç[  úZ  ,<  [ [  Z  ,<  Z  ü,   XB  ý+  32B H+  ,< È[ Z  ,<  Z ,<  [ [  Z  ,   XB +  32B I+  ,< É[ 
Z  ,<  Z 	,   XB +  32B J+  ,< Ê[ Z  ,<  ,< K[ [  [  Z  ,<  ,< ËZ ^,  ,   XB +  3Z  ,<  Z ,<  ,< L& ÌXB  a3B   +   Z ,~   Z ,<  ,< ¼Z ,   F =XB 3B   +  ¥+  Z  ,<  ,< ¼Z "F ½XB £3B   +  *+  Z ¥,<  Z 'D MXB (3B   +  .+  ,< Í,< NZ *,<  ,< ÎZ +,<  ,   D O,~   Z B Ï,<  [ /Z  2B   +  ·[ °Z  ,   ,~   )(D
D2.@!`Ë p8.  ``l \ < <Cb<Ä         (VARIABLE-VALUE-CELL LHS . 361)
(VARIABLE-VALUE-CELL RHS . 365)
(VARIABLE-VALUE-CELL OPTFLG . 154)
(NIL VARIABLE-VALUE-CELL LHSD . 299)
(NIL VARIABLE-VALUE-CELL LNAME . 253)
(NIL VARIABLE-VALUE-CELL TMP . 344)
(NIL VARIABLE-VALUE-CELL RESULT . 358)
(NIL VARIABLE-VALUE-CELL TMPVAR . 177)
_
GLDOMSG
GLUSERSTROP
GLDOVARSETQ
CAR
GLEXPENSIVE?
PROG
GLMKVAR
RETURN
RPLACA
SUBST
CDR
RPLACD
(((CADR . CDR) (CADDR . CDDR) (CADDDR . CDDDR)) . 0)
CXR
RPLACX
GetV
PutV
((GET GETPROP) . 0)
MEMB
PUTPROP
LISTGET
LISTPUT
GLGETASSOC
PUTASSOC
EVAL
SET
fetch
replace
of
with
PUT
GLUNITOP
GLPUTARITH
GLPUTFN
"Illegal assignment.  LHS ="
"RHS ="
GLERROR
GLGENCODE
(LIST4 ALIST ALIST4 LIST2 ALIST3 ALIST2 KNIL CONSNL SKA ENTERF)  (   (   H ` õ `   8    å   Þ X Á   / 0 ©   ¸ h f @ ß p Ö 
` F  À  ¯ ( * (    ¶ X© P  Q 	h M 	8 5 (  @    H 	   £ 
p ¹ 0            

GLPUTPROPS BINARY
                -.          @    ,~   Z   2B   +   Z   ,~   Z  ,<  [  XB  ,\  XB   ,<  Z   ,<  Z   F  XB   3B   +   Z   ,<  ,<  ,<  Z  3B   +   3B   +   -,   +   ,<  ,<  ,   ,<  Z  ,<  ,   B  ,   D  +     IÊ@X   (VARIABLE-VALUE-CELL PROPLIS . 14)
(VARIABLE-VALUE-CELL PREVLST . 20)
(VARIABLE-VALUE-CELL PAIRLIST . 18)
(VARIABLE-VALUE-CELL PROGG . 25)
(NIL VARIABLE-VALUE-CELL TMP . 29)
(NIL VARIABLE-VALUE-CELL TMPCODE . 40)
GLBUILDSTR
PUTPROP
ATOMNAME
QUOTE
GLGENCODE
NCONC
(CONSNL LIST4 LIST2 SKNNM KT KNIL ENTERF)                        H   H      

GLPUTUPFN BINARY
       =    1    ;-.          1@  ³  ,~   Z   ,<  ,<  ´$  5XB   2B   +   
,<  µZ  ,<  ,   ,<  ,<  6$  ¶Z   -,   +   !,<  7Zp  -,   +   Zp  Z 7@  7   Z  2B  ·+   ,<p  ,<   Z   F  8B  ¸3B   +   Z   +   Z   /  3B   +   !Z  
,<  Z   D  5XB   3B   +   ![  ,<  [  Z  ,<  [  Z  ,   ,<  Z   F  9,~   Z  -,   +   ­Z  !Z  2B  ¹+   ­Z  ¢[  Z  -,   +   ­[  ,<  Z  ¤[  Z  ,<  [  (Z  ,   ,<  Z  F  9,~   ,<  µ,<  :Z  *,<  ,   D  º,~   325H ÄB       (VARIABLE-VALUE-CELL OP . 14)
(VARIABLE-VALUE-CELL LHS . 93)
(VARIABLE-VALUE-CELL RHS . 88)
(VARIABLE-VALUE-CELL BOUNDPDUMMY . 36)
(VARIABLE-VALUE-CELL GLPROGLST . 49)
(NIL VARIABLE-VALUE-CELL TMP . 56)
(NIL VARIABLE-VALUE-CELL TMPOP . 78)
(((__ . _) (__+ . _+) (__- . _-) (_+_ . +_)) . 0)
ASSOC
GLPUTUPFN
" Illegal operator."
ERROR
GLPROGLST
NOBIND
STKSCAN
RELSTK
GLREDUCEOP
PROG1
"A self-assignment __ operator is used improperly.  LHS ="
GLERROR
(SKLST ALIST2 BHC KT KNOB SKLA SKA LIST2 KNIL ENTERF)  ¢    , x   p   X       X   p     °    0  h  (        

GLREDUCE BINARY
     °    (    /-.           (@  )  ,~   Z   ,<  [  XB  ,\  XB   Z   ,<  [  XB  ,\  XB   ,<  ,<  *$  ª3B   +   Z  ,<  Z  ,<  [  XB  ,\  ,<  Z  F  ++   ¥Z  Z  «,   3B   +   Z  ,<  Z  ,<  [  XB  ,\  ,<  Z  F  ,+   ¥Z  2B  ¬+   Z  B  -+   ¥2B  ­+   Z  B  .+   ¥,<  Z  ,<  [  XB   ,\  Z  ,<  Z  ,   B  ®,<  ,<   ,   Z   ,   XB  ¥Z   ,~     7X     (VARIABLE-VALUE-CELL OPNDS . 77)
(VARIABLE-VALUE-CELL OPERS . 15)
(NIL VARIABLE-VALUE-CELL RHS . 69)
(NIL VARIABLE-VALUE-CELL OPER . 50)
((_ := _+ +_ _- -_ = ~= <> AND And and OR Or or __+ __ _+_ __-) . 0)
MEMB
GLREDUCEOP
((+ - * / > < >= <= ^) . 0)
GLREDUCEARITH
MINUS
GLMINUSFN
~
GLNOTFN
GLGENCODE
(CONS LIST2 ALIST3 FMEMB KNIL ENTER0)   '    &    $        ( X  8      

GLREDUCEARITH BINARY
       ó   Ò   ì-.          Ò@ T  8,~   Z ×XB   Z XXB   Z ØXB   Z YXB   [   Z  B ÙXB   [   Z  B ÙXB   Z  2B Z+   Z  2B Z+   Z   Z  7  [  Z  Z  1H  +   2D   +   XB   2B   +   !Z  ,<  Z  D Ú3B   +   >Z  ,<  Z  D Ú3B   +   >Z  Z  7  [  Z  Z  1H  +   2D   +   XB  3B   +   >Z  -,   +   ¨Z  	-,   +   ¨[  ,<  Z  !,<  Z  ¢,   B [B Û+   8[  $2B \+   ®Z  &Z$  ,   3B   +   ®,< ÜZ  %,   +   ·[  ¨2B ]+   ´Z  *Z$  ,   3B   +   ´,< ÝZ  -,   +   ·[  ®,<  Z  3,<  Z  0,   B [,<  [  ´,<  Z  D Ú3B   +   ¼Z ^+   =Z  ,   ,~   Z  ¼2B Þ+   ÔZ  3B Þ+   Ã,< _Z ß,   D `,~   Z  Z à7  [  Z  Z  1H  +   È2D   +   EXB  ¸3B   +   Q[  ÈZ  ,<  Z  µ,<  Z  ¶,   B [,<  [  J[  Z  ,   ,~   ,< _Z  Ã,<  ,< a,   D `,~   -,   +  Z  >2B á+  Z  ¿-,   +   óZ  W2B á+   ó[  ÕZ  [  ØZ  ,   2B   +   â,< _,< b[  ZZ  ,<  [  [Z  ,   D `,~   Z  ÑZ â7  [  Z  Z  1H  +   ç2D   +   dXB  Î3B   +   ï[  çZ  ,<  Z  Ë,<  Z  Ì,   B [,<  Z  Þ,<  ,   ,~   ,< _,< cZ  â,<  ,< ã,   D `,~   [  íZ  Z  `,   3B   +  Z  ðZ d,   3B   +  Z  ö2B ä+   ûZ e+  2B å+   ýZ f+  2B æ7   7   +  Z  ô2B g+  Z Ú+  Z ç,<  Z  ë,<  Z  ê,   B [,<  Z  ó,<  ,   ,~   ,< _Z h,   D `,~   Z  ÿ-,   +   Z 2B á+   [ Z  Z ,   3B   +   Z  yZ è,   3B   +   Z 2B ä+  Z e+  2B i7   7   +  Z 2B g+  Z Ú+  Z ç,<  Z ,<  Z ,   B [,<  Z ,<  ,   ,~   Z ,<  Z ,<  Z ,   F éXB  i3B   +  &Z £,~   Z  ,<  Z !,<  Z "F jXB %3B   +  ++  %Z B êXB )3B   +  ¶Z ',<  Z &,<  Z ,,<  ,   ,<  Z (,<  Z B ê2B   +  5Z ²,   F _,~   Z ­Z  7  [  Z  Z  1H  +  »2D   +  8XB ¯3B   +  MZ +3B   +  ÃZ ´3B   +  Ã,< _,< kZ =,<  ,<  ,   D `[ »,<  Z ®,<  Z ±,   B [,<  [ Ã,<  Z  ¹D Ú3B   +  ËZ ^+  LZ ë,   ,~   ,< _Z ¶,<  Z Ä,<  Z Å,<  ,   B lZ   ,~   *$(P
¤l0d.tAHRå`$
  e%ÿ`AQ0R|_  HI!<@            (VARIABLE-VALUE-CELL OP . 411)
(VARIABLE-VALUE-CELL LHS . 413)
(VARIABLE-VALUE-CELL RHS . 415)
(NIL VARIABLE-VALUE-CELL TMP . 399)
(NIL VARIABLE-VALUE-CELL OPLIST . 366)
(NIL VARIABLE-VALUE-CELL IOPLIST . 29)
(NIL VARIABLE-VALUE-CELL PREDLIST . 401)
(NIL VARIABLE-VALUE-CELL NUMBERTYPES . 49)
(NIL VARIABLE-VALUE-CELL LHSTP . 386)
(NIL VARIABLE-VALUE-CELL RHSTP . 381)
(((+ . PLUS) (- . DIFFERENCE) (* . TIMES) (/ . QUOTIENT) (> . GREATERP) (< . LESSP) (>= . GEQ) (<= . 
LEQ) (^ . EXPT)) . 0)
(((+ . IPLUS) (- . IDIFFERENCE) (* . ITIMES) (/ . IQUOTIENT) (> . IGREATERP) (< . ILESSP) (>= . IGEQ) 
(<= . ILEQ)) . 0)
((GREATERP LESSP GEQ LEQ IGREATERP ILESSP IGEQ ILEQ) . 0)
((INTEGER REAL NUMBER) . 0)
GLXTRTYPE
INTEGER
MEMB
GLGENCODE
EVAL
IPLUS
ADD1
IDIFFERENCE
SUB1
BOOLEAN
STRING
GLREDUCEARITH
"operation on string and non-string"
GLERROR
(((+ CONCAT STRING) (> GLSTRGREATERP BOOLEAN) (>= GLSTRGEP BOOLEAN) (< GLSTRLESSP BOOLEAN) (<= 
ALPHORDER BOOLEAN)) . 0)
"is an illegal operation for strings."
LISTOF
"Operations on lists of different types"
(((+ UNION) (- LDIFFERENCE) (* INTERSECTION)) . 0)
"Illegal operation"
"on lists."
((+ - >=) . 0)
+
CONS
-
REMOVE
>=
ATOM
MEMBER
"Illegal operation on list."
((+ <=) . 0)
<=
GLDOMSG
GLUSERSTROP
GLXTRTYPEC
"Warning: Arithmetic operation on non-numeric arguments of types:"
NUMBER
ERROR
(LIST4 KT FMEMB LIST3 EQUAL SKLST LIST2 CONSNL ALIST2 EQP ASZ ALIST3 SKNM KNIL ENTERF)     x ÿ       8 s    ` ]     Õ   ±   x T   £   C   M ` Q ` ´ h     ,    ± 8   p X m   N   §    $ (   (Ê  ¾ P» H­ (% p    ö  ç X J 	 » ( ¬   (  H        

GLREDUCEOP BINARY
        §         &-.            @  ¡  ,~   Z   Z  ",   3B   +   	Z   ,<  Z   ,<  ,<   &  ¢,~   Z  Z  #7  [  Z  Z  1H  +   2D   +   XB   3B   +   [  ,<  Z  ,<  Z  ,<   "  ,   ,~   Z  	,<  ,<  £$  $3B   +   Z  ,<  Z  ,<  Z  F  ¤,~   ,<  %Z  ,<  Z  ,<  Z  ,<  ,   B  ¥Z   ,~   HP(      (VARIABLE-VALUE-CELL OP . 54)
(VARIABLE-VALUE-CELL LHS . 56)
(VARIABLE-VALUE-CELL RHS . 58)
(NIL VARIABLE-VALUE-CELL TMP . 31)
((_ :=) . 0)
GLPUTFN
(((_+ . GLNCONCFN) (+_ . GLPUSHFN) (_- . GLREMOVEFN) (-_ . GLPOPFN) (= . GLEQUALFN) (~= . GLNEQUALFN) 
(<> . GLNEQUALFN) (AND . GLANDFN) (And . GLANDFN) (and . GLANDFN) (OR . GLORFN) (Or . GLORFN) (or . 
GLORFN)) . 0)
((__ __+ __- _+_) . 0)
MEMB
GLPUTUPFN
GLREDUCEOP
ERROR
(LIST4 EVCC KNIL FMEMB ENTERF) p   @      x              

GLREMOVEFN BINARY
        W    Æ    Ô-.           Æ@  Ç  (
,~   Z   XB   [  Z  B  JXB   2B  Ê+   Z   Z$  ,   3B   +   ,<  KZ  ,<  ,   XB   +   A,<  ËZ  
,<  Z  ,   XB  +   A3B  L+   2B  Ì+   ,<  MZ  ,<  Z  ,   XB  +   A2B  Í+   ,<  NZ  ,<  ,<  ÎZ  ,   ,   XB  +   A3B   +   -,   +   ¢Z  2B  O+   ¢,<  ÏZ  ,<  Z  ,<  ,   XB  +   AZ  ,<  Z  ,<  ,<  Ï&  PXB   3B   +   (Z  ¥,~   Z  ¢,<  ,<  ÐZ  £,   F  QXB  '3B   +   -+   'Z  (,<  ,<  ÑZ  ©,   F  QXB  +3B   +   3Z  0XB  ¡+   AZ  B  RXB   3B   +   »Z  -,<  Z  4,<  ,   ,<  Z  ®D  ÒXB  ±3B   +   »+   'Z  µ,<  ,<  ÐZ  ¸F  SXB  ¹3B   +   @+   'Z   ,~   Z  »,<  B  Ó,<  Z  3,<  ,   ,<  ,<   &  T,~   Ar
\2	)&     (VARIABLE-VALUE-CELL LHS . 130)
(VARIABLE-VALUE-CELL RHS . 122)
(NIL VARIABLE-VALUE-CELL LHSCODE . 64)
(NIL VARIABLE-VALUE-CELL LHSDES . 134)
(NIL VARIABLE-VALUE-CELL NCCODE . 100)
(NIL VARIABLE-VALUE-CELL TMP . 124)
(NIL VARIABLE-VALUE-CELL STR . 109)
GLXTRTYPE
INTEGER
SUB1
IDIFFERENCE
NUMBER
REAL
DIFFERENCE
BOOLEAN
AND
NOT
LISTOF
REMOVE
GLUNITOP
_-
GLDOMSG
-
GLGETSTR
GLREMOVEFN
GLUSERSTROP
GLGENCODE
GLPUTFN
(KT CONSNL LIST3 SKLST ALIST2 ALIST3 LIST2 KNIL EQP ASZ ENTERF)  `     +    "             P     E      A x ; X ± H ' @     	           

GLRESGLOBAL BINARY
       3    ¨    ±-.          0 ¨Z   -,   +   Z   ,~   Z  Z  ,<  ,<  «$  ,3B   +   Z  [  Z  B  ¬3B   +   Z  [  [  2B   +   Z   ,<  ,<  -Z  [  Z  ,<  Z   D  ­XB   F  .Z  ,<  [  XB  ,\  ,~   ,<  ®,<  /Z  ,   D  ¯Z  ,<  [  XB  ,\  ,~   Z  Z  ,<  ,<  0$  ,3B   +   (Z  [  ,<  ,<   ,<   Z   ,<  ,<   *  °XB   Z  ,<  ,<  1F  .Z  ,<  [  ¥XB  ¦,\  ,~   EA@d h0    (VARIABLE-VALUE-CELL GLEXPR . 78)
(VARIABLE-VALUE-CELL GLAMBDAFN . 71)
(VARIABLE-VALUE-CELL GLTYPESUBS . 33)
(VARIABLE-VALUE-CELL RESULTTYPE . 35)
(VARIABLE-VALUE-CELL GLTOPCTX . 66)
(VARIABLE-VALUE-CELL GLGLOBALVARS . 70)
((RESULT Result result) . 0)
MEMB
GLOKSTR?
GLRESULTTYPE
GLSUBSTTYPE
PUTPROP
GLCOMP
"Bad RESULT structure declaration:"
GLERROR
((GLOBAL Global global) . 0)
GLDECL
GLGLOBALS
(ALIST2 KNIL SKNLST ENTER0)       #  ! h  (   @    0      

GLRESULTTYPE BINARY
    ¼    °    º-.          °@  2   ,~   Z   ,<  ,<  4$  ´XB   3B   +   Z  ,~   Z  ,<  ,<  5$  ´XB   3B   +   ,<  Z  ,<  Z   ,<   "  ,   ,~   Z  B  µXB  3B   +   ,<  Z  D  6,~   Z  B  ¶XB   -,   +   Z  Z  7,   2B   +   Z   ,~   [  [  XB  Z  3B   +   Z  -,   +   +   Z   2B  ·+   "Z  Z  3B  8+   ¥Z   Z  ,<  ,<  ¸$  93B   +   ¨Z  ",<  [  ¥XB  ¦,\  +   Z  'Z  ,<  ,<  ¹$  93B   +   Z  ¨[  Z  XB   B  :3B   +   Z  ­,~   2@	$RP#!       (VARIABLE-VALUE-CELL ATM . 39)
(VARIABLE-VALUE-CELL ARGTYPES . 36)
(VARIABLE-VALUE-CELL GLLISPDIALECT . 61)
(NIL VARIABLE-VALUE-CELL TYPE . 13)
(NIL VARIABLE-VALUE-CELL FNDEF . 88)
(NIL VARIABLE-VALUE-CELL STR . 95)
(NIL VARIABLE-VALUE-CELL TMP . 32)
GLRESULTTYPE
GETPROP
GLRESULTTYPEFN
GLANYCARCDR?
GLCARCDRRESULTTYPE
GLGETDB
((LAMBDA GLAMBDA) . 0)
INTERLISP
*
((GLOBAL Global global) . 0)
MEMB
((RESULT Result result) . 0)
GLOKSTR?
(SKNLST FMEMB SKLST EVCC KNIL ENTERF)                   ¯ @ ¥ H    0        

GLSENDB BINARY
               -.            @    ,~   Z   B  XB   2B   +   ,<  Z  ,<  ,<  ,   B  Z  ,<  Z   ,<  Z  Z   ,   ,<  Z   H  XB   3B  +   Z  ,~   ,<  Z  ,<  ,<  Z  ,<  ,<  Z  ,<  ,<  ^"  ,   B  Z   ,~   LPä    (VARIABLE-VALUE-CELL OBJ . 36)
(VARIABLE-VALUE-CELL SELECTOR . 33)
(VARIABLE-VALUE-CELL PROPTYPE . 25)
(VARIABLE-VALUE-CELL ARGS . 22)
(NIL VARIABLE-VALUE-CELL CLASS . 39)
(NIL VARIABLE-VALUE-CELL RESULT . 30)
GLCLASS
"Object"
"has no Class."
ERROR
GLCLASSSEND
GLSENDFAILURE
"Message"
"to object"
"of class"
"not understood."
(LIST CONS LIST3 KNIL ENTERF)                 X      

GLSEPCLR BINARY
                -.           Z"   XB   ,~       (VARIABLE-VALUE-CELL GLSEPPTR . 4)
(ASZ ENTER0)    (      

GLSEPINIT BINARY
               -.          Z   XB   Z"  XB   Z   ,~       (VARIABLE-VALUE-CELL ATM . 3)
(VARIABLE-VALUE-CELL GLSEPATOM . 4)
(VARIABLE-VALUE-CELL GLSEPPTR . 6)
(KNIL ASZ ENTERF)              

GLSEPNXT BINARY
     ^    S    [-.            S@  U  ,~   Z   0B   +   Z   ,~   Z   2B   +   	Z"   XB  Z  V,~   -,   +   XB   Z"   XB  Z  
,~   Z   ,<  ,<  Z  F  ÖXB   Z  2B   +    Z  Z$  ,   3B   +   Z  +      ,>  Ò,>  Z  B  W,      ,^  /  3b  +   Z   +   Z  ,<  Z  ,<  B  WF  ×,<  Z"   XB  ,\  ,~   Z  ,<  Z  ,<     ¡."  ,   F  ×XB  ,<  ,<  X$  Ø3B   +   *   ¢."  ,   XB  §+   Z   ,<  Z  ),<     +."  ,   F  ×XB  ¤,<  ,<  Y$  Ø3B   +   ³   ,."  ,   XB  1+   Z   2B   +   AZ  *,<  Z  D  Ù2B  Z+   AZ  5,<     6."  ,   D  Ù3B  Ú+   AZ  ,<  Z  8,<     9."  ,   F  ÖXB  >+      @,>  Ò,>     ²   ,^  /  3b  +   LZ  =,<  Z  Â,<     A/"  ,   F  ×,<  Z  ÇXB  Æ,\  ,~   Z  Å,<  Z  Ê,<  ,<  &  ×,<     M."  ,   XB  Ï,\  ,~     ! "(0 M48P        (VARIABLE-VALUE-CELL GLSEPPTR . 162)
(VARIABLE-VALUE-CELL GLSEPATOM . 152)
(VARIABLE-VALUE-CELL GLSEPBITTBL . 120)
(VARIABLE-VALUE-CELL GLSEPMINUS . 103)
(NIL VARIABLE-VALUE-CELL END . 148)
(NIL VARIABLE-VALUE-CELL TMP . 92)
*NIL*
STRPOSL
NCHARS
GLSUBATOM
((__+ __- _+_) . 0)
MEMB
((:= __ _+ +_ _- -_ ~= <> >= <=) . 0)
NTHCHAR
-
_
(MKN BHC IUNBOX EQP SKNM KNIL ASZ ENTER0)   
 É   ; 0 .  ¤    E        0       P 1 x  8   p      (           

GLSKIPCOMMENTS BINARY
            -.           Z   -,   +   Z  -,   +   Z   2B  +   Z  Z  3B  +   
Z  Z  2B  +   Z  ,<  [  
XB  ,\  +   Z   ,~   ,f (VARIABLE-VALUE-CELL GLEXPR . 23)
(VARIABLE-VALUE-CELL GLLISPDIALECT . 9)
INTERLISP
*
COMMENT
(KNIL SKLST ENTER0)   `    H        

GLSTRFN BINARY
          ë    û-.          ë@  í   ,~   Z   Z   ,   3B   +   Z   ,~   Z  Z  ,   XB  Z  3B   +   Z   2B   +   +   Z  -,   +   -,   +   %[  Z  -,   +   %Z  B  ï3B   +   %[  Z  XB  3B   +   %B  pXB   3B   +   Z  
,<  ,<  Z  F  ð,~   Z  B  qXB   3B   +   ,<  Z  ,<  Z  F  ñ,~   Z  Z  2B  +   $,<   [   Z  ,   ,~   Z   ,~   Z  "-,   +   ),<  ð,<  r,<  ,   D  òZ  %XB   Z  Z  )3B  +   .Z  ©Z  *2B  +   °,<   [  ªZ  ,   ,~   2B  s+   ºZ  ¬,<  [  ®Z  ,<  ,<  ó&  t2B   +   kZ  ±,<  [  ²[  Z  ,<  ,<  ô&  t,~   3B  u+   ¼2B  õ+   @Z  6,<  Z  7,<  Z  F  v,~   3B  ö+   E3B  w+   E3B  ÷+   E3B  x+   E2B  ø+   ÉZ  ¼,<  Z  ½,<  Z  ¾,<  ,<   (  y,~   2B  ù+   NZ  E,<  Z  F,<  Z  GF  z,~   2B  ú+   SZ  Ê,<  [  ËZ  ,<  Z  ÌF  ð,~   ,<  Z   D  {XB   3B   +   ^[  ÔZ  3B   +   ^[  VZ  ,<  Z  O,<  Z  P,<  Z  Ñ,<   "  ,   ,~   [  Ú3B   +   æ[  ^Z  -,   +   æ[  ßZ  -,   +   ç[  áZ  Z  B  ï3B   +   çZ   ,~   Z  Ù,<  [  ãZ  ,<  Z  ÛF  ð,~   2ECI"^`,	 D(     (VARIABLE-VALUE-CELL IND . 207)
(VARIABLE-VALUE-CELL DES . 209)
(VARIABLE-VALUE-CELL DESLIST . 212)
(VARIABLE-VALUE-CELL GLUSERSTRNAMES . 167)
(NIL VARIABLE-VALUE-CELL DESIND . 88)
(NIL VARIABLE-VALUE-CELL TMP . 176)
(NIL VARIABLE-VALUE-CELL STR . 43)
(NIL VARIABLE-VALUE-CELL UNITREC . 54)
GL-A-AN?
GLGETSTR
GLSTRFN
GLUNIT?
GLGETFROMUNIT
"Bad structure specification"
GLERROR
CONS
((CAR *GL*) . 0)
GLSTRVALB
((CDR *GL*) . 0)
LIST
LISTOBJECT
GLLISTSTRFN
PROPLIST
ALIST
RECORD
ATOMOBJECT
OBJECT
GLPROPSTRFN
ATOM
GLATOMSTRFN
TRANSPARENT
ASSOC
(EVCC LIST2 SKNLST ALIST2 SKA SKLST SKNA CONS KNIL FMEMB ENTERF)  ^    )    ¦    ° @      8     á X      x æ x X 
` I ` / P ¢ H  P  8 
  h            

GLSTRPROP BINARY
    °    ¦    /-.           ¦@  (  0,~   Z   B  +XB   2B   +   Z   ,~   ,<  ,<  «$  ,XB   3B   +   [  ,<  Z   D  ¬XB   3B   +   Z   ,<  D  -XB   3B   +   Z  ,~   [  ,<  ,<  ­$  ¬XB   Z  3B   +   Z  ,<  Z  ,<  Z  F  .XB  3B   +   +   [  XB  +   Z  B  ®XB   3B   +   [  [  [  Z  ,<  Z  ,<  Z  ,<  Z  ,<   "  ,   XB  3B   +   +   Hd$Hbe     (VARIABLE-VALUE-CELL STR . 6)
(VARIABLE-VALUE-CELL GLPROP . 67)
(VARIABLE-VALUE-CELL PROP . 69)
(NIL VARIABLE-VALUE-CELL STRB . 65)
(NIL VARIABLE-VALUE-CELL UNITREC . 60)
(NIL VARIABLE-VALUE-CELL GLPROPS . 34)
(NIL VARIABLE-VALUE-CELL PROPL . 23)
(NIL VARIABLE-VALUE-CELL TMP . 73)
(NIL VARIABLE-VALUE-CELL SUPERS . 53)
GLXTRTYPE
GLSTRUCTURE
GETPROP
LISTGET
ASSOC
SUPERS
GLSTRPROP
GLUNIT?
(EVCC KNIL ENTERF)  P   `          X      

GLSTRVAL BINARY
                -.           Z   3B   +   Z  ,<  Z   ,<  ,<  Z  F  D  +   Z  ,<  Z  D  Z  ,~   D  (VARIABLE-VALUE-CELL OLDFN . 19)
(VARIABLE-VALUE-CELL NEW . 17)
*GL*
SUBST
RPLACA
(KNIL ENTERF)  0      

GLSTRVALB BINARY
               -.          @    ,~   Z   ,<  Z   ,<  Z   F  XB   3B   +   
,<  Z   B  D  ,~   Z   ,~   L  (VARIABLE-VALUE-CELL IND . 6)
(VARIABLE-VALUE-CELL DES . 8)
(VARIABLE-VALUE-CELL NEW . 16)
(VARIABLE-VALUE-CELL DESLIST . 10)
(NIL VARIABLE-VALUE-CELL TMP . 12)
GLSTRFN
COPY
GLSTRVAL
(KNIL ENTERF)  0        

GLSUBATOM BINARY
            	-.           Z   ,<  Z   ,<  Z   F  2B   +   Z  ,~   ,   (VARIABLE-VALUE-CELL X . 3)
(VARIABLE-VALUE-CELL Y . 5)
(VARIABLE-VALUE-CELL Z . 7)
SUBATOM
*NIL*
(KNIL ENTERF)          

GLSUBSTTYPE BINARY
               -.           Z   ,<  Z   D  ,~       (VARIABLE-VALUE-CELL TYPE . 5)
(VARIABLE-VALUE-CELL SUBS . 3)
SUBLIS
(ENTERF)    

GLSUPERS BINARY
            
    -.           
@    ,~   Z   ,<  ,<  $  XB   3B   +   	[  ,<  ,<  $  ,~   Z   ,~   20  (VARIABLE-VALUE-CELL CLASS . 6)
(NIL VARIABLE-VALUE-CELL TMP . 13)
GLSTRUCTURE
GETPROP
SUPERS
LISTGET
(KNIL ENTERF)   
  h      

GLTHE BINARY
      w    ß    ó-.          ß@  a  H,~      åZ   3B   +   Z  ,<  ,<  f$  æ+   Z   XB   Z   2B   +   Z  ,<  ,<  g$  æ3B   +   Z   ,<  Z   ,<  ,<   ,<   (  ç,~   Z  3B   +   +   /Z  ,~   Z  3B   +   Z   2B   +   [  2B   +   Z  XB   Z  ,<  Z  B  hD  èZ  2B   +   §Z  ,<  [  XB  ,\  XB  ,<  ,<   $  iXB  2B   +   ,<  é,<  jZ   ,<  ,<  ê,   D  k,~   Z  3B   +   Z  ",<  Z  §,<  [  *XB  +,\  ,<  Z  F  ëXB  )+   [  .Z  B  lXB   Z  3B  ì+   »Z  °B  mB  lXB  ²Z  3B  ì+   »,<  é,<  íZ  ¤,<  ,<  nZ  4,<  ,<  î^"  ,   D  kZ   Z  -,   XB      oXB   ,<  Z  7,<  [  ¸Z  ,<  Z  =H  ïZ  >,<  [  @Z  ,   ,<  Z  Á,<  Z  
,<  [  ÆXB  Ç,\  ,<  ,<  p$  æ,<  ,<   (  çXB   Z  3B   +   OZ  ð+   ÏZ  q,<  Z  /,<  ,<  ñ,<  rZ  Â,   ,<  Z  L,   ,   ,   B  òXB   Z  Ì3B   +   [Z  V,<  Z  Ã,<  ,   ,~   ,<  sZ  X,<  ,   ,<  [  YZ  ,   ,~   B4a JIÙdH  GF         (VARIABLE-VALUE-CELL PLURALFLG . 173)
(VARIABLE-VALUE-CELL EXPR . 144)
(VARIABLE-VALUE-CELL CONTEXT . 120)
(NIL VARIABLE-VALUE-CELL SOURCE . 160)
(NIL VARIABLE-VALUE-CELL SPECS . 87)
(NIL VARIABLE-VALUE-CELL NAME . 126)
(NIL VARIABLE-VALUE-CELL QUALFLG . 40)
(NIL VARIABLE-VALUE-CELL DTYPE . 187)
(NIL VARIABLE-VALUE-CELL NEWCONTEXT . 139)
(NIL VARIABLE-VALUE-CELL LOOPVAR . 164)
(NIL VARIABLE-VALUE-CELL LOOPCOND . 167)
(NIL VARIABLE-VALUE-CELL TMP . 183)
GLTHESPECS
((with With WITH who Who WHO which Which WHICH that That THAT) . 0)
MEMB
((IS Is is HAS Has has ARE Are are) . 0)
GLPREDICATE
GLPLURAL
RPLACA
GLIDNAME
GLTHE
"The definite reference to"
"could not be found."
GLERROR
GLGETFIELD
GLXTRTYPE
LISTOF
GLGETSTR
"The group name"
"has type"
"which is not a legal group type."
GLMKVAR
GLADDSTR
((who Who WHO which Which WHICH that That THAT) . 0)
SUBSET
SOME
FUNCTION
LAMBDA
GLGENCODE
CAR
(LIST2 ALIST3 CONSNL ALIST2 CONS LIST LIST3 KT KNIL ENTERF)  X [    V 
P   
8   x Õ X   X   8   p         N 	@ ¼  £      X        P      

GLTHESPECS BINARY
      ¬    $    +-.            $Z   2B   +   Z   ,~   Z  ,<  ,<  &$  ¦3B   +   Z  ,<  [  XB  ,\  Z  2B   +   ,<  'Z  §,   D  (,~   Z  -,   +   Z  B  ¨   )Z  2B  +   Z  ,<  [  XB  ,\  Z   ,   XB  +      ©,<   Z   ,<  ,<   &  *XB   +   ,<   Z  ,<  ,<   &  *XB  +   Z  ,<  ,<  ª$  ¦3B   +   Z  ,<  [  !XB  ",\  +    t¬ 0PS      (VARIABLE-VALUE-CELL EXPR . 69)
(VARIABLE-VALUE-CELL SPECS . 43)
(VARIABLE-VALUE-CELL CONTEXT . 54)
(VARIABLE-VALUE-CELL SOURCE . 58)
((THE The the) . 0)
MEMB
GLTHE
"Nothing following THE"
GLERROR
GLSEPINIT
GLSEPNXT
GLSEPCLR
GLDOEXPR
((OF Of of) . 0)
(KT CONS SKA CONSNL KNIL ENTER0)      `   p   P         p   0      

GLTRANSPARENTTYPES BINARY
                
-.           @    ,~   Z   -,   +   B  XB  B  	Z   B  ,~   5   (VARIABLE-VALUE-CELL STR . 10)
(NIL VARIABLE-VALUE-CELL TTLIST . 12)
GLGETSTR
GLTRANSPB
DREVERSE
(SKA ENTERF)   H      

GLTRANSPB BINARY
               -.          Z   -,   +   Z   ,~   Z  2B  +   Z  Z   ,   XB  ,~   Z  ,<  ,<  $  2B   +   [  ,<  Zp  -,   +   Z   +   Zp  B  [p  XBp  +   /  ,~   BR     (VARIABLE-VALUE-CELL STR . 22)
(VARIABLE-VALUE-CELL TTLIST . 14)
TRANSPARENT
((LISTOF ALIST PROPLIST) . 0)
MEMB
GLTRANSPB
(BHC KNIL CONS KT SKNLST ENTERF)     h               0      

GLTRANSPROG BINARY
     Î    Å    L-.           Å@  F  ,~   [   Z  ,<  Zp  -,   +   +   ¾,<  @  Ç   +   =Z   -,   +   ¼[  Z  ,<  Zp  -,   +   Z   +   Zp  ,<  ,<wÿ/  @  H   +   Z   -,   +   Z  ,<  Z  [  Z  D  È,~   Z   ,~   3B   +   Zp  +   [p  XBp  +   /  2B   +   «Z   ,<  Zp  -,   +    Z   +   *Zp  ,<  ,<wÿ/  @  H   +   ¦Z  Z  ,<  Z  D  È,~   3B   +   ¨Zp  +   *[p  XBp  +   /  3B   +   ¬   I+   ­Z  £Z  XB   Z   ,<  ,<  É,<  Z  ¬[  Z  ,   ,   D  JXB  .Z  ­,<  Z  0Z  ,<  [  
[  F  ÊZ  ´[  Z  Z  ,   XB  9Z  ·,<  Z  ³D  K,~   [p  XBp  +   /  Z  33B   +   Ä[  6,<  Z  ?,<  [  À[  D  JD  ËZ  Â,~   R BI	$p  @     (VARIABLE-VALUE-CELL X . 137)
(NIL VARIABLE-VALUE-CELL TMP . 119)
(NIL VARIABLE-VALUE-CELL ARGVALS . 116)
(NIL VARIABLE-VALUE-CELL SETVARS . 131)
(VARIABLE-VALUE-CELL Y . 117)
(VARIABLE-VALUE-CELL Z . 74)
GLOCCURS
GLMKVAR
SETQ
NCONC
DSUBST
RPLACA
RPLACD
(CONS CONSNL ALIST3 BHC KNIL SKLST SKNLST ENTERF)   º    3    ²    ¿ 0 ¢ @     À 8 §      `   0 
     P        

GLUCILISPTRANSFM BINARY
       Ï    E    M-.           E@  Å  ,~   Z   -,   +   Z  ,~   Z  Z  Æ,   3B   +   Z  ,<  [  [  Z  ,<  [  	Z  ,   XB  +   Z  Z  G,   3B   +   Z  ,<  [  Z  ,<  [  [  [  Z  ,<  [  [  Z  ,   XB  Z  Z  Ç,   XB   Z  Z  H7  [  Z  Z  1H  +   2D   +   XB   3B   +   #[  Z  [  ,   XB  !+   @Z  "2B  È+   )[  #2B   +   )Z  ¤,<  ,<   ,   XB  &+   @Z  (2B  I+   1[  )[  2B   +   1Z  ª,<  [  ¬Z  ,<  ,<   ,   XB  ­+   @Z  02B  É+   4Z  1B  J+   @Z  ²2B  Ê+   ;,<  K[  4Z  ,<  Z  Ë[  6[  ,   ,   XB  8+   @Z  :2B  L+   @Z  ;,<  Z  Ë[  ¼,   ,   XB  >Z  3B   +   D,<  ÌZ  ¿,<  ,   ,~   Z  B,~   " H )HÛ 0      (VARIABLE-VALUE-CELL X . 136)
(NIL VARIABLE-VALUE-CELL TMP . 64)
(NIL VARIABLE-VALUE-CELL NOTFLG . 128)
((MAP MAPC MAPCAR MAPCONC MAPLIST MAPCON SOME EVERY SUBSET GLSTRGEP GLSTRLESSP) . 0)
((PUTPROP) . 0)
((GLSTRGREATERP GLSTRLESSP) . 0)
(((MEMB MEMQ) (FMEMB MEMQ) (FASSOC ASSOC) (GETPROP GET) (GETPROPLIST CDR) (EQP =) (IGREATERP >) (IGEQ 
GE) (GEQ GE) (ILESSP <) (ILEQ LE) (LEQ LE) (IPLUS +) (IDIFFERENCE -) (ITIMES *) (IQUOTIENT //) (
MAPLIST MAPL) (MAPCAR MAPCL) (DECLARE COMMENT) (NCHARS FLATSIZEC) (* COMMENT) (PACK READLIST) (UNPACK 
EXPLODE) (FIXP INUMP) (pop POP) (push PUSH) (LISTP CONSP) (ALPHORDER LEXORDER) (GLSTRGREATERP LEXORDER
) (GLSTRLESSP LEXORDER) (STREQUAL EQSTR) (GLSTRGEP LEXORDER)) . 0)
RETURN
APPEND
PROG
GLTRANSPROG
APPLY*
APPLY
LIST
ERROR
NOT
(ALIST2 LIST3 LIST2 CONS ALIST4 ALIST3 KNIL FMEMB SKNLST ENTERF)         @ ¨    ¿   ¢        º P    0 H ( `   h         x    H      

GLUNITOP BINARY
                -.          @    ,~   Z   XB   Z  2B   +   Z   ,~   Z   Z  ,<  Z  [  Z  D  2B   +   [  XB  +   Z  XB   Z   ,<  [  [  Z  D  XB   3B   +   [  ,<  Z  ,<  Z   ,<   "  ,   ,~   H     (VARIABLE-VALUE-CELL LHS . 38)
(VARIABLE-VALUE-CELL RHS . 40)
(VARIABLE-VALUE-CELL OP . 27)
(VARIABLE-VALUE-CELL GLUNITPKGS . 6)
(NIL VARIABLE-VALUE-CELL TMP . 36)
(NIL VARIABLE-VALUE-CELL LST . 25)
(NIL VARIABLE-VALUE-CELL UNITREC . 29)
MEMB
ASSOC
(EVCC KNIL ENTERF)        0   X      

GLUNIT? BINARY
            -.          @    ,~   Z   XB   Z  2B   +   Z   ,~   Z  Z  ,<  Z   ,<   "  ,   3B   +   Z  ,~   [  XB  +    B (VARIABLE-VALUE-CELL STR . 16)
(VARIABLE-VALUE-CELL GLUNITPKGS . 6)
(NIL VARIABLE-VALUE-CELL UPS . 25)
(EVCC KNIL ENTERF)  (   0   X      

GLUNWRAP BINARY
       p   Ñ   é-.         ÑZ   -,   +   ,~   Z  -,   +   ,< SZ  D Ó,~   Z  3B T+   2B Ô+   Z  ,~   3B U+   2B Õ+   "[  [  2B   +   [  Z  XB  +   [  ,<  Zp  -,   +   +   ,<  @ V   +   Z   ,<  Z  ,<  Z   3B   +   [  2B   +   7   Z   +   Z   D SD Ö,~   [p  XBp  +   /  Z  B WZ   ,~   2B ×+   ¾[  ![  2B   +   '[  #Z  XB  %+   [  &,<  Zp  -,   +   *+   ¶,<  @ V   +   5Z  ,<  Z  ,,<  Z  3B   +   3Z  -[  'Z  2B  7   Z   +   ³Z   D SD Ö,~   [p  XBp  +   (/  Z  .3B   +   º[  0[  B W+   ½Z  ¸,<  ,< Õ$ ÖZ  ºB WZ  ¼,~   2B X+   P[  ½,<  [  ¿Z  ,<  Z  7D SD Ö[  À[  ,<  Zp  -,   +   G+   Î,<  @ V   +   MZ  ¯,<  Z  I,<  ,<   $ SD Ö,~   [p  XBp  +   E/  Z  Ã,~   3B Ø+   W3B Y+   W3B Ù+   W3B Z+   W3B Ú+   W3B [+   W2B Û+   ÙZ  O,<  Z  BD \,~   2B Ü+   m[  W[  ,<  Zp  -,   +   ^+   j,<  @ V   +   èZ  J,<  Z  `,<  Z  X3B   +   æ[  a2B   +   å7   Z   +   gZ   D SD Ö,~   [p  XBp  +   \/  [  Ú[  B WZ  ê,~   2B ]+   ðZ  l,<  Z  bD Ý,~   2B ^+   tZ  n,<  Z  oD Þ,~   3B _+   v2B ß+   øZ  ñ,<  Z  òD `,~   Z  v2B à+   üZ   2B a+   üZ  ø,~   Z  w2B   +  [  û3B   +  [  ~[  2B   +  Z  ÿB á3B   +  [ Z  ,<  Z   XB  ü,\  XB +   [ ,<  Zp  -,   +  +  ,<  @ V   +  Z  ã,<  Z ,<  ,<   $ SD Ö,~   [p  XBp  +  /  [ 3B   +  1[ [  2B   +  1[ Z  -,   +  1Z B b3B   +  1[ Z  Z  B b3B   +  1Z B â,   ,> Q,>  [ Z  Z  B â,   .Bx  ,^  /  0"  +  1Z ,<  [ ¤Z  Z  B c,<  Z ¥B cD ãZ d,   B äZ e,   B åD Ö[ (,<  [ -Z  [  Z  D Ö+   Z .,<  ,< f$ æ3B   +  L[ 1,<  Zp  -,   +  ·Z   +  =Zp  ,<  ,<wÿ$ g2B   +  »Z   +  =[p  XBp  +  5/  3B   +  LZ 4,<  ,< ç$ æ3B   +  Ê[ ¾,<  Zp  -,   +  EZ   +  IZp  -,   +  ÇZ   +  I[p  XBp  +  Â/  3B   +  LZ ÁB h,~   Z ÊZ è,   3B   +  PZ LB i,~   Z Î,~     <xD5b&"  ,DfL bâATKX^°(ÁD*!	m@æ
I
R)       (VARIABLE-VALUE-CELL X . 416)
(VARIABLE-VALUE-CELL BUSY . 267)
(VARIABLE-VALUE-CELL GLLISPDIALECT . 244)
GLUNWRAP
ERROR
QUOTE
GO
PROG2
PROGN
(VARIABLE-VALUE-CELL Y . 283)
RPLACA
GLEXPANDPROGN
PROG1
FUNCTION
MAP
MAPC
MAPCAR
MAPCONC
SUBSET
SOME
EVERY
GLUNWRAPMAP
LAMBDA
PROG
GLUNWRAPPROG
COND
GLUNWRAPCOND
SELECTQ
CASEQ
GLUNWRAPSELECTQ
*
INTERLISP
GLPURE
GLCARCDR?
NCHARS
GLANYCARCDR?
NCONC
R
DREVERSE
C
PACK
GLEVALWHENCONST
GETPROP
GLCONST?
GLARGSNUMBERP
EVAL
((AND OR) . 0)
GLUNWRAPLOG
(FMEMB SKNNM CONS21 IUNBOX SKLST BHC KT KNIL SKNA SKNLST ENTERF)   `   h   H+   ¢ p        > @ 0 Ï x     E x ` L 0    Î (Ç ¾ 8º @   @ 8 x ~ x æ P ã  4 ( ¯ P  @          D h
 X Æ    0      

GLUNWRAPCOND BINARY
    ·    ±    6-.           ±@  ²  ,~   Z   XB   [  2B   +   +   )[  Z  ,<  [  Z  Z  ,<  ,<   $  3D  ³[  Z  Z  2B   +   Z  ,<  [  [  D  4+   [  Z  [  ,<  Zp  -,   +   +    ,<  @  ´   +   Z   ,<  Z  ,<  Z   3B   +   [  2B   +   7   Z   +   Z   D  3D  ³,~   [p  XBp  +   /  [  Z  [  B  5[  !Z  Z  2B   +   §[  #,<  ,<   $  4[  ¥XB  §+   [  [  2B   +   °[  )Z  Z  2B   +   °Z  µ[  +Z  [  ,   ,~   Z  .,~   B $XB  (VARIABLE-VALUE-CELL X . 97)
(VARIABLE-VALUE-CELL BUSY . 49)
(NIL VARIABLE-VALUE-CELL RESULT . 80)
GLUNWRAP
RPLACA
RPLACD
(VARIABLE-VALUE-CELL Y . 52)
GLEXPANDPROGN
PROGN
(CONS BHC SKNLST KT KNIL ENTERF)  °    ¡        ­ X  (   0 § `  8  X        

GLUNWRAPLOG BINARY
       ±    ¬    0-.           ¬@  -  ,~   Z   2B  ­+   [  [  2B   +   [  Z  ,~   [  Z  2B   +   Z   ,~   [  Z  2B   +   [  [  Z  ,~   Z  2B  .+   [  [  2B   +   [  Z  ,~   [  Z  2B   +   [  [  Z  ,~   [  Z  2B   +   Z   ,~   [  XB   Z  2B   +   Z  ,~   Z  -,   +   +Z  Z  Z  2B  +   +Z   B  ®,<  [  ¢D  /Z  $,<  Z  %[  [  D  /Z  &,<  Z  ([  Z  D  ¯[  )XB  ++   b@@ ! A  (VARIABLE-VALUE-CELL X . 66)
(NIL VARIABLE-VALUE-CELL Y . 87)
AND
OR
LAST
RPLACD
RPLACA
(SKLST KT KNIL ENTERF)               `  0 
  h      

GLUNWRAPMAP BINARY
    )      $-.         @   P,~   Z   3B +   3B +   2B +   [   Z  ,<  ,<   $ XB   [  [  Z  ,<  Z  ,<  ,< $ 2B   +   7   Z   D XB   +   3B +   3B +   2B +   [  [  Z  ,<  ,<   $ XB  	[  Z  ,<  Z  ,<  ,< $ 2B   +   7   Z   D XB  +     Z  XB   ,<  ,< $ 3B   +  Z  -,   +  Z  ¢XB   ,<  ,< $ 2B   +   (+  Z  B XB   Z  3B +   ,2B +   ¯[  $Z  XB   [  ,[  Z  +   ¶3B +   ²3B +   ²2B +   6[  ­[  Z  XB  -[  ²Z  +   ¶  B XB   Z  ¤2B +   XZ  3B +   »2B +   CXB   ,< [  7Z  ,<  Z  ¼,<  Z  ),<  [  ?Z  F ,   XB   +  2B +   NZ XB  »,< [  >Z  ,<  ,< Z  Å,<  Z  @,<  [  ÈZ  F ,<  ,<   ,   ,   XB  B+  2B +   WZ XB  Ä,< [  ÇZ  ,<  Z  Ð,<  Z  É,<  [  SZ  F ,   XB  M+    +  2B +  ,<     XB   ,   ,<  ,< !Z  Z,<  [  RZ  ,   ,<  ,< ¡,< ",   ,   XB  VZ  92B +   îZ XB  Ï,< Z  \,<  Z  T,<  [  åZ  F ,<  ,< Z  ä,<  ,<   ,   ,   ,<  ,< "Z  aF XB  ì+  2B +   wZ XB  ãZ  i,<  Z  æ,<  [  ñZ  F ,<  ,< "Z  íF XB  u+  2B +   ÿZ XB  pZ  ð,<  Z  ò,<  [  zZ  F ,<  ,< "Z  vF XB  ý+    +    Z  ø,<  Z  4,<  ,< ¢,< #Z  ],   ,<  Z  þ,<  ,   ,   ,   B £,<  Z   D ,~   Z  á,<  Z  ´,<  Z  (,<  ,   B £,~   ~Ëx,´S`?Àfz 'QP¿ W@*x^          (VARIABLE-VALUE-CELL X . 62)
(VARIABLE-VALUE-CELL BUSY . 274)
(VARIABLE-VALUE-CELL GLLISPDIALECT . 83)
(NIL VARIABLE-VALUE-CELL LST . 279)
(NIL VARIABLE-VALUE-CELL FN . 281)
(NIL VARIABLE-VALUE-CELL OUTSIDE . 246)
(NIL VARIABLE-VALUE-CELL INSIDE . 264)
(NIL VARIABLE-VALUE-CELL OUTFN . 277)
(NIL VARIABLE-VALUE-CELL INFN . 111)
(NIL VARIABLE-VALUE-CELL NEWFN . 267)
(NIL VARIABLE-VALUE-CELL NEWMAP . 258)
(NIL VARIABLE-VALUE-CELL TMPVAR . 242)
(NIL VARIABLE-VALUE-CELL NEWLST . 260)
INTERLISP
UTLISP
PSL
GLUNWRAP
((MAPC MAP) . 0)
MEMB
MACLISP
FRANZLISP
UCILISP
((MAPC MAP) . 0)
ERROR
((SUBSET MAPCAR MAPC MAPCONC) . 0)
((SUBSET MAPCAR) . 0)
GLXTRFN
SUBSET
MAPCONC
AND
SUBST
MAPCAR
CONS
MAPC
PROG
GLMKVAR
SETQ
RETURN
*GLCODE*
FUNCTION
LAMBDA
GLGENCODE
(ALIST2 ALIST4 LIST2 CONSNL LIST3 ALIST3 SKLST KNIL KT ENTERF)           X Û    x ë 	P    l p Ö 	X Â    $    k 	H § (  @  h   P  x 	       

GLUNWRAPPROG BINARY
      <    ²    :-.          ²@  4  ,~   Z   3B  ´+   Z   B  5Z   2B   +   Z  B  µXB   3B   +   Z  -,   +   Z  Z  2B  6+   Z  [  Z  -,   +   Z  ,<  ,<  ¶$  7,<  ,<   $  ·+   Z  ,<  Z  [  Z  D  8[  Z  ,<  Zp  -,   +   +   $Zp  ,<  @  ¸   +   ¢Z   -,   +   "[  ,<  [  Z  ,<  ,<   $  9D  8,~   [p  XBp  +   /  [  [  ,<  Zp  -,   +   (+   ¯,<  @  ¸   +   .Z  ,<  Z  *,<  ,<   $  9D  8,~   [p  XBp  +   &/  [  ¤[  B  ¹Z  0,~   i$L0 eT"      (VARIABLE-VALUE-CELL X . 99)
(VARIABLE-VALUE-CELL BUSY . 11)
(VARIABLE-VALUE-CELL GLLISPDIALECT . 6)
(NIL VARIABLE-VALUE-CELL LAST . 41)
INTERLISP
GLTRANSPROG
LAST
RETURN
2
NLEFT
RPLACD
RPLACA
(VARIABLE-VALUE-CELL Y . 86)
GLUNWRAP
GLEXPANDPROGN
(BHC KT SKNLST SKA SKLST KNIL ENTERF)  ° P      x          0   P          

GLUNWRAPSELECTQ BINARY
        T    J    Ñ-.           J@  K  ,~   [   ,<  [  Z  ,<  ,<   $  LD  Ì[  [  ,<  Zp  -,   +   +   ',<  @  M   +   ¥[   2B   +   Z  2B  Í+   ¡Z  [  ,<  Zp  -,   +   +   ,<  @  N   +   Z   ,<  Z  ,<  Z   3B   +   [  2B   +   7   Z   +   Z   D  LD  Ì,~   [p  XBp  +   /  Z  [  B  Î,~   Z  ,<  Z  ¡,<  Z  D  LD  Ì,~   [p  XBp  +   /  [  Z  B  O2B   +   +Z  §,~   [  *Z  B  ÏXB   [  +[  XB   Z  .2B   +   1Z   ,~   [  ®2B   +   5Z  -2B  P+   5Z  1,~   Z  ²2B  Í+   ¼Z  4Z  2B   +   ¼Z  ÐZ  ¶[  ,   ,<  Z  £D  L,~   Z  ¬Z  9Z  3B  +   ÄZ  =Z  -,   +   ÈZ  ¼,<  Z  ?Z  D  Q3B   +   ÈZ  ÐZ  B[  ,   ,<  Z  ;D  L,~   [  EXB  È+   ®)0j%D bØFBà    (VARIABLE-VALUE-CELL X . 106)
(VARIABLE-VALUE-CELL BUSY . 142)
(NIL VARIABLE-VALUE-CELL L . 146)
(NIL VARIABLE-VALUE-CELL SELECTOR . 130)
GLUNWRAP
RPLACA
(VARIABLE-VALUE-CELL Y . 69)
CASEQ
(VARIABLE-VALUE-CELL Z . 49)
GLEXPANDPROGN
GLCONST?
GLCONSTVAL
SELECTQ
PROGN
MEMB
(SKLST CONS BHC KNIL SKNLST KT ENTERF)     p ;    (     H ²  0    8               h      

GLUPDATEVARTYPE BINARY
              -.          @    ,~   Z   3B   +   Z   ,<  Z   D  XB   3B   +   [  [  Z  2B   +   [  [  ,<  Z  D  +   Z  ,<  ,<   Z  ,<  Z  H  Z   ,~   "!     (VARIABLE-VALUE-CELL VAR . 27)
(VARIABLE-VALUE-CELL TYPE . 30)
(VARIABLE-VALUE-CELL CONTEXT . 32)
(NIL VARIABLE-VALUE-CELL CTXENT . 21)
GLFINDVARINCTX
RPLACA
GLADDSTR
(KNIL ENTERF)   x           

GLUSERFN BINARY
     .    '    ¬-.          '@  )  ,~   Z   XB   Z   XB   Z  2B   +   +   Z  ,<  Z  [  [  [  [  Z  D  ªXB   3B   +   [  ,<  Z  ,<  Z   ,<   "  ,   ,~   [  XB  +   Z   XB  Z  2B   +   Z  B  +,~   Z  ,<  Z  [  [  [  [  Z  D  «3B   +   ¥,<  ,Z  [  [  Z  D  ªXB  3B   +   ¥[  ,<  Z  ,<  Z  ,<   "  ,   ,~   [  XB  ¥+    $ ! B     (VARIABLE-VALUE-CELL EXPR . 68)
(VARIABLE-VALUE-CELL GLUSERSTRNAMES . 8)
(VARIABLE-VALUE-CELL CONTEXT . 70)
(VARIABLE-VALUE-CELL GLUNITPKGS . 38)
(NIL VARIABLE-VALUE-CELL FNNAME . 46)
(NIL VARIABLE-VALUE-CELL TMP . 66)
(NIL VARIABLE-VALUE-CELL UPS . 76)
ASSOC
GLUSERFNB
MEMB
UNITFN
(EVCC KNIL ENTERF)   ¥      X   h      

GLUSERFNB BINARY
       H    =    F-.          =@  >   ,~   Z   ,<  [  XB  ,\  XB   Z  2B   +   -Z   B  @XB  Z   B  @XB  	Z  ,<  ,<  À$  A3B   +   Z  ,<  Zp  -,   +   Z   +   Zp  ,<  ,<wÿ$  Á2B   +   Z   +   [p  XBp  +   /  3B   +   Z  Z  ,   B  B,<  Z  ,<  Z  
D  Â,   ,~   Z  B  C3B   +   (Z  ,<  Z  D  ÃXB   3B   +   (Z  ¡Z  ,   ,<  Z  #,<  ,<  Â$  A,   ,~   Z  Z  £,   ,<  Z  (,<  Z   D  Â,   ,~   ,<   Z   ,<  ,<   &  D2B   +   µ,<  Ä,<  EZ  ,<  ,   D  Å,<  Z   XB  ±,\  XB  %3B   +   <Z  µZ  ¨,   XB  ·[  7Z  Z  +,   XB  :+   Z   ,~    R
*$!
  .    (VARIABLE-VALUE-CELL EXPR . 105)
(VARIABLE-VALUE-CELL CONTEXT . 91)
(NIL VARIABLE-VALUE-CELL ARGS . 113)
(NIL VARIABLE-VALUE-CELL ARGTYPES . 118)
(NIL VARIABLE-VALUE-CELL FNNAME . 84)
(NIL VARIABLE-VALUE-CELL TMP . 114)
DREVERSE
GLEVALWHENCONST
GETPROP
GLCONST?
EVAL
GLRESULTTYPE
GLABSTRACTFN?
GLINSTANCEFN
GLDOEXPR
GLUSERFNB
"Function call contains illegal item.  EXPR ="
GLERROR
(LIST2 ALIST2 CONS BHC KT SKNLST KNIL ENTERF)  8   P ( X   8 9   %     x   x         = p 5  . 0     @   x      

GLUSERGETARGS BINARY
                -.           @    ,~   Z   ,<  [  XB  ,\  Z  2B   +   Z   B  ,~   ,<   Z   ,<  ,<   &  2B   +   ,<  ,<  Z  ,<  ,   D  ,<  Z   XB  ,\  XB   3B   +   Z  ,   XB  +   Z   ,~    \ D    (VARIABLE-VALUE-CELL EXPR . 32)
(VARIABLE-VALUE-CELL CONTEXT . 18)
(NIL VARIABLE-VALUE-CELL ARGS . 39)
(NIL VARIABLE-VALUE-CELL TMP . 34)
DREVERSE
GLDOEXPR
GLUSERFNB
"Function call contains illegal item.  EXPR ="
GLERROR
(CONS LIST2 KT KNIL ENTERF)               (  @   p      

GLUSERSTROP BINARY
     ¡         -.          @    ,~   [   Z  XB   2B   +   Z   ,~   -,   +   Z  ,<  Z  B  ,   ,<  Z   ,<  Z   F  ,~   -,   +   +   Z  ,<  Z   D   XB   3B   +   Z  ,<  [  [  [  Z  D   XB   3B   +   [  ,<  Z  ,<  Z  ,<   "  ,   ,~   D	Ä   (VARIABLE-VALUE-CELL LHS . 48)
(VARIABLE-VALUE-CELL OP . 36)
(VARIABLE-VALUE-CELL RHS . 50)
(VARIABLE-VALUE-CELL GLUSERSTRNAMES . 31)
(NIL VARIABLE-VALUE-CELL TMP . 38)
(NIL VARIABLE-VALUE-CELL DES . 29)
(NIL VARIABLE-VALUE-CELL TMPB . 46)
GLGETSTR
GLUSERSTROP
ASSOC
(EVCC SKNLST ALIST2 SKA KNIL ENTERF)   8   `   (    x   p   h        

GLVALUE BINARY
      7    ¬    µ-.           ¬@  /   ,~   Z   Z   ,   3B   +   Z   ,~   Z   ,<  Z  ,<  Z  F  1XB   3B   +   ,<  Z   D  ±,~   Z  ,<  ,<  2Z  F  ²XB   3B   +   Z  ,<  Z  ,<  ,   ,<  Z  ,<  ,<   Z   H  3XB  Z  ,~   Z  B  ³XB   Z  2B   +   +   ,<  4Z  ,<  Z  B  ´,<  Z  Z  ,   H  5XB  3B   +   *Z  ,<  Z  ,<  ,<   &  1XB   Z   ,<  Z  %D  ±Z  ¥,<  Z  D  ±+   [  §XB  *3B   +   +   HR !H!0  (VARIABLE-VALUE-CELL SOURCE . 81)
(VARIABLE-VALUE-CELL PROP . 56)
(VARIABLE-VALUE-CELL TYPE . 70)
(VARIABLE-VALUE-CELL DESLIST . 62)
(VARIABLE-VALUE-CELL CONTEXT . 43)
(NIL VARIABLE-VALUE-CELL TMP . 85)
(NIL VARIABLE-VALUE-CELL PROPL . 40)
(NIL VARIABLE-VALUE-CELL TRANS . 68)
(NIL VARIABLE-VALUE-CELL FETCHCODE . 77)
GLSTRFN
GLSTRVAL
PROP
GLSTRPROP
GLCOMPMSG
GLTRANSPARENTTYPES
*GL*
GLXTRTYPE
GLVALUE
(CONS LIST2 KNIL FMEMB ENTERF)    @   @ %    `  0   X    P      

GLVARTYPE BINARY
               -.           @    ,~   Z   ,<  Z   D  XB   3B   +   
[  [  Z  2B   +   Z  ,~   Z   ,~     (VARIABLE-VALUE-CELL VAR . 6)
(VARIABLE-VALUE-CELL CONTEXT . 8)
(NIL VARIABLE-VALUE-CELL TMP . 13)
GLFINDVARINCTX
*NIL*
(KNIL ENTERF)   0 	  h      

GLXTRFN BINARY
            -.           @    ,~   [   Z  -,   +   [  ,<  ,<     XB   ,   ,<  [  Z  ,<  Z  ,<  ,   ,   D  [  Z  [  Z  Z  ,<  [  Z  [  [  Z  ,   ,~          (VARIABLE-VALUE-CELL FNLST . 31)
(NIL VARIABLE-VALUE-CELL TMP . 20)
LAMBDA
GLMKVAR
RPLACA
(ALIST2 ALIST3 LIST2 CONSNL SKA ENTERF)  0   H   @       P      

GLXTRTYPE BINARY
       %        $-.          Z   -,   +   ,~   -,   +   Z   ,~   Z  B   2B   +   	Z  2B  !+   [  3B   +   [  	Z  -,   +   [  Z  ,~   Z  ,<  Z   D  ¡3B   +   Z  ,~   Z  ,<  Z   D  "3B   +   Z  ,~   Z  -,   +   [  3B   +   [  Z  XB  +   ,<  ¢Z  ,<  ,<  #,   D  £Z   ,~   "Y

	P (VARIABLE-VALUE-CELL TYPE . 55)
(VARIABLE-VALUE-CELL GLTYPENAMES . 30)
(VARIABLE-VALUE-CELL GLUSERSTRNAMES . 38)
GL-A-AN?
TRANSPARENT
MEMB
ASSOC
GLXTRTYPE
"is an illegal type specification."
GLERROR
(LIST2 KNIL SKNLST SKA ENTERF)  `   p  P  (   X    H   x   0      

GLXTRTYPEB BINARY
      £        ¢-.          Z   2B   +   Z   ,~   -,   +   ,<  Z   D  3B   +   Z  ,~   Z  B   XB  +   -,   +   Z   ,~   Z  ,<  Z   D  3B   +   Z  ,~   Z  ,<  Z   D   3B   +   Z  ,~   Z  -,   +   [  3B   +   [  Z  XB  +   ,<  !Z  ,<  ,<  ¡,   D  "Z   ,~   E PPHe  (VARIABLE-VALUE-CELL TYPE . 52)
(VARIABLE-VALUE-CELL GLBASICTYPES . 11)
(VARIABLE-VALUE-CELL GLTYPENAMES . 27)
(VARIABLE-VALUE-CELL GLUSERSTRNAMES . 35)
MEMB
GLGETSTR
ASSOC
GLXTRTYPE
"is an illegal type specification."
GLERROR
(LIST2 SKNLST SKA KNIL ENTERF)            P   X  8  H   @        

GLXTRTYPEC BINARY
                -.          Z   -,   +   ,<  Z   D  2B   +   Z  B  
B  ,~   Z   ,~   +   (VARIABLE-VALUE-CELL TYPE . 11)
(VARIABLE-VALUE-CELL GLBASICTYPES . 7)
MEMB
GLGETSTR
GLXTRTYPE
(KNIL SKA ENTERF)    X    0      

SEND BINARY
               -.          Z   B  ,<  [  Z  ,<  ,<  [  [  ,<  ,<   Zwÿ-,   +   Zp  Z   2B   +    "  +   [  QD   "  +   ZwÿB  Zp  ,   XBp  [wÿXBwÿ+   /  H  ,~   "A@    (VARIABLE-VALUE-CELL GLISPSENDARGS . 10)
EVAL
MSG
GLSENDB
(BHC COLLCT SKNLST KNIL ENTERF)   (          ( 
  x      

SENDPROP BINARY
                -.          Z   B  ,<  [  Z  ,<  [  [  Z  ,<  [  [  [  ,<  ,<   Zwÿ-,   +   Zp  Z   2B   +    "  +   [  QD   "  +   ZwÿB  Zp  ,   XBp  [wÿXBwÿ+   	/  H  ,~    
    (VARIABLE-VALUE-CELL GLISPSENDPROPARGS . 13)
EVAL
GLSENDB
(BHC COLLCT SKNLST KNIL ENTERF)               @        
(PRETTYCOMPRINT GLISPCOMS)
(RPAQQ GLISPCOMS ((FNS A AN GL-A-AN? GLABSTRACTFN? GLADDINSTANCEFN GLADDRESULTTYPE GLADDSTR GLADJ 
GLAINTERPRETER GLAMBDATRAN GLANALYZEGLISP GLANDFN GLANYCARCDR? GLATOMSTRFN GLATMSTR? GLBUILDALIST 
GLBUILDCONS GLBUILDLIST GLBUILDNOT GLBUILDPROPLIST GLBUILDRECORD GLBUILDSTR GLCARCDRRESULTTYPE 
GLCARCDRRESULTTYPEB GLCARCDR? GLCC GLCLASS GLCLASSMEMP GLCLASSP GLCLASSSEND GLCOMP GLCOMPABSTRACT 
GLCOMPCOMS GLCOMPILE GLCOMPILE? GLCOMPMSG GLCOMPOPEN GLCOMPPROP GLCOMPPROPL GLCONST? GLCONSTSTR? 
GLCONSTVAL GLCP GLDECL GLDECLDS GLDEFFNRESULTTYPES GLDEFFNRESULTTYPEFNS GLDEFPROP GLDEFSTR 
GLDEFSTRNAMES GLDEFSTRQ GLDEFUNITPKG GLDELDEF GLDESCENDANTP GLDOA GLDOCASE GLDOCOND GLDOEXPR GLDOFOR 
GLDOIF GLDOLAMBDA GLDOMAIN GLDOMSG GLDOPROG GLDOPROGN GLDOPROG1 GLDOREPEAT GLDORETURN GLDOSELECTQ 
GLDOSEND GLDOSETQ GLDOTHE GLDOTHOSE GLDOVARSETQ GLDOWHILE GLED GLEDS GLEQUALFN GLERR GLERROR 
GLEXPANDPROGN GLEXPENSIVE? GLFINDVARINCTX GLFRANZLISPTRANSFM GLGENCODE GLGETASSOC GLGETCONSTDEF GLGETD
 GLGETDB GLGETDEF GLGETFIELD GLGETFROMUNIT GLGETGLOBALDEF GLGETPAIRS GLGETPROP GLGETSTR GLGETSUPERS 
GLIDNAME GLIDTYPE GLINIT GLINSTANCEFN GLINTERLISPTRANSFM GLISPCONSTANTS GLISPGLOBALS GLISPOBJECTS 
GLLISPADJ GLLISPISA GLLISTRESULTTYPEFN GLLISTSTRFN GLMACLISPTRANSFM GLMAKEFORLOOP GLMAKEGLISPVERSION 
GLMAKESTR GLMAKEVTYPE GLMINUSFN GLMKATOM GLMKLABEL GLMKVAR GLMKVTYPE GLNCONCFN GLNEQUALFN GLNOTFN 
GLNTHRESULTTYPEFN GLOCCURS GLOKSTR? GLOPERAND GLOPERATOR? GLORFN GLP GLPARSEXPR GLPARSFLD GLPARSNFLD 
GLPLURAL GLPOPFN GLPREC GLPREDICATE GLPRETTYPRINTCONST GLPRETTYPRINTGLOBALS GLPRETTYPRINTSTRS GLPROGN 
GLPROPSTRFN GLPSLTRANSFM GLPURE GLPUSHEXPR GLPUSHFN GLPUTARITH GLPUTFN GLPUTPROPS GLPUTUPFN GLREDUCE 
GLREDUCEARITH GLREDUCEOP GLREMOVEFN GLRESGLOBAL GLRESULTTYPE GLSENDB GLSEPCLR GLSEPINIT GLSEPNXT 
GLSKIPCOMMENTS GLSTRFN GLSTRPROP GLSTRVAL GLSTRVALB GLSUBATOM GLSUBSTTYPE GLSUPERS GLTHE GLTHESPECS 
GLTRANSPARENTTYPES GLTRANSPB GLTRANSPROG GLUCILISPTRANSFM GLUNITOP GLUNIT? GLUNWRAP GLUNWRAPCOND 
GLUNWRAPLOG GLUNWRAPMAP GLUNWRAPPROG GLUNWRAPSELECTQ GLUPDATEVARTYPE GLUSERFN GLUSERFNB GLUSERGETARGS 
GLUSERSTROP GLVALUE GLVARTYPE GLXTRFN GLXTRTYPE GLXTRTYPEB GLXTRTYPEC SEND SENDPROP) (P (SETQ 
GLLISPDIALECT (QUOTE INTERLISP)) (GLINIT)) (GLISPOBJECTS GLTYPE GLPROPENTRY) (ADDVARS (LAMBDASPLST 
GLAMBDA) (LAMBDATRANFNS (GLAMBDA GLAMBDATRAN EXPR NIL))) (GLOBALVARS GLQUIETFLG GLSEPBITTBL GLUNITPKGS
 GLSEPMINUS GLTYPENAMES GLBREAKONERROR GLUSERSTRNAMES GLLASTFNCOMPILED GLLASTSTREDITED GLCAUTIOUSFLG 
GLLISPDIALECT GLBASICTYPES) (SPECVARS CONTEXT EXPR VALBUSY FAULTFN GLSEPATOM GLSEPPTR GLTOPCTX 
RESULTTYPE RESULT GLNATOM FIRST OPNDS OPERS GLEXPR DESLIST EXPRSTACK GLTYPESUBS GLPROGLST ADDISATYPE) 
(VARS GLTYPENAMES GLSPECIALFNS GLBASICTYPES) (FILES (SYSLOAD FROM VALUEOF LISPUSERSDIRECTORIES) 
LAMBDATRAN) (FILEPKGCOMS GLISPCONSTANTS GLISPGLOBALS GLISPOBJECTS) (DECLARE: DONTEVAL@LOAD 
DOEVAL@COMPILE DONTCOPY COMPILERVARS (ADDVARS (NLAMA SENDPROP SEND GLISPOBJECTS GLISPGLOBALS 
GLISPCONSTANTS GLERR GLDEFSTRQ GLDEFSTRNAMES AN A) (NLAML) (LAMA)))))
(SETQ GLLISPDIALECT (QUOTE INTERLISP))
(GLINIT)
(GLISPOBJECTS (GLTYPE (ATOM (PROPLIST (GLSTRUCTURE (CONS (STRDES ANYTHING) (PROPLIST (PROP (PROPS (
LISTOF GLPROPENTRY))) (ADJ (ADJS (LISTOF GLPROPENTRY))) (ISA (ISAS (LISTOF GLPROPENTRY))) (MSG (MSGS (
LISTOF GLPROPENTRY))) (SUPERS (LISTOF GLTYPE)))))))) (GLPROPENTRY (CONS (NAME ATOM) (CONS (CODE 
ANYTHING) (PROPLIST (RESULT GLTYPE) (OPEN BOOLEAN)))) PROP ((SHORTVALUE (NAME)))))
(ADDTOVAR LAMBDASPLST GLAMBDA)
(LOAD (QUOTE LAMBDATRAN.COM))
(FILEPKGCOM 'GLISPCONSTANTS 'MACRO (QUOTE (GLISPCONSTANTS (E (GLPRETTYPRINTCONST (QUOTE GLISPCONSTANTS
))))))
(FILEPKGTYPE 'GLISPCONSTANTS 'DESCRIPTION "GLISP compile-time constants" 'GETDEF 'GLGETCONSTDEF)
(FILEPKGCOM 'GLISPGLOBALS 'MACRO (QUOTE (GLISPGLOBALS (E (GLPRETTYPRINTGLOBALS (QUOTE GLISPGLOBALS))))
))
(FILEPKGTYPE 'GLISPGLOBALS 'DESCRIPTION "GLISP global variables" 'GETDEF 'GLGETGLOBALDEF)
(FILEPKGCOM 'GLISPOBJECTS 'MACRO (QUOTE (GLISPOBJECTS (E (GLPRETTYPRINTSTRS (QUOTE GLISPOBJECTS))))))
(FILEPKGTYPE 'GLISPOBJECTS 'DESCRIPTION "GLISP Object Definitions" 'GETDEF 'GLGETDEF 'DELDEF 'GLDELDEF
)
(ADDTOVAR LAMBDATRANFNS (GLAMBDA GLAMBDATRAN EXPR NIL))
(RPAQQ GLTYPENAMES (CONS LIST RECORD LISTOF ALIST ATOM OBJECT LISTOBJECT ATOMOBJECT))
(RPAQQ GLSPECIALFNS (GLAMBDATRAN GLANALYZEGLISP GLCOMPCOMS GLED GLEDS GLERROR GLGETD GLGETDB 
GLMAKEGLISPVERSION GLP GLPRETTYPRINTCONST GLPRETTYPRINTGLOBALS GLPRETTYPRINTSTRS))
(RPAQQ GLBASICTYPES (ATOM INTEGER REAL NUMBER STRING BOOLEAN ANYTHING))
NIL
