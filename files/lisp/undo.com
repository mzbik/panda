(FILECREATED "23-Aug-84 23:43:28" ("compiled on " <NEWLISP>UNDO..161) (2 . 2) brecompiled changes: nothing in 
"INTERLISP-10  18-Aug-84 ..." dated "18-Aug-84 15:06:21")
(FILECREATED "23-Aug-84 18:18:59" {ERIS}<LISPCORE>SOURCES>UNDO.;3 56075 changes to: (VARS UNDOCOMS) previous date: 
" 7-May-84 15:41:53" {ERIS}<LISPCORE>SOURCES>UNDO.;2)
UNSET BINARY
       ¡         -.          @    ,~   Z   b     Z  ,   XB   2B   +   Z   3B   +   Z  ,<  ,<  Z   f  XB   3B   +   Z  XB  b     Z  ,   XB  3B   +   Z  ,<  [  Z  ,<  ,<   ,<    Z  ,~   ,<  Z  d  ,~   QI"(   (VARIABLE-VALUE-CELL NAME . 45)
(VARIABLE-VALUE-CELL DWIMFLG . 14)
(VARIABLE-VALUE-CELL SPELLINGS3 . 20)
(NIL VARIABLE-VALUE-CELL X . 36)
(NIL VARIABLE-VALUE-CELL TEM . 25)
(NIL)
(LINKED-FN-CALL . GETPROPLIST)
VALUE
70
(NIL)
(LINKED-FN-CALL . MISSPELLED?)
NOPRINT
(NIL)
(LINKED-FN-CALL . SAVESET)
"no value saved:"
(NIL)
(LINKED-FN-CALL . ERROR)
(KT KNIL FMEMB ENTERF) H            `      
RPLNODE BINARY
              -.           Z   -,   +   ,<  ,<  ,   B  Z  ,<  Z   d  Z  ,<  Z   d  ,~     (VARIABLE-VALUE-CELL X . 14)
(VARIABLE-VALUE-CELL A . 12)
(VARIABLE-VALUE-CELL D . 16)
4
ERRORX
(NIL)
(LINKED-FN-CALL . RPLACA)
(NIL)
(LINKED-FN-CALL . RPLACD)
(LIST2 SKNLST ENTERF)  P    0      
RPLNODE2 BINARY
         
    -.           
Z   3B   +   -,   +   ,<  ,<  ,   B  ,~   Z   ,<  Z  ,<  [  f  ,~   d  (VARIABLE-VALUE-CELL X . 13)
(VARIABLE-VALUE-CELL Y . 17)
4
ERRORX
(NIL)
(LINKED-FN-CALL . RPLNODE)
(LIST2 SKNLST KNIL ENTERF)                 
/LISPXPUT BINARY
              -.           @    ,~   Z   2B   +   Z   Z  XB  Z   Z  ,   [  XB   3B   +   ,<  Z   3B   +   Z  ,<  Z   d  +   Z  d  +   Z  ,<  Z  ,<  Z  ,<  ,   d  Z  ,~    #0    (VARIABLE-VALUE-CELL PROP . 33)
(VARIABLE-VALUE-CELL L . 39)
(VARIABLE-VALUE-CELL ADDFLG . 20)
(VARIABLE-VALUE-CELL LST . 31)
(VARIABLE-VALUE-CELL LISPXHISTORY . 9)
(NIL VARIABLE-VALUE-CELL Y . 23)
(NIL)
(LINKED-FN-CALL . /NCONC)
(NIL)
(LINKED-FN-CALL . /RPLACA)
(LIST2 FMEMB KNIL ENTERF)   8       8   H      
/PUT-1 BINARY
               -.           Z   b  ,<  @    ,~   Z   Z   2B  +   ,<  Z  ,<  Z   ,<  Z  ,<  ,   b  Z  3B   +   [  	[  QD  +   Z  ,<  [  [  d  +   XB  [  XB  -,   +   +   Z   ,~    HC    (VARIABLE-VALUE-CELL ATM . 29)
(VARIABLE-VALUE-CELL PROP . 31)
(NIL)
(LINKED-FN-CALL . GETPROPLIST)
(VARIABLE-VALUE-CELL X . 37)
(NIL VARIABLE-VALUE-CELL X0 . 35)
/PUT+1
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . SETPROPLIST)
(SKLST KNIL LIST4 ENTERF)       H   0      
/PUT+1 BINARY
       ¡         -.          Z   b  ,<  @     ,~   Z   3B   +   ,<  Z  ,<  Z   ,<  ,   ,<  Z  d  Z   -,   +   +   Z   Z  2B  +   [  [  QD  Z  Z  QD  Z   ,~   [  XB  -,   +   +   [  ,<  Z  b  ,\  QB  Z  ,<  Z  d  +   @0  (VARIABLE-VALUE-CELL ATM . 48)
(VARIABLE-VALUE-CELL TAIL . 26)
(VARIABLE-VALUE-CELL PROP . 50)
(VARIABLE-VALUE-CELL LISPXHIST . 19)
(NIL)
(LINKED-FN-CALL . GETPROPLIST)
(VARIABLE-VALUE-CELL X . 38)
/PUT-1
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . SETPROPLIST)
(SKLST SKNLST LIST3 KNIL ENTERF) H   @      (        
UNDONLSETQ BINARY
     -    "    «-.         "Z   ,<  @  £  ,~   Z  ,<  ,<  ¥  &XB   -,   +   	[  XB   +   XB  Z"   ,   XB  Z  3B   +   ,<  ,<  ¥Z  f  '+   ,<  ¥Z  ,<  ,   XB  @  (  +   Z   ,<  ,<   Z   F  ¨XB   ,~   Z  	2B  )+   Z  ,<  ,<  ¥,<  )  '+      ©Z  3B   +   Z  ,~   [  ,<  Z  -,   Z   d  ªZ   ,~   H
ð!|@      (VARIABLE-VALUE-CELL UNDOFORM . 38)
(VARIABLE-VALUE-CELL UNDOFN . 41)
(VARIABLE-VALUE-CELL LISPXHIST . 48)
(VARIABLE-VALUE-CELL LISPXHIST . 0)
(NIL VARIABLE-VALUE-CELL UNDOSIDE0 . 62)
(NIL VARIABLE-VALUE-CELL UNDOSIDE . 60)
(NIL VARIABLE-VALUE-CELL UNDOTEM . 58)
SIDE
(NIL)
(LINKED-FN-CALL . LISTGET1)
(NIL)
(LINKED-FN-CALL . LISTPUT1)
(NIL VARIABLE-VALUE-CELL #UNDOSAVES . 0)
ERRORSET
NOSAVE
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . UNDONLSETQ1)
(LIST2 KNIL CONSNL ASZ SKLST ENTERF)       ! P  H   0   (           
UNDONLSETQ1 BINARY
            -.          Z   Z   3B  +   ,<  @    +   Z   Z  2B  +   Z  QD  Z  XD  Z   ,~   Z  XB   -,   +   Z  -,   +   Z  [  Z  XD  Z  [  [  QD  +   Z  ,<  [  d  Z   -,   :   [  XB  +   ,~   Z   ,~   (H	 D   (VARIABLE-VALUE-CELL LST . 15)
(VARIABLE-VALUE-CELL TAIL . 12)
(VARIABLE-VALUE-CELL UNDOSTATS . 41)
(VARIABLE-VALUE-CELL LST1 . 45)
(NIL VARIABLE-VALUE-CELL LISPXHIST . 0)
(NIL VARIABLE-VALUE-CELL TEM . 39)
((QUOTE undonlsetq) . 0)
(NIL)
(LINKED-FN-CALL . APPLY)
(SKNAR SKLST KNIL ENTERF)       H           
RESETUNDO BINARY
      ·    0    6-.          0Z   ,<  [  ,<  @  ± @ ,~   Z  2B   +   Z   ,<  ,<  ²  3XB   -,   +   Z  [  
,   XB   Z  Z$ÿXD  +   Z"ÿ,   XB  Z  3B   +   ,<  ,<  ²Z  f  4+   ,<  ²Z  ,<  ,   XB  Z  Z  ,   ,~   Z   3B   +   $Z  ,<  [  g  [  2B   9     ,   ,\  XB  Z  Z  [  XD  Z  [  ![  QD  Z  ¡,~   Z  0Bÿ+   ­Z  $,<  [  ¥g  [  2B   9  §   ,   ,\  XB  [  ¦,<  [  d  5,~   Z  +,<  Z  ,d  5,~   B28 @@   (VARIABLE-VALUE-CELL X . 70)
(VARIABLE-VALUE-CELL STOPFLG . 48)
(VARIABLE-VALUE-CELL LISPXHIST . 43)
(VARIABLE-VALUE-CELL UNDOSIDE . 91)
(VARIABLE-VALUE-CELL UNDOSIDE0 . 93)
SIDE
(NIL)
(LINKED-FN-CALL . LISTGET1)
(NIL)
(LINKED-FN-CALL . LISTPUT1)
(NIL)
(LINKED-FN-CALL . UNDONLSETQ1)
(MKN LIST2 CONSNL ASZ CONS SKLST KNIL ENTERF)   ª h   `   x   X  X         
    ) P          
UNDOPRINT BINARY
              -.           Z   -,   +   +   Z  -,   +   Z  Z  +   Z  ,<  ,<   ,<     ,~     (VARIABLE-VALUE-CELL X . 13)
(VARIABLE-VALUE-CELL EVENT . 0)
(NIL)
(LINKED-FN-CALL . PRIN2)
(KT SKLST SKNLST ENTERF)                 
RPAQ BINARY
              -.          ,<` ,<` ,<  $  ,<  ,<   &  ,~      (RPAQX . 1)
(RPAQY . 1)
INTERNAL
EVAL
SAVESET
(KT ENTER2)         
RPAQQ BINARY
             -.          ,<` ,<` ,<   &  ,~       (X . 1)
(Y . 1)
SAVESET
(KT ENTER2)    8      
SAVESET BINARY
         |   -.            |-.     ( ~   Zwþ-,   +   ,< ,<  ,   B +   {2B   +   Zw3B   +   {,< ,<  ,   B +   {2B   +   Zw3B   +   {,< ,<  ,   B +   {,<   ,<   ,<   ,<   Zwý3B   +   ,<wü +   ,<wü XBwþ3B   +   ZwüZ 7@  7   Z  +   ZwüZ 7@  7   Z  XBwZwþ2B   +   )Z   2B +   )Zw3B +   ),<wü,< ,<w| Z   3B   +   (,<wü,<    Zw}+   úZ   ,<  ,<  ,<  Zp  -,   +   .Z   +   >Zp  ,<  ,<wÿ/  Zp  -,   +   ¹Zp  2B 	+   ¹[p  [  Z  Zwû2B  +   ¹[p  Z  Zwý2B  7   Z   +   :Z   /  3B   +   ¼Zp  +   >[p  XBp  +   «/  XBwÿ3B   +   E,<  Z   -,   Z   d 2B   +   EZ XBw~+   ^Zwþ2B   +   ^Zw~3B +   ^2B +   É+   ^,<w,<wü,<  2B   +   M+   [Z   3B   +   YZw2B 7   Z   XBp  2B   +   YZw~3B +   WZwüZ ,   ,<  ,<   ,<    ,<wü,< ,<w~ ,<wü,< ,<w Z  %3B   +   ^,<wü,<    Zwþ3B   +   îZwüZw},   Z  )3B   +   eZw~3B +   e2B +   æ,<wþ +   úZ   3B   +   jZwþZ  æ,   XB  è,< 	,<w~,<wû,<wý,   ,<  Z  ad +   úZwý3B   +   r,<wü,<wü +   óZwüZw},   Z  m3B   +   úZw~3B +   ú,< 	,<   ,<wû,<wý,   ,<  Z  ód /  Zw+    3&4fR¶$S
à
"¥s2Bhª$HYL@@          (NAME . 1)
(VALUE . 1)
(TOPFLG . 1)
(FLG . 1)
(VARIABLE-VALUE-CELL DFNFLG . 154)
(VARIABLE-VALUE-CELL ADDSPELLFLG . 182)
(VARIABLE-VALUE-CELL LISPXHIST . 243)
(VARIABLE-VALUE-CELL UNDOSIDE0 . 129)
(VARIABLE-VALUE-CELL CLEARSTKLST . 211)
14
ERRORX
6
(NIL)
(LINKED-FN-CALL . GETTOPVAL)
(NIL)
(LINKED-FN-CALL . STKSCAN)
ALLPROP
NOBIND
VALUE
(NIL)
(LINKED-FN-CALL . /PUT)
(NIL)
(LINKED-FN-CALL . ADDSPELL)
SIDE
(NIL)
(LINKED-FN-CALL . LISTGET1)
UNDOSET
(NIL)
(LINKED-FN-CALL . TAILP)
NOUNDO
NOPROPSAVE
NOSAVE
1000
(NIL)
(LINKED-FN-CALL . EQUALN)
NOPRINT
((reset) . 0)
(NIL)
(LINKED-FN-CALL . LISPXPRINT)
VARS
(NIL)
(LINKED-FN-CALL . MARKASCHANGED)
NOSTACKUNDO
(NIL)
(LINKED-FN-CALL . RELSTK)
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . SETTOPVAL)
(URET4 LIST4 SET CONS SKLST BHC SKNLST KNOB KT KNIL LIST2 SKNLA BLKENT ENTER4)  H    m    t      Õ    B    8 ? 0 °    -     0     ^ 
p Ö 
 Î 	H ¹    P     u   â x Ü 
  Ð h Ã ( @ 8 º  . h     8  (        8                
UNDOSET BINARY
        3    +    ±-.          +@  ­  ,~   Z   2B   +   Z   3B   +   ,<  .,<   Z   ,<  ,<  "  ®,   ,<  Z  D  /Z  ,<  Z   D  ¯Z   ,~   Z   2B   +   [  Z  2B  7   7   +   ªZ  
3B   +   ,<  .Z  ,<  Z  ,<  ,<  "  ®,   B  /Z  ,<  Z  D  ¯Z   ,~   Z  ,<  Z  D  0XB   3B   +   ªZ  3B   +   ',<  .Z  ,<  Z  ,<  Z  ,<  Z  !D  °,   ,<  Z  D  /Z  ",<  Z  $,<  Z  F  1Z   ,~   &DL
$`"   (VARIABLE-VALUE-CELL PTR . 80)
(VARIABLE-VALUE-CELL NAME . 78)
(VARIABLE-VALUE-CELL VALUE . 82)
(VARIABLE-VALUE-CELL LISPXHIST . 76)
(VARIABLE-VALUE-CELL SPAGHETTIFLG . 28)
(NIL VARIABLE-VALUE-CELL TEM . 70)
UNDOSET
GETTOPVAL
UNDOSAVE
SETTOPVAL
FRAMESCAN
STKARG
SETSTKARG
(KT ALIST4 KNIL ENTERF)   0  (     &  
      p      x   H      
NEW/FN BINARY
               -.          @    ,~   Z   B  ,<  Z"  ,\  2B  +   Z  ,<  Z   D  [  B  XB   +   Z  XB  ,<  Z  D  XB  Z   ,<  Z  D  XB  Z   ,<  Z  Z  ,   D  XB  Z  ,~   B     (VARIABLE-VALUE-CELL FN . 39)
(VARIABLE-VALUE-CELL CHCONLST . 15)
(VARIABLE-VALUE-CELL /FNS . 31)
(VARIABLE-VALUE-CELL LISPXFNS . 38)
(NIL VARIABLE-VALUE-CELL FN1 . 34)
CHCON1
DUNPACK
PACK
/
PACK*
/NCONC1
(CONS ASZ ENTERF)   0    X      
UNDOLISPXBLOCK BINARY
   Ù   ©   P-.          ©-.     8*`­        ¹    g       Zp  2B   +   Z   XBp  3B   +   8,<   ,<   Z   -,   :   Z ¯Zw,   [  XBwÿZ  2B   +   ,<w,< ¯,< 0,<w},   ,   d °Z   +   7Zwÿ2B ±+   +   ZwÿZ  XBp  0Bÿ+   +   °Zwþ3B   +    p  ."  ,   XBp  Z   3B   +   ° p  ,> ),>  Z  ,   5"  ¢   "  +   #   !   ,^  /  3b  +   °Z  ¢,   4"  ­Z   3B   +   ¯Z   ,<  ,< 2Z  ¥,<  ,< ²,   f 33B 4+   ¯ZwÿZ ±XD  +   Z"ÿXBp  ZwÿXBwÿZp  XD  Zwþ3B   +   ,<wÿ[w,   ,\  QB  +   /  +    Z   +        @ ´  +   fZ µZwÿZ8  ,   XB` Zwÿ,<8  d 6ZwÿXB8  [` XB` ZwÿZ8  3B   +   ÐZ   ,<  ,<  ,< 7,<    ·,<  Zp  -,   +   È+   ÏZp  ,<  ,<p  ,<   ,<` ,  g2B   +   MZ   XB  Ì/  [p  XBp  +   Æ/  +   ÞZ  C[  ,<  Zp  -,   +   T+   ^Zp  ,<  ,<wÿ/  ,<p  ,<   ,<` ,  g2B   +   ÙZ  MXB  Y/  3B   +   ÜZp  +   ^[p  XBp  +   R/  Z  Ù2B   +   åZ` 3B   +   âZ ¸+   cZ 9,<  ,<    ¹Z   ,~   ,~   +        ,<   ,<   ,<   Zw~3B   +   oZwýZ  3B º+   nZwýZ  2B ;+   oZ   +    ,<wý,<   ,<wý, XBw2B   +   s+   n2B »+   ÷Zw~3B   +   v+   nZwXBp  +   ~Z <Zwý,   XBwÿ3B   +   }[wÿZ  Z  XBp  +   ~ZwýXBp  2B »+  ,<  ,<    ¹3B   +  +  Zwþ2B   +  ,<p  ,<w} ¼XBp  3B   +  ,< ½,<    ¹Zp  +        ,<   ,<   ,<   Zw~3B   +  ,< >Zp  -,   +  Z   +  Zp  ,<  Zp  Zwü,   [  XBwþ3B   +  Z   XD  /  [p  XBp  +  /  3B   +  Z ¾Zwý,   [  XBwÿ3B   +  Z   XD  Z ¯Zwý,   [  XBwZ  [  3B   +  ÊZw~3B   +  %ZwZ   XD  +  ÊZwXBw-,   +  (Z   +  ÊZw2B   +  ªZ »+  ÊZwþ3B   +  ¶,<  Zp  -,   +  ®+  5Zp  ,<  ,<wü,<wÿ, Ú2B   +  ²ZwXBw/  [p  XBp  +  ¬/  Zp  +  Ê[w,<  Zp  -,   +  ¹+  HZp  ,<  Zp  -,   +  ¼+  ÄZp  -,   +  ÂZp  ,<  [wÿZ  ,<  [w[  f ?+  ÄZp  ,<  [wÿd @Z   -,   :   /  [p  XBp  +  ·/  ,<   ,<wþ AZ   XBp  Z BZwý,   [  Z  XBw3B   +  Ùb Â,<  Zp  -,   +  R+  YZp  ,<  ,<p  ,<wü,<wü, 2B   +  ÖZwXBw/  [p  XBp  +  P/  Zp  +    @ Ã  +  ¨,< EZw,<8  ,<   ,   ,<  ,< 0,< Å,< F,   ,<  ,<   ,<   ,<   ,<   ,<   Zwü,<?ÿ,< Æ GXBp  2B   +  èZ   +    ,   XBw~Zw~3B   +  ç,< H,<   ,<   @ È ` +  óZ   Z JXB Zwþ,<?~,<?ý$ ÊZwþXB?~Z   ,~   3B   +  çZ   Zw~7  [  Z  Z  1H  +  ù2D   +  vXBwþ2B   +  û+  çZw~,<  [w~Z  [  Z  d K2B   +  ZwþZw~,   [  XBw~+  é[wþZ  XBp  [  [  [  Z  XBwXBw~[p  [  Z  XBwÿZwZwÿ2B  +  ,<w~,< L,<   ?[wþZ  [  Z  XBw+  ZwXBp  -,   +  Zp  -,   +  Zp  ,<  [wÿZ  ,<  [w[  f ?+  Zp  ,<  [wÿd @Z Ä-,   :   [wXBw+  [wZ  Zwþ2B  +  ¢,< Ì,<    MZ   +    ,< ÆZwþ,   ,<  ,<   Z  h NZwb O[wXBw+  +      q+C$$]  X¨A P0
Dy f0BeI e A"r($2DH0("`p2PA SA  $R            (UNDOLISPXBLOCK#0 . 1)
(VARIABLE-VALUE-CELL LISPXHIST . 586)
(VARIABLE-VALUE-CELL UNDOSAVES . 20)
(VARIABLE-VALUE-CELL #UNDOSAVES . 84)
(VARIABLE-VALUE-CELL DWIMFLG . 78)
(VARIABLE-VALUE-CELL DWIMWAIT . 81)
(VARIABLE-VALUE-CELL LISPXHISTORY . 161)
(VARIABLE-VALUE-CELL UNDOSTATS . 565)
UNDOSAVE
UNDOLISPX
UNDOLISPX1
UNDOLISPX2
SIDE
1
(NIL)
(LINKED-FN-CALL . NCONC)
NOSAVE
N
"undosaves, continue saving"
(NIL)
(LINKED-FN-CALL . ASKUSER)
Y
(NIL VARIABLE-VALUE-CELL UNDONEFLG . 189)
NIL
:
(NIL)
(LINKED-FN-CALL . LDIFF)
ENTRIES
(NIL)
(LINKED-FN-CALL . LISPXFIND)
"not found.
"
"nothing saved.
"
(NIL)
(LINKED-FN-CALL . PRIN1)
UNDO
undo
already
*HISTORY*
(NIL)
(LINKED-FN-CALL . UNDOPRINT)
" undone.
"
((ENTERED EDITHIST EDIT) . 0)
EDIT
(NIL)
(LINKED-FN-CALL . /RPLNODE)
(NIL)
(LINKED-FN-CALL . APPLY)
(NIL)
(LINKED-FN-CALL . /ATTACH)
*GROUP*
(NIL)
(LINKED-FN-CALL . REVERSE)
(T VARIABLE-VALUE-CELL EDITQUIETFLG . 0)
(1500 VARIABLE-VALUE-CELL MAXLEVEL . 0)
(CLISP%  VARIABLE-VALUE-CELL CLISPTRANFLG . 489)
F
((BELOW ^) . 0)
UP
*LISPXPRINT*
(NIL)
(LINKED-FN-CALL . LISTGET1)
((DUMMY) . 0)
(0 . 1)
(0 . 1)
(0 . 1)
ERRORSET
EDITL
(NIL)
(LINKED-FN-CALL . TAILP)
((QUOTE PATCHED) . 0)
" undone.
"
(NIL)
(LINKED-FN-CALL . LISPXPRIN1)
(NIL)
(LINKED-FN-CALL . LISPXPUT)
(NIL)
(LINKED-FN-CALL . LISPXREPRINT)
(CF CONSNL LIST4 LIST3 SKLST URET6 URET1 SKNLST KT URET2 CONS BHC GUNBOX MKN ASZ ALIST2 LIST2 FMEMB SKNAR KNIL BLKENT ENTER1) o   ¤       p   "@ `   $0i 0 x   p   < . p 
8 H   ¥ $(¡ 8Þ 0  ä 
x F   ©  ¸    6   Z  I p6 @ ` _ 0 Ö 
 Î   %    '    H            ¬ (     M p ( ù X     `      0ù Hm Hk ç Hd 8c (V pÉ  , ( H#  @ P x 8 ( 8 ( õ ( ð p j  è   å  ` 8 Y 	H K 0 9 @ ¨ `  @  ( 
             
UNDOSAVE BINARY
               -.           ,<    ,~       (UNDOFORM . 1)
(HISTENTRY . 1)
UNDOSAVE
(NIL)
(LINKED-FN-CALL . UNDOLISPXBLOCK)
(ENTER2)      
UNDOLISPX BINARY
            -.           ,<    ,~       (LINE . 1)
UNDOLISPX
(NIL)
(LINKED-FN-CALL . UNDOLISPXBLOCK)
(ENTER1)      
UNDOLISPX1 BINARY
                -.           ,<    ,~       (EVENT . 1)
(FLG . 1)
(DWIMCHANGES . 1)
UNDOLISPX1
(NIL)
(LINKED-FN-CALL . UNDOLISPXBLOCK)
(ENTER3)    
UNDOLISPX2 BINARY
                -.           ,<    ,~       (X . 1)
(FORGETFLG . 1)
(DWIMCHANGES . 1)
UNDOLISPX2
(NIL)
(LINKED-FN-CALL . UNDOLISPXBLOCK)
(ENTER3)     
/ADDPROP BINARY
       È    »    Æ-.           »Z   2B   +   ,<  >Z   ,<  Z   ,<  ,   ,   B  ¾+   -,   +   ,<  ?,<  ,   B  ¾Z  b  ¿,<  @  À  ,~   Z   -,   +   2B   +   ­Z   3B   +   ­Z  ,<  Z  ,   XB  ,   XB   Z   3B   +   ,<  BZ  ,<  Z  ,<  ,   ,<  Z  d  Â[  Z  QD  Z  ,~   [  -,   +   +   ­Z  Z  2B  +   ª[  ,<  Z   3B   +   ¦Z  [  ¡Z  ,   +   )[  ¤Z  ,<  Z  $d  ÃXB  (d  Ä+   Z  ¦XB  [  [  XB  ª+   Z   ,<  Z  ),   XB  ®,<  Z  b  ¿,   ,   XB  Z  3B   +   9,<  BZ  °,<  Z  ²,<  ,   ,<  Z  3d  ÂZ  5,<  Z  6d  Å+   Y() 0   (VARIABLE-VALUE-CELL ATM . 114)
(VARIABLE-VALUE-CELL PROP . 91)
(VARIABLE-VALUE-CELL NEW . 95)
(VARIABLE-VALUE-CELL FLG . 69)
(VARIABLE-VALUE-CELL LISPXHIST . 112)
7
ERRORX
14
(NIL)
(LINKED-FN-CALL . GETPROPLIST)
(VARIABLE-VALUE-CELL X . 89)
(NIL VARIABLE-VALUE-CELL X0 . 86)
(NIL VARIABLE-VALUE-CELL TEM . 116)
/PUT-1
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . /NCONC1)
(NIL)
(LINKED-FN-CALL . /RPLACA)
(NIL)
(LINKED-FN-CALL . SETPROPLIST)
(CONSS1 CONS LIST3 CONSNL SKNLST SKNLA ALIST2 LIST2 KNIL ENTERF)  3 (   h         0 @   p           p   (     ´ @     0      
/ATTACH BINARY
              -.           Z   -,   +   ,<  Z   ,<  Z  [  ,   f  ,~   2B   +   Z  ,   ,~   ,<  ,<  ,   B  ,~   "  (VARIABLE-VALUE-CELL X . 16)
(VARIABLE-VALUE-CELL LST . 10)
(NIL)
(LINKED-FN-CALL . /RPLNODE)
4
ERRORX
(LIST2 CONSNL KNIL CONS SKLST ENTERF)                          
/CONTROL BINARY
               -.          Z   ,<  Z   d  XB  Z   3B   +   
,<  Z  ,<  Z  ,<  ,   ,<  Z  d  Z  ,~     (VARIABLE-VALUE-CELL FLG . 20)
(VARIABLE-VALUE-CELL TTBL . 14)
(VARIABLE-VALUE-CELL LISPXHIST . 18)
(NIL)
(LINKED-FN-CALL . CONTROL)
/CONTROL
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(LIST3 KNIL ENTERF)       X      
/DELETECONTROL BINARY
            -.          Z   b  XB  Z   3B   +   Z   3B   +   ,<  Z   ,<  ,<  ,<   Z  f  ,<  Z  ,<  ,   ,<  Z  d  Z  ,<  Z  ,<  Z  
f  ,~   &     (VARIABLE-VALUE-CELL TYPE . 26)
(VARIABLE-VALUE-CELL MESSAGE . 28)
(VARIABLE-VALUE-CELL TTBL . 30)
(VARIABLE-VALUE-CELL LISPXHIST . 24)
(NIL)
(LINKED-FN-CALL . GETTERMTABLE)
/DELETECONTROL
(NIL)
(LINKED-FN-CALL . DELETECONTROL)
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(LIST4 KNIL ENTERF)      	  `        
/DREMOVE BINARY
               -.           Z   -,   +   Z   ,~   Z   Z  2B  +   [  3B   +   Z  ,<  [  Z  ,<  [  [  f  +   @    ,~   Z  
XB   [  -,   +   Z  ,~   Z  [  Z  2B  +   Z  ,<  [  [  d  +   [  XB  +   ,~   @8d   (VARIABLE-VALUE-CELL X . 34)
(VARIABLE-VALUE-CELL Y . 46)
(NIL)
(LINKED-FN-CALL . /RPLNODE)
(NIL VARIABLE-VALUE-CELL Z . 32)
(NIL)
(LINKED-FN-CALL . /RPLACD)
(KNIL SKNLST ENTERF)  x       0      
/DREVERSE BINARY
        
    -.           
@    ,~   Z   XB   -,   +   Z   ,~   [  XB  Z  ,<  Z  d  XB  +   
  (VARIABLE-VALUE-CELL X . 13)
(NIL VARIABLE-VALUE-CELL Y . 14)
(NIL VARIABLE-VALUE-CELL Z . 18)
(NIL)
(LINKED-FN-CALL . /RPLACD)
(SKNLST ENTERF)    P      
/DSUBST BINARY
      %        $-.           @    ,~   Z   ,<  Z   XB   ,\  2B  +   Z   b   ,~   Z  -,   +   Z  ,~   Z  -,   +   Z  2B  +   +   Z  Z  ,   3B   +   Z  ,<  Z  b   d  !+   Z  ,<  Z  ,<  Z  f  "Z  3B   +   [  2B  +   Z  ,<  Z  b   d  #+   [  XB  +   Dp$G (VARIABLE-VALUE-CELL NEW . 53)
(VARIABLE-VALUE-CELL OLD . 45)
(VARIABLE-VALUE-CELL EXPR . 58)
(NIL VARIABLE-VALUE-CELL B . 19)
(NIL)
(LINKED-FN-CALL . COPY)
(NIL)
(LINKED-FN-CALL . /RPLACA)
(NIL)
(LINKED-FN-CALL . /DSUBST)
(NIL)
(LINKED-FN-CALL . /RPLACD)
(KNIL EQUAL SKLA SKNLST ENTERF)                       
/ECHOCONTROL BINARY
                -.          Z   b  XB  Z   3B   +   Z   3B   +   ,<  Z   ,<  ,<  ,<   Z  f  ,<  Z  ,<  ,   ,<  Z  d  Z  Z  ,<  ,<  Z  
f  ,~   &     (VARIABLE-VALUE-CELL CHAR . 27)
(VARIABLE-VALUE-CELL MODE . 26)
(VARIABLE-VALUE-CELL TTBL . 30)
(VARIABLE-VALUE-CELL LISPXHIST . 24)
(NIL)
(LINKED-FN-CALL . GETTERMTABLE)
/ECHOCONTROL
(NIL)
(LINKED-FN-CALL . ECHOCONTROL)
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(LIST4 KNIL ENTERF) @      H      
/ECHOMODE BINARY
            -.          Z   ,<  Z   d  XB  Z   3B   +   
,<  Z  ,<  Z  ,<  ,   ,<  Z  d  Z  ,~     (VARIABLE-VALUE-CELL FLG . 20)
(VARIABLE-VALUE-CELL TTBL . 14)
(VARIABLE-VALUE-CELL LISPXHIST . 18)
(NIL)
(LINKED-FN-CALL . ECHOMODE)
/ECHOMODE
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(LIST3 KNIL ENTERF)     X      
/LCONC BINARY
       #        "-.           @    ,~   Z   2B   +   Z   ,~   -,   +   	b  XB   [  3B   +   Z  XB  +   Z  2B   +   Z  	Z  ,   ,~   -,   +   XB  +   Z  2B   +   Z  ,<  Z  ,<  Z  f  ,~   [  ,<  Z  d  Z  ,<  Z  d  ,~   ,<   Z  d  !Z   ,~   #	)(  (VARIABLE-VALUE-CELL PTR . 46)
(VARIABLE-VALUE-CELL X . 44)
(NIL VARIABLE-VALUE-CELL XX . 52)
(NIL)
(LINKED-FN-CALL . LAST)
(NIL)
(LINKED-FN-CALL . /RPLNODE)
(NIL)
(LINKED-FN-CALL . /RPLACD)
"bad argument - LCONC"
(NIL)
(LINKED-FN-CALL . ERROR)
(SKNLST CONS SKLST KNIL ENTERF)   p   `    h   @  @ 	  H      
/LISTPUT BINARY
     %        $-.           Z   -,   +   ,<  ,<  ,   B  ,<  @     ,~   [   -,   +   	+   Z  Z   2B  +   [  	,<  Z   d  !Z  ,~   Z  XB   [  [  XB  -,   +   +   2B   +   [  ,<  Z  ,<  Z  ,<  ,   d  "+   Z  ,<  Z  ,<  Z  ,<  Z  [  ,   ,   f  #+   D  ` (VARIABLE-VALUE-CELL LST . 54)
(VARIABLE-VALUE-CELL PROP . 49)
(VARIABLE-VALUE-CELL VAL . 51)
4
ERRORX
(VARIABLE-VALUE-CELL X . 32)
(NIL VARIABLE-VALUE-CELL X0 . 38)
(NIL)
(LINKED-FN-CALL . /RPLACA)
(NIL)
(LINKED-FN-CALL . /RPLACD)
(NIL)
(LINKED-FN-CALL . /RPLNODE)
(CONSS1 CONS KNIL SKLST LIST2 SKNLST ENTERF)   P   H   0      p       0      
/LISTPUT1 BINARY
            -.           Z   ,<  @     ,~   Z   -,   +   
Z  ,<  Z   ,<  Z   ,<  ,   d  ,~   Z  Z  2B  +   [  
3B   +   [  ,<  Z  d  +   Z  ,<  Z  ,   d  Z  ,~   [  XB  +   B    (VARIABLE-VALUE-CELL LST . 37)
(VARIABLE-VALUE-CELL PROP . 21)
(VARIABLE-VALUE-CELL VAL . 34)
(VARIABLE-VALUE-CELL X . 40)
(NIL)
(LINKED-FN-CALL . /NCONC)
(NIL)
(LINKED-FN-CALL . /RPLACA)
(NIL)
(LINKED-FN-CALL . /RPLACD)
(CONSNL KNIL LIST2 SKNLST ENTERF)  (   X       X      
/MAPCON BINARY
              -.           @    ,~   Z   -,   +   Z   ,~   Z   ,<  ,<   "  ,   XB   3B   +   Z   3B   +   ,<  Z  d  +   Z  XB  XB  [  XB  3B   +   XB  +   Z   3B   +   ,<  Z  ,<   "  ,   +   [  XB  +    L H   (VARIABLE-VALUE-CELL MAPX . 45)
(VARIABLE-VALUE-CELL MAPFN1 . 11)
(VARIABLE-VALUE-CELL MAPFN2 . 35)
(NIL VARIABLE-VALUE-CELL MAPL . 28)
(NIL VARIABLE-VALUE-CELL MAPE . 33)
(NIL VARIABLE-VALUE-CELL MAPY . 30)
(NIL)
(LINKED-FN-CALL . /RPLACD)
(KNIL EVCC SKNLST ENTERF)  0  0          H      
/MAPCONC BINARY
             -.           @    ,~   Z   -,   +   Z   ,~   Z   ,<  Z  ,<   "  ,   XB   3B   +   Z   3B   +   ,<  Z  d  +   Z  XB  
XB  [  XB  3B   +   XB  +   Z   3B   +   ,<  Z  ,<   "  ,   +   [  XB  +    &$   (VARIABLE-VALUE-CELL MAPX . 46)
(VARIABLE-VALUE-CELL MAPFN1 . 11)
(VARIABLE-VALUE-CELL MAPFN2 . 36)
(NIL VARIABLE-VALUE-CELL MAPL . 29)
(NIL VARIABLE-VALUE-CELL MAPE . 34)
(NIL VARIABLE-VALUE-CELL MAPY . 31)
(NIL)
(LINKED-FN-CALL . /RPLACD)
(KNIL EVCC SKNLST ENTERF)  8  8 
         H      
/MOVD BINARY
        «        *-.          Z   b  2B   +   7   Z   ,<  @      ,~   Z   b  2B   +   ,<   ,<   ,<     !Z  ,<  ,<   ,<     ",<  #,<   ,<     !Z  ,<  Z   3B   +   Z  b  £b  ¤+   Z  b  d  ¥Z  b  ¦3B   +   Z  ,<  ,<  §Z   f  (Z   3B   +   Z  b  )Z  ,~   Y!vRJ       (VARIABLE-VALUE-CELL FROM . 39)
(VARIABLE-VALUE-CELL TO . 56)
(VARIABLE-VALUE-CELL FLG . 32)
(VARIABLE-VALUE-CELL ADDSPELLFLG . 51)
(NIL)
(LINKED-FN-CALL . GETD)
(VARIABLE-VALUE-CELL NEWFLG . 49)
"****note: "
(NIL)
(LINKED-FN-CALL . LISPXPRIN1)
(NIL)
(LINKED-FN-CALL . LISPXPRIN2)
" has no definition
"
(NIL)
(LINKED-FN-CALL . VIRGINFN)
(NIL)
(LINKED-FN-CALL . COPY)
(NIL)
(LINKED-FN-CALL . /PUTD)
(NIL)
(LINKED-FN-CALL . EXPRP)
FNS
(NIL)
(LINKED-FN-CALL . MARKASCHANGED)
(NIL)
(LINKED-FN-CALL . ADDSPELL)
(KT KNIL ENTERF)  p  P  ( 
  H   0     P        
/NCONC BINARY
            -.          @     ,~   Z   Z   2B  +   Z   ,~      ."  ,   XB  ,   .wZ  XB   Z   -,   +   b  XB  
,<  Z  d  +   Z  XB  XB  +    1D     (VARIABLE-VALUE-CELL L . 7)
(NIL VARIABLE-VALUE-CELL VAL . 31)
(NIL VARIABLE-VALUE-CELL X . 30)
(NIL VARIABLE-VALUE-CELL TEM . 29)
(0 VARIABLE-VALUE-CELL N . 15)
(NIL)
(LINKED-FN-CALL . LAST)
(NIL)
(LINKED-FN-CALL . /RPLACD)
(SKLST IUNBOX MKN ENTERF)  8             
/NCONC1 BINARY
              -.           Z   ,<  Z   Z  ,   Z   QD  d  ,~      (VARIABLE-VALUE-CELL LST . 6)
(VARIABLE-VALUE-CELL X . 5)
(NIL)
(LINKED-FN-CALL . /NCONC)
(KNIL CONS ENTERF)             
/PRINTLEVEL BINARY
        
    -.           
Z   ,<  Z   d  ,<  @     +   Z  ,<  Z   ,<  ,   b  Z  ,~   ,~   ,  (VARIABLE-VALUE-CELL CARVAL . 3)
(VARIABLE-VALUE-CELL CDRVAL . 5)
(NIL)
(LINKED-FN-CALL . PRINTLEVEL)
(VARIABLE-VALUE-CELL RESULT . 17)
/PRINTLEVEL
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(LIST2 ENTERF)        
/PUT BINARY
    ¾    3    ¼-.          3Z   2B   +   ,<  5,<  Z   ,<  ,   ,   B  µ+   
-,   +   
,<  6,<  ,   B  µZ  b  ¶,<  @  ·  ,~   Z   -,   +   2B   +   &Z   3B   +   &Z  ,<  Z   ,<  ,   XB   Z   3B   +   ,<  9Z  
,<  Z  ,<  ,   ,<  Z  d  ¹[  Z  QD  Z  ,~   [  -,   +   +   &Z  Z  2B  +   #[  ,<  Z  d  º+   Z   XB  [  [  XB  #+   Z  ,<  Z  ¡,<  Z  b  ¶,   ,   XB  Z  3B   +   °,<  9Z  (,<  Z  *,<  ,   ,<  Z  ªd  ¹Z  ¬,<  Z  ­d  »+   2PR@ F0`     (VARIABLE-VALUE-CELL ATM . 97)
(VARIABLE-VALUE-CELL PROP . 76)
(VARIABLE-VALUE-CELL VAL . 78)
(VARIABLE-VALUE-CELL LISPXHIST . 95)
7
ERRORX
14
(NIL)
(LINKED-FN-CALL . GETPROPLIST)
(VARIABLE-VALUE-CELL X . 74)
(NIL VARIABLE-VALUE-CELL X0 . 71)
(NIL VARIABLE-VALUE-CELL TEM . 99)
/PUT-1
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . /RPLACA)
(NIL)
(LINKED-FN-CALL . SETPROPLIST)
(CONSS1 LIST3 SKNLST SKNLA ALIST2 LIST2 KNIL ENTERF) ( *    ¯    `                    , X  x        
/PUTASSOC BINARY
              -.           Z   -,   +   ,<  ,<  ,   B  ,<  @     ,~   Z   -,   +   	+   Z  Z   2B  +   Z  ,<  Z   d  Z  ,~   [  -,   +   Z  ,<  Z  Z  ,   ,   d  +   XB  +   D4    (VARIABLE-VALUE-CELL KEY . 33)
(VARIABLE-VALUE-CELL VAL . 34)
(VARIABLE-VALUE-CELL ALST . 3)
4
ERRORX
(VARIABLE-VALUE-CELL X . 39)
(NIL)
(LINKED-FN-CALL . /RPLACD)
(CONSNL CONS LIST2 SKNLST ENTERF) 0   (    P   x   0      
/PUTD BINARY
                -.          Z   b  ,<  @     ,~   Z  ,<  Z   ,<  Z   f  Z   3B   +   ,<  Z  ,<  Z   ,<  ,   ,<  Z  d  Z  ,~    L      (VARIABLE-VALUE-CELL FN . 19)
(VARIABLE-VALUE-CELL DEF . 27)
(VARIABLE-VALUE-CELL FLG . 13)
(VARIABLE-VALUE-CELL LISPXHIST . 25)
(NIL)
(LINKED-FN-CALL . GETD)
(VARIABLE-VALUE-CELL TEM . 21)
(NIL)
(LINKED-FN-CALL . PUTD)
/PUTD
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(LIST3 KNIL ENTERF)       	       
/PUTDQ BINARY
            -.          Z   ,<  Z   d  Z  ,~       (VARIABLE-VALUE-CELL X . 7)
(VARIABLE-VALUE-CELL Y . 5)
(NIL)
(LINKED-FN-CALL . /PUTD)
(ENTERF)     
/PUTHASH BINARY
             -.          Z   3B   +   ,<  Z   ,<  Z  Z   ,   ,<  Z  ,<  ,   ,<  Z  d  Z  ,<  Z   ,<  Z  f  ,~     (VARIABLE-VALUE-CELL ITEM . 19)
(VARIABLE-VALUE-CELL VAL . 21)
(VARIABLE-VALUE-CELL ARRAY . 23)
(VARIABLE-VALUE-CELL LISPXHIST . 17)
/PUTHASH
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . PUTHASH)
(LIST4 GETHSH KNIL ENTERF)      h    0      
/PUTPROP BINARY
     ¾    3    ¼-.          3Z   2B   +   ,<  5,<  Z   ,<  ,   ,   B  µ+   
-,   +   
,<  6,<  ,   B  µZ  b  ¶,<  @  ·  ,~   Z   -,   +   2B   +   &Z   3B   +   &Z  ,<  Z   ,<  ,   XB   Z   3B   +   ,<  9Z  
,<  Z  ,<  ,   ,<  Z  d  ¹[  Z  QD  Z  ,~   [  -,   +   +   &Z  Z  2B  +   #[  ,<  Z  d  º+   Z   XB  [  [  XB  #+   Z  ,<  Z  ¡,<  Z  b  ¶,   ,   XB  Z  3B   +   °,<  9Z  (,<  Z  *,<  ,   ,<  Z  ªd  ¹Z  ¬,<  Z  ­d  »+   2PR@ F0`     (VARIABLE-VALUE-CELL ATM . 97)
(VARIABLE-VALUE-CELL PROP . 76)
(VARIABLE-VALUE-CELL VAL . 78)
(VARIABLE-VALUE-CELL LISPXHIST . 95)
7
ERRORX
14
(NIL)
(LINKED-FN-CALL . GETPROPLIST)
(VARIABLE-VALUE-CELL X . 74)
(NIL VARIABLE-VALUE-CELL X0 . 71)
(NIL VARIABLE-VALUE-CELL TEM . 99)
/PUT-1
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . /RPLACA)
(NIL)
(LINKED-FN-CALL . SETPROPLIST)
(CONSS1 LIST3 SKNLST SKNLA ALIST2 LIST2 KNIL ENTERF) ( *    ¯    `                    , X  x        
/REMPROP BINARY
       ª    ¡    )-.          ¡Z   -,   +   ,<  #,<  ,   B  £Z  b  $,<  @  %  ,~   Z   -,   +   [  -,   +   Z   ,~   Z  Z   2B  +   Z  XB  Z   3B   +   ,<  ¦Z  ,<  [   ,<  Z  ,<  ,   ,<  Z  d  'Z  3B   +   [  [  [  QD  +   Z  ,<  [  [  d  ([  [  XB  +   Z  XB  [  [  XB  +   A H!     (VARIABLE-VALUE-CELL ATM . 52)
(VARIABLE-VALUE-CELL PROP . 28)
(VARIABLE-VALUE-CELL LISPXHIST . 42)
14
ERRORX
(NIL)
(LINKED-FN-CALL . GETPROPLIST)
(VARIABLE-VALUE-CELL X . 65)
(NIL VARIABLE-VALUE-CELL X0 . 62)
(NIL VARIABLE-VALUE-CELL VAL . 29)
/PUT+1
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . SETPROPLIST)
(LIST4 KNIL SKNLST SKLST LIST2 SKNLA ENTERF)          0       P    0      
/RPLACA BINARY
              -.          Z   -,   +   Z   3B   +   ,<  Z  ,<  Z  ,   ,<  Z  d  Z  ,<  Z   d  ,~   2B   +   Z  3B   +   ,<  ,<  ,   B  ,~   Z   ,~   -,   +   ,<  ,<     ,<  Z  ,<  ,   B  ,~   0X@   (VARIABLE-VALUE-CELL LST . 40)
(VARIABLE-VALUE-CELL Y . 24)
(VARIABLE-VALUE-CELL LISPXHIST . 15)
/RPLACA
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . RPLACA)
7
ERRORX
"Use SETTOPVAL to 'set' a top level value
"
(NIL)
(LINKED-FN-CALL . PRIN1)
4
(KT SKLA LIST2 ALIST3 KNIL SKLST ENTERF)           x    x     @            
/RPLACD BINARY
                -.          Z   -,   +   Z   3B   +   ,<  Z  ,<  [  ,   ,<  Z  d  Z  ,<  Z   d  ,~   2B   +   Z  3B   +   ,<  ,<  ,   B  ,~   Z   ,~   -,   +   ,<  ,<     ,<  Z  ,<  ,   B  ,~   0X@   (VARIABLE-VALUE-CELL LST . 40)
(VARIABLE-VALUE-CELL Y . 24)
(VARIABLE-VALUE-CELL LISPXHIST . 15)
/RPLACD
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . RPLACD)
7
ERRORX
"Use SETPROPLIST to 'set' a property list
"
(NIL)
(LINKED-FN-CALL . PRIN1)
4
(KT SKLA LIST2 ALIST3 KNIL SKLST ENTERF)           x    x     @            
/RPLNODE BINARY
               -.          Z   -,   +   Z   3B   +   	Z  ,<  Z  [  ,   ,   ,<  Z  d  Z  Z   XD  Z   QD  ,~   ,<  ,<  ,   B  ,~    	      (VARIABLE-VALUE-CELL X . 18)
(VARIABLE-VALUE-CELL A . 19)
(VARIABLE-VALUE-CELL D . 21)
(VARIABLE-VALUE-CELL LISPXHIST . 16)
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
4
ERRORX
(LIST2 CONSS1 CONS KNIL SKLST ENTERF)                         
/RPLNODE2 BINARY
          
    -.           
Z   3B   +   -,   +   ,<  ,<  ,   B  ,~   Z   ,<  Z  ,<  [  f  ,~   d  (VARIABLE-VALUE-CELL X . 13)
(VARIABLE-VALUE-CELL Y . 17)
4
ERRORX
(NIL)
(LINKED-FN-CALL . /RPLNODE)
(LIST2 SKNLST KNIL ENTERF)    `    @    0      
/SET BINARY
            -.           Z   ,<  Z   ,<  ,<   ,<    ,~   0   (VARIABLE-VALUE-CELL NAME . 3)
(VARIABLE-VALUE-CELL VALUE . 5)
NOPROPSAVE
(NIL)
(LINKED-FN-CALL . SAVESET)
(KNIL ENTERF)  H      
/SETA BINARY
                -.          Z   3B   +   ,<  Z   ,<  Z   ,<  Z  ,<  Z  d  ,   b  Z  ,<  Z  ,<  Z   f  ,~    P  (VARIABLE-VALUE-CELL A . 17)
(VARIABLE-VALUE-CELL N . 19)
(VARIABLE-VALUE-CELL V . 21)
(VARIABLE-VALUE-CELL LISPXHIST . 3)
/SETA
(NIL)
(LINKED-FN-CALL . ELT)
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . SETA)
(ALIST4 KNIL ENTERF)       0      
/SETBRK BINARY
              -.          Z   3B   +   ,<  Z   b  ,<  ,<   Z  ,<  ,   ,<  Z  d  Z   ,<  Z   ,<  Z  f  ,~      (VARIABLE-VALUE-CELL LST . 17)
(VARIABLE-VALUE-CELL FLG . 19)
(VARIABLE-VALUE-CELL RDTBL . 21)
(VARIABLE-VALUE-CELL LISPXHIST . 15)
/SETBRK
(NIL)
(LINKED-FN-CALL . GETBRK)
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . SETBRK)
(LIST4 KNIL ENTERF)    x    `        
/SETD BINARY
             -.          Z   3B   +   ,<  Z   ,<  Z   ,<  Z  ,<  Z  d  ,   b  Z  ,<  Z  ,<  Z   f  ,~    P  (VARIABLE-VALUE-CELL A . 17)
(VARIABLE-VALUE-CELL N . 19)
(VARIABLE-VALUE-CELL V . 21)
(VARIABLE-VALUE-CELL LISPXHIST . 3)
/SETD
(NIL)
(LINKED-FN-CALL . ELTD)
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . SETD)
(ALIST4 KNIL ENTERF)      0      
/SETPROPLIST BINARY
          	    -.          	Z   3B   +   ,<  Z   ,<  ,<    ,   b  Z  ,<  Z   d  ,~   
  (VARIABLE-VALUE-CELL ATM . 13)
(VARIABLE-VALUE-CELL LST . 15)
(VARIABLE-VALUE-CELL LISPXHIST . 3)
/SETPROPLIST
(NIL)
(LINKED-FN-CALL . GETPROPLIST)
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . SETPROPLIST)
(ALIST3 KNIL ENTERF)   h    0      
/SETSEPR BINARY
             -.          Z   3B   +   ,<  Z   b  ,<  ,<   Z  ,<  ,   ,<  Z  d  Z   ,<  Z   ,<  Z  f  ,~      (VARIABLE-VALUE-CELL LST . 17)
(VARIABLE-VALUE-CELL FLG . 19)
(VARIABLE-VALUE-CELL RDTBL . 21)
(VARIABLE-VALUE-CELL LISPXHIST . 15)
/SETSEPR
(NIL)
(LINKED-FN-CALL . GETSEPR)
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . SETSEPR)
(LIST4 KNIL ENTERF)         0      
/SETSYNTAX BINARY
        ¸    ©    ¶-.          ©Z   3B   +   &@  «  +   ¥Z   3B  ¬+   3B  -+   3B  ­+   3B  .+   3B  ®+   3B  /+   3B  ¯+   3B  0+   2B  °+   Z   b  1XB  +   Z  2B   +   b  2XB  Z   ,<  d  3XB   ,<  4Z  ,<  ,<  Z  ,<  ,   ,<  Z  d  ´Z  ,<  Z  ,<  Z  f  µXB   -,   +   ¤,<  4,<  Z  ,<  Z  d  3,<  Z   ,<  ,   ,<  Z  d  ´Z  ,~   ,~   Z  ,<  Z  ,<  Z  ¡f  µ,~   /©
 A @        (VARIABLE-VALUE-CELL CH . 76)
(VARIABLE-VALUE-CELL CLASS . 78)
(VARIABLE-VALUE-CELL TABLE . 80)
(VARIABLE-VALUE-CELL LISPXHIST . 71)
(NIL VARIABLE-VALUE-CELL OLDCLASS . 40)
(NIL VARIABLE-VALUE-CELL OLDCH . 73)
CHARDELETE
DELETECHAR
LINEDELETE
DELETELINE
RETYPE
CTRLV
CNTRLV
EOL
NONE
(NIL)
(LINKED-FN-CALL . GETTERMTABLE)
(NIL)
(LINKED-FN-CALL . GETREADTABLE)
(NIL)
(LINKED-FN-CALL . GETSYNTAX)
/SETSYNTAX
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . SETSYNTAX)
(SKNM LIST4 KNIL ENTERF)  `   8       0      
/SETATOMVAL BINARY
                -.          Z   2B   +   Z   3B   +   ,<  ,<  ,   B  ,~   Z   ,~   2B   +   Z  3B   7   7   +   ,<  Z  	,<  ,   B  ,~   -,   +   Z   3B   +   ,<  Z  ,<  Z  Z 7@  7   Z  ,   b  Z  Z  ,   ,~   ,<  ,<  ,   B  ,~   21 B   (VARIABLE-VALUE-CELL ATM . 44)
(VARIABLE-VALUE-CELL VAL . 45)
(VARIABLE-VALUE-CELL LISPXHIST . 31)
6
ERRORX
/SETATOMVAL
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
14
(SET ALIST3 KNOB SKLA KT LIST2 KNIL ENTERF)      `   P   x   0         h         0      
/SETTOPVAL BINARY
        !         -.          Z   2B   +   Z   3B   +   ,<  ,<  ,   B  ,~   Z   ,~   2B   +   Z  3B   7   7   +   ,<  Z  	,<  ,   B  ,~   -,   +   Z   3B   +   ,<  Z  ,<  ,<    ,   b  Z  ,<  Z  d  ,~   ,<  ,<  ,   B  ,~   21)   (VARIABLE-VALUE-CELL ATM . 41)
(VARIABLE-VALUE-CELL VAL . 43)
(VARIABLE-VALUE-CELL LISPXHIST . 31)
6
ERRORX
/SETTOPVAL
(NIL)
(LINKED-FN-CALL . GETTOPVAL)
(NIL)
(LINKED-FN-CALL . UNDOSAVE)
(NIL)
(LINKED-FN-CALL . SETTOPVAL)
14
(ALIST3 SKLA KT LIST2 KNIL ENTERF)   H   x   0        h         0      
/TCONC BINARY
               -.           @    ,~   Z   2B   +   Z   ,   XB      ,   ,~   -,   +   
,<  d  ,~   [  2B   +   Z  
,<  Z  ,   XB  ,<  f  ,~   Z  ,<  [  ,<  Z  [  ,   Z   QD  d  [  d  ,~          (VARIABLE-VALUE-CELL PTR . 36)
(VARIABLE-VALUE-CELL X . 35)
(NIL VARIABLE-VALUE-CELL XX . 27)
"bad argument - TCONC"
(NIL)
(LINKED-FN-CALL . ERROR)
(NIL)
(LINKED-FN-CALL . /RPLNODE)
(NIL)
(LINKED-FN-CALL . /RPLACD)
(SKNLST CONS CONSNL KNIL ENTERF)        x   `      8        
SAVESETQ BINARY
       	        -.          Z   ,<  ,<  [  ,<  ,<  &  D  ,~   8   (VARIABLE-VALUE-CELL SETQX . 6)
PROG1
INTERNAL
APPLY
SAVESET
(ENTERF)     
SAVESETQQ BINARY
            -.          Z   ,<  Z   D  ,~       (VARIABLE-VALUE-CELL SETQX . 3)
(VARIABLE-VALUE-CELL SETQY . 5)
SAVESET
(ENTERF)      
RPAQ? BINARY
        ¡         -.         Z   ,<  Zp  -,   +   Zp  Z 7@  7   Z  2B  +   ,<p  ,<   Z   F  B  3B   +   Z   +   Z   /  3B   +   Z   ,~   Z   Z  ,<  ,<  ,<  &  Z   3B   +   Z  ,<  ,<   $  Z  ,<  Z   ,<  ,<  $  D   ,~   AFQ   (VARIABLE-VALUE-CELL RPAQX . 43)
(VARIABLE-VALUE-CELL RPAQY . 45)
(VARIABLE-VALUE-CELL BOUNDPDUMMY . 17)
(VARIABLE-VALUE-CELL ADDSPELLFLG . 36)
NOBIND
STKSCAN
RELSTK
VARS
DEFINED
MARKASCHANGED
ADDSPELL
INTERNAL
EVAL
/SETTOPVAL
(BHC KT KNIL KNOB SKLA ENTERF)               p  P      h    @      
/DEFINEQ BINARY
             -.          Z   ,<  ,<   $  ,~       (VARIABLE-VALUE-CELL X . 3)
DEFINE
(KT ENTERF)    8      
/DEFINE BINARY
              -.           Z   ,<  ,<   $  ,~       (VARIABLE-VALUE-CELL X . 3)
DEFINE
(KT ENTERF)    8      
/RADIX BINARY
               -.          Z   3B   +   
B  XB  Z   3B   +   	,<  Z  ,<  ,   ,<  Z  D  Z  ,~      ,~   	  (VARIABLE-VALUE-CELL N . 18)
(VARIABLE-VALUE-CELL LISPXHIST . 16)
RADIX
/RADIX
UNDOSAVE
(LIST2 KNIL ENTERF)        0      
/RAISE BINARY
               -.          Z   ,<  Z   D  XB  Z   3B   +   
,<  Z  ,<  Z  ,<  ,   ,<  Z  D  Z  ,~     (VARIABLE-VALUE-CELL FLG . 20)
(VARIABLE-VALUE-CELL TTBL . 14)
(VARIABLE-VALUE-CELL LISPXHIST . 18)
RAISE
/RAISE
UNDOSAVE
(LIST3 KNIL ENTERF)  	           
/SETREADTABLE BINARY
               -.          Z   B  	XB  Z   3B   +   ,<  Z  ,<  ,   B  
Z  ,~   1   (VARIABLE-VALUE-CELL RDTBL . 14)
(VARIABLE-VALUE-CELL LISPXHIST . 6)
SETREADTABLE
/SETREADTABLE
UNDOSAVE
(LIST2 KNIL ENTERF)   p    H      
/SETTERMTABLE BINARY
             -.          Z   B  	XB  Z   3B   +   ,<  Z  ,<  ,   B  
Z  ,~   1   (VARIABLE-VALUE-CELL TTBL . 14)
(VARIABLE-VALUE-CELL LISPXHIST . 6)
SETTERMTABLE
/SETTERMTABLE
UNDOSAVE
(LIST2 KNIL ENTERF)    p    H      
(PRETTYCOMPRINT UNDOCOMS)
(RPAQQ UNDOCOMS ((FNS SAVESET UNDOSET SAVESETQ SAVESETQQ RPAQQ RPAQ RPAQ? RPLNODE RPLNODE2 NEW/FN UNDOSAVE UNDOLISPX UNDOLISPX1 
UNDOPRINT UNDOLISPX2 UNDOLISPX3 UNSET /LISPXPUT /PUT-1 /PUT+1 UNDONLSETQ UNDONLSETQ1 RESETUNDO /DEFINEQ /DEFINE /PRINTLEVEL) (
INITVARS (#UNDOSAVES) (UNDOSIDE0) (TESTMODEFLG)) (ADDVARS (LISPXFNS (SETQ . SAVESETQ) (SET . SAVESET) (SETQQ . SAVESETQQ) (DEFINEQ .
 /DEFINEQ) (DEFINE . /DEFINE) (PRINTLEVEL . /PRINTLEVEL)) (/FNS /ADDPROP /ATTACH /CONTROL /DELETECONTROL /DREMOVE /DREVERSE /DSUBST 
/ECHOCONTROL /ECHOMODE /LCONC /LISTPUT /LISTPUT1 /MAPCON /MAPCONC /MOVD /NCONC /NCONC1 /PUT /PUTASSOC /PUTD /PUTDQ /PUTHASH /PUTPROP
 /RADIX /RAISE /REMPROP /RPLACA /RPLACD /RPLNODE /RPLNODE2 /SET /SETA /SETATOMVAL /SETBRK /SETD /SETPROPLIST /SETREADTABLE /SETSEPR 
/SETSYNTAX /SETTERMTABLE /SETTOPVAL /TCONC)) (FNS /ADDPROP /ATTACH /CONTROL /DELETECONTROL /DREMOVE /DREVERSE /DSUBST /ECHOCONTROL 
/ECHOMODE /LCONC /LISTPUT /LISTPUT1 /MAPCON /MAPCONC /MOVD /NCONC /NCONC1 /PUT /PUTASSOC /PUTD /PUTDQ /PUTHASH /PUTPROP /RADIX 
/RAISE /REMPROP /RPLACA /RPLACD /RPLNODE /RPLNODE2 /SET /SETA /SETATOMVAL /SETBRK /SETD /SETPROPLIST /SETREADTABLE /SETSEPR 
/SETSYNTAX /SETTERMTABLE /SETTOPVAL /TCONC) (P (SETQ LISPXFNS (UNION LISPXFNS (MAPCAR /FNS (FUNCTION (LAMBDA (X Y) (CONS (PACK (CDR 
(DUNPACK X CHCONLST))) X))))))) (P (MOVD? (QUOTE RPLNODE) (QUOTE FRPLNODE)) (MOVD? (QUOTE RPLNODE2) (QUOTE FRPLNODE2))) (BLOCKS (NIL
 UNSET RPLNODE RPLNODE2 /LISPXPUT /PUT-1 /PUT+1 (LINKFNS . T) UNDONLSETQ UNDONLSETQ1 (GLOBALVARS UNDOSTATS CLEARSTKLST DWIMFLG 
SPELLINGS3 LISPXHISTORY #UNDOSAVES) RESETUNDO UNDOPRINT) (NIL RPAQ RPAQQ (LOCALVARS . T)) (SAVESET SAVESET (LOCALVARS . T) (
GLOBALVARS CLEARSTKLST ADDSPELLFLG DFNFLG)) (NIL UNDOSET (GLOBALVARS SPAGHETTIFLG)) (NIL NEW/FN (GLOBALVARS TESTMODEFLG LISPXFNS 
CHCONLST /FNS)) (UNDOLISPXBLOCK UNDOSAVE UNDOLISPX UNDOLISPX1 UNDOLISPX2 UNDOLISPX3 (ENTRIES UNDOSAVE UNDOLISPX UNDOLISPX1 
UNDOLISPX2) (BLKLIBRARY LISPXWATCH) (GLOBALVARS UNDOSAVES UNDOSTATS #UNDOSAVES DWIMFLG DWIMWAIT LISPXHISTORY CLISPTRANFLG 
EDITQUIETFLG MAXLEVEL) (LOCALFREEVARS UNDONEFLG)) (NIL /ADDPROP /ATTACH /CONTROL /DELETECONTROL /DREMOVE /DREVERSE /DSUBST 
/ECHOCONTROL /ECHOMODE /LCONC /LISTPUT /LISTPUT1 /MAPCON /MAPCONC /MOVD /NCONC /NCONC1 /PRINTLEVEL /PUT /PUTASSOC /PUTD /PUTDQ 
/PUTHASH /PUTPROP /REMPROP /RPLACA /RPLACD /RPLNODE /RPLNODE2 /SET /SETA /SETBRK /SETD /SETPROPLIST /SETSEPR /SETSYNTAX /SETATOMVAL 
/SETTOPVAL /TCONC (GLOBALVARS UNDOSTATS ADDSPELLFLG) (LINKFNS . T))) (DECLARE: DONTEVAL@LOAD DOEVAL@COMPILE DONTCOPY COMPILERVARS (
ADDVARS (NLAMA /DEFINEQ SAVESETQ) (NLAML /PUTDQ UNDONLSETQ RPAQ? RPAQ RPAQQ SAVESETQQ) (LAMA /NCONC)))))
(RPAQ? #UNDOSAVES)
(RPAQ? UNDOSIDE0)
(RPAQ? TESTMODEFLG)
(ADDTOVAR LISPXFNS (SETQ . SAVESETQ) (SET . SAVESET) (SETQQ . SAVESETQQ) (DEFINEQ . /DEFINEQ) (DEFINE . /DEFINE) (PRINTLEVEL . 
/PRINTLEVEL))
(ADDTOVAR /FNS /ADDPROP /ATTACH /CONTROL /DELETECONTROL /DREMOVE /DREVERSE /DSUBST /ECHOCONTROL /ECHOMODE /LCONC /LISTPUT /LISTPUT1 
/MAPCON /MAPCONC /MOVD /NCONC /NCONC1 /PUT /PUTASSOC /PUTD /PUTDQ /PUTHASH /PUTPROP /RADIX /RAISE /REMPROP /RPLACA /RPLACD /RPLNODE 
/RPLNODE2 /SET /SETA /SETATOMVAL /SETBRK /SETD /SETPROPLIST /SETREADTABLE /SETSEPR /SETSYNTAX /SETTERMTABLE /SETTOPVAL /TCONC)
(SETQ LISPXFNS (UNION LISPXFNS (MAPCAR /FNS (FUNCTION (LAMBDA (X Y) (CONS (PACK (CDR (DUNPACK X CHCONLST))) X))))))
(MOVD? (QUOTE RPLNODE) (QUOTE FRPLNODE))
(MOVD? (QUOTE RPLNODE2) (QUOTE FRPLNODE2))
(PUTPROPS UNDO COPYRIGHT (NONE))
NIL
  