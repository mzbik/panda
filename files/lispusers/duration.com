(FILECREATED "28-JUN-83 22:00:22" ("compiled on " <LISPUSERS>DURATION.;31) (2 . 2) bcompl'd in WORK 
dated "19-JUN-83 15:13:55")
(FILECREATED " 4-MAY-83 12:28:09" <LISPUSERS>DURATION.;31 19737 changes to: (VARS DURATIONCOMS) (PROPS
 (\RCLKMILLISECOND GLOBALVAR) (\RCLKSECOND GLOBALVAR)) (FNS \Duration.global.setup) previous date: 
"19-APR-83 06:12:14" <LISPUSERS>DURATION.;30)

SETUPTIMER BINARY
     b    Õ    _-.           ÕZ   B  Ø3B  Y+   3B  Ù+   2B  Z+      ,   XB   Z   3B   +   Ë3B  Y+   Ë3B  Ù+   Ë2B  Z+   +   Ë3B  Ú+   3B  [+   2B  Û+       ,>  U,>      $Bx  ,^  /  ,   XB  +   Ë3B  \+   2B  Ü+   R    ,>  U,>     $Bx  ,^  /  ,   XB  +   Ë3B   +    3B  Ú+    3B  ]+    3B  [+    2B  Û+   6   ,   XB  Z  3B   +   Ë3B  Ú+   Ë3B  [+   Ë2B  Û+   ¦+   Ë3B  Y+   ©3B  Ù+   ©2B  Z+   /   ,>  U,>        ,^  /  &  ,   XB  ©+   Ë3B  \+   12B  Ü+   R^" t,>  U,>     .$Bx  ,^  /  ,   XB  ²+   Ë3B  \+   82B  Ü+   P   &" t,   XB  !Z  ¡3B   +   Ë3B  \+   Ë2B  Ü+   >+   Ë3B  Ú+   A3B  [+   A2B  Û+   Ã   5&" t,   XB  A+   Ë3B  Y+   Æ3B  Ù+   Æ2B  Z+   R   Â,>  U,>        ,^  /  &  ,   XB  Æ   ¹,>  U,>     K.Bx  ,^  /  ,   ,~   ,<  ÝZ  D  ^   Þ,<  ÝZ  :D  ^   ÞZ   ,~     xhPz }xC}  0      (VARIABLE-VALUE-CELL INTERVAL . 154)
(VARIABLE-VALUE-CELL OldTimer? . 151)
(VARIABLE-VALUE-CELL timerUnits . 161)
(VARIABLE-VALUE-CELL intervalUnits . 165)
(VARIABLE-VALUE-CELL \RCLKMILLISECOND . 86)
(VARIABLE-VALUE-CELL \RCLKSECOND . 144)
U-CASE
TICS
RCLK
TICKS
MS
MILLISECS
MILLISECONDS
SECS
SECONDS
MILS
14
SETERRORN
ERRORX
(BHC KNIL MKN ENTERF)  Ï 	( 5 X  0   
P » 0     
  Ë 0 : X ®   8        

SETUPTIMER.DATE BINARY
                -.           Z   B  ,   ,>  ,>     Ë   ,^  /  /  ,>  ,>     &" t.Bx  ,^  /  ,   ,~        (VARIABLE-VALUE-CELL DTS . 3)
(VARIABLE-VALUE-CELL OldTimer? . 0)
IDATE
(MKN BHC IUNBOX ENTERF)   0   (            

TIMEREXPIRED? BINARY
     ¡         -.           Z   Z  ,   3B   +   
   ,>  ,>         ,^  /  /  1b   7   Z   ,~   Z  -,   +      
,>  ,>        ,^  /  /  1b   7   Z   ,~   3B  +   2B  +      &" t,>  ,>        ,^  /  /  1b   7   Z   ,~   ,<  D      ,~     P (r   (VARIABLE-VALUE-CELL TIMER . 43)
(VARIABLE-VALUE-CELL ClockValue.or.timerUnits . 23)
((NIL MS MILS MILLISECS MILLISECONDS TICS TICKS) . 0)
SECONDS
SECS
27
SETERRORN
ERRORX
(SKI KT BHC KNIL FMEMB ENTERF) 8                               

\RCLOCK0 BINARY
             -.              ,~       (VARIABLE-VALUE-CELL BOX . 0)
SHOULDNT
(ENTERF)     

\Duration.global.setup BINARY
            -.            Z"  XB   Z" tXB   Z  XB   Z  XB   ,~       (VARIABLE-VALUE-CELL \RCLKMILLISECOND . 7)
(VARIABLE-VALUE-CELL \RCLKSECOND . 9)
(VARIABLE-VALUE-CELL \RCLK.ticsperms . 8)
(VARIABLE-VALUE-CELL \RCLK.ticspersecond . 10)
(ASZ ENTER0)     (      

\DURATIONTRAN BINARY
       &      ¡-.         Z   ,<  @   `,~   Z   ,<  ,< $ ,<  ,< $ ,<  ,< $ ,<  ,< $ ,<  ,< $ ,<  ,< $ XB  Z   -,   +   ,< Z  D   Z   3B   +   XB   Z  2B   +   Z XB  3B   +   Z  3B   +   ,< Z  D Z   2B   +   +   ±Z   3B   +   ,< Z  D +   ±Z  B 3B   +   ­Z  B B XB   Z  #Z ,   3B   +   §Z   XB  ¡+   0Z  £Z ,   3B   +   ª+   0,< Z  D 3B   +   ±+   0,< Z  +D 3B   +   ±Z  ¦,   XB   Z   2B   +   ¶Z  2B   +   ¶,< Z  .D +   ;Z  ±3B   +   ;Z  33B   +   ;,< Z  5D Z  83B   +   ?XB  ¶Z XB   Z XB  1Z  ,<  ,\  3B   +   JZ  ?,<  ,< ,<   ,< ( ,<  ,< $ 2B   +   JZ  Á,<  ,<   ,   F Z   Z ,   Z ,   Z   ,   Z ,   Z ,   Z ,   ,<  Z  ½Z   ,   ,   XB   Z  G2B   +   ÕZ  XB   Z  Ó3B   +   Ú,< ,<  Z  S,<  ,   XB  ØZ  :,<  ,\  ,<  ,< Z  ,<  Z  ¼,<  Z  Õ,<  Z  ¾,<  ,   ,<  Z  ZF D Z   3B   +  Z  Ú,<  Zp  -,   +   h+  ,<  @    +  Z   ,<  Zp  3B   +   î-,   7   Z   +   oZ   /  3B   +   Z  j,<  ,<  $  XB  b3B   +   -,   +   [  òXB  u,<  Zp  3B   +   z-,   7   Z   +   úZ   /  3B   +   Z  õZ  ð3B  +   Z  ü,<  Z  |D !,~   [p  XBp  +   f/  Z   ,~     B [6#&6VI'.P¦IRP%ZjE  C(D&(@        (VARIABLE-VALUE-CELL FORM . 202)
(VARIABLE-VALUE-CELL LCASEFLG . 199)
(VARIABLE-VALUE-CELL BODY . 186)
(NIL VARIABLE-VALUE-CELL OLDTIMER . 190)
(NIL VARIABLE-VALUE-CELL EXPANSION . 254)
((SETUPTIMER FORDURATION OLDTIMER . TIMERUNITSLST) VARIABLE-VALUE-CELL SETUPFORM . 162)
((TIMEREXPIRED? \DurationLimit . TIMERUNITSLST) VARIABLE-VALUE-CELL EXPIREDFORM . 148)
(NIL VARIABLE-VALUE-CELL USINGTIMER . 170)
(NIL VARIABLE-VALUE-CELL USINGBOX . 35)
(NIL VARIABLE-VALUE-CELL FORDURATION . 188)
(NIL VARIABLE-VALUE-CELL RESOURCENAME . 172)
(NIL VARIABLE-VALUE-CELL UNTILDATE . 118)
(NIL VARIABLE-VALUE-CELL TIMERUNITS . 96)
(NIL VARIABLE-VALUE-CELL TIMERUNITSLST . 192)
(NIL VARIABLE-VALUE-CELL TEMP . 79)
((TIMERUNITS timerUnits timerunits) . 0)
\CLISPKEYWORDPROCESS
((USINGBOX usingBox usingbox) . 0)
((USINGTIMER usingTimer usingtimer) . 0)
((FORDURATION forDuration forduration DURING during) . 0)
((RESOURCENAME resourceName resourcename) . 0)
((UNTILDATE untilDate untildate) . 0)
14
SETERRORN
ERRORX
\ForDurationOfBox
"Both 'usingTimer' and 'resourceName' specified"
ERROR
"Can't specify timerUnits for 'untilDate'"
CONSTANTEXPRESSIONP
EVAL
U-CASE
((MS MILS MILLISECS MILLISECONDS) . 0)
((TICS TICKS SECS SECONDS) . 0)
"Wrong timerUnits specified"
"Non-constant timerUnits not yet implemented"
"No duration interval"
"Both 'untilDate' and 'forDuration' specified"
((SETUPTIMER.DATE FORDURATION OLDTIMER) . 0)
(((QUOTE SECS)) . 0)
GLOBALRESOURCES
NOERROR
GETDEF
(((NCREATE (QUOTE FIXP)) (IPLUS 1000000)) . 0)
MEMBER
PUTDEF
BODY
until
((DECLARE (LOCALVARS \DurationLimit)) . 0)
((\DurationLimit) . 0)
LAMBDA
GLOBALRESOURCE
((BODY FORDURATION OLDTIMER TIMERUNITSLST) . 0)
SUBPAIR
CLISPTRAN
(VARIABLE-VALUE-CELL X . 252)
CLISPWORD
GETPROP
/RPLACA
(SKLST BHC SKLA SKNLST LIST4 LIST3 CONSS1 CONS21 CONS MKN CONSNL FMEMB KT KNIL SKNLA ENTERF)  P   0 û      í    ç    b    Ú    Ó    Q 
  O 	P   
0 N 	@   	        ¥    z h     @ {  x @ ð x n H e 
x U 
( Í p D  ¼  8 H 3   -   ' ` ¡ X    0   x      

\CLISPKEYWORDPROCESS BINARY
      ©    $    (-.           $Z   2B   +   Z   ,~   Z  Z   ,   3B   +   
Z  [  Z  ,   [  [  ,~   Z  -,   +   ,~   @  %  ,~   Z  ,<  @  ¥  +   Z` -,   +   +   Z  XB   Z  Z  
,   XB   3B   +   Z  2B   +   Z   XB` +   [` XB` +   Z` ,~   3B   +   #Z  [  Z  ,   Z  ,<  Z  D  ',<  [  [  D  §,~   Z  ,~    (© I D     (VARIABLE-VALUE-CELL FORM . 70)
(VARIABLE-VALUE-CELL WORDLST . 57)
(NIL VARIABLE-VALUE-CELL TMP . 66)
(0 . 1)
NIL
(NIL VARIABLE-VALUE-CELL X . 44)
LDIFF
NCONC
(KT SKNLST SET FMEMB KNIL ENTERF)             P      x   h   0      
(PRETTYCOMPRINT DURATIONCOMS)
(RPAQQ DURATIONCOMS ((* time-limited evaluation stuff) (DECLARE: EVAL@COMPILE DONTCOPY (MACROS CLOCK 
IDATE) (MACROS \MACRO.MX \MACRO.EVAL NNLITATOM \MOVETOBOX)) (PROP GLOBALVAR \RCLKMILLISECOND 
\RCLKSECOND \RCLK.ticsperms \RCLK.ticspersecond) (MACROS SETUPTIMER SETUPTIMER.DATE) (DECLARE: 
EVAL@COMPILE (FNS \SETUPTIMERmacrofn)) (FNS SETUPTIMER SETUPTIMER.DATE TIMEREXPIRED?) (MACROS \RCLOCK0
) (FNS \RCLOCK0 \Duration.global.setup) (VARS (\TIMEREXPIRED.BOX (SETUPTIMER 0))) (GLOBALVARS 
\TIMEREXPIRED.BOX) (P (\Duration.global.setup)) (ADDVARS (AFTERSYSOUTFORMS (\Duration.global.setup))) 
(VARS DURATIONCLISPWORDS) (FNS \DURATIONTRAN \CLISPKEYWORDPROCESS) (PROP CLISPWORD * (APPLY (QUOTE 
APPEND) DURATIONCLISPWORDS)) (ALISTS * (LIST (CONS (QUOTE PRETTYEQUIVLST) (APPLY (QUOTE APPEND) 
DURATIONCLISPWORDS)))) (* Kludge patch until all traces of CLOCK0 go away) (P (SELECTQ (SYSTEMTYPE) (D
 (MOVD? (QUOTE CLOCK0) (QUOTE \CLOCK0))) NIL))))
(PUTPROPS \RCLKMILLISECOND GLOBALVAR T)
(PUTPROPS \RCLKSECOND GLOBALVAR T)
(PUTPROPS \RCLK.ticsperms GLOBALVAR T)
(PUTPROPS \RCLK.ticspersecond GLOBALVAR T)
(PUTPROPS SETUPTIMER MACRO (X (\SETUPTIMERmacrofn X)))
(PUTPROPS SETUPTIMER.DATE MACRO ((DTS BOX) (SETUPTIMER (IDIFFERENCE (IDATE DTS) (IDATE)) BOX (QUOTE 
SECS))))
(DEFINEQ (\SETUPTIMERmacrofn (LAMBDA (X outputTimeUnits intputTimeUnits) (* JonL "29-NOV-82 20:40") (*
 This function wants to be compiled since it produces the value of \FIXP as seen in the compile 
environment, rather than a GVAR fetch of \FIXP in the runtime environment (unfortunately, \FIXP may 
not exist in the vanilla environment.)) (PROG ((INTERVAL (CAR X)) (BOX (CADR X)) (outputTimeUnits (
CADDR X)) (intputTimeUnits (CADDDR X)) CLOCKer) (if (OR (NOT (CONSTANTEXPRESSIONP outputTimeUnits)) (
NOT (CONSTANTEXPRESSIONP intputTimeUnits))) then (RETURN (QUOTE IGNOREMACRO))) (SETQ outputTimeUnits (
SELECTQ (U-CASE (EVAL outputTimeUnits)) ((NIL MS MILS MILLISECS MILLISECONDS) (QUOTE MILS)) ((TICS 
RCLK TICKS) (QUOTE TICS)) ((SECS SECONDS) (QUOTE SECS)) (PROGN (SETERRORN 27 outputTimeUnits) (ERRORX)
))) (SETQ intputTimeUnits (SELECTQ (U-CASE (EVAL intputTimeUnits)) (NIL outputTimeUnits) ((MS MILS 
MILLISECS MILLISECONDS) (QUOTE MILS)) ((TICS RCLK TICKS) (QUOTE TICS)) ((SECS SECONDS) (QUOTE SECS)) (
PROGN (SETERRORN 27 intputTimeUnits) (ERRORX)))) (SELECTQ outputTimeUnits ((MILS) (SETQ CLOCKer (
SELECTQ (SYSTEMTYPE) (D (QUOTE \CLOCK0)) (QUOTE (CLOCK 0)))) (SELECTQ intputTimeUnits (MILS NIL) (TICS
 (SETQ INTERVAL (BQUOTE (IQUOTIENT , INTERVAL \RCLK.ticsperms)))) (SECS (SETQ INTERVAL (BQUOTE (ITIMES
 , INTERVAL 1000)))) (SHOULDNT))) ((TICS) (SETQ CLOCKer (SELECTQ (SYSTEMTYPE) (D (QUOTE \RCLOCK0)) (
QUOTE (CLOCK 0)))) (SELECTQ intputTimeUnits (TICS NIL) (MILS (SETQ INTERVAL (BQUOTE (ITIMES , INTERVAL
 \RCLK.ticsperms)))) (SECS (SETQ INTERVAL (BQUOTE (ITIMES , INTERVAL \RCLK.ticspersecond)))) (SHOULDNT
))) ((SECS) (SETQ CLOCKer (SELECTQ (SYSTEMTYPE) (D (QUOTE \DAYTIME0)) (QUOTE (IQUOTIENT (CLOCK 0) 1000
)))) (SELECTQ intputTimeUnits (SECS NIL) (MILS (SETQ INTERVAL (BQUOTE (IQUOTIENT , INTERVAL 1000)))) (
TICS (SETQ INTERVAL (BQUOTE (IQUOTIENT , INTERVAL \RCLK.ticspersecond)))) (SHOULDNT))) (SHOULDNT)) (
RETURN (SELECTQ (SYSTEMTYPE) (D (if (NULL BOX) then (BQUOTE (\BOXIPLUS (, CLOCKer (NCREATE (QUOTE FIXP
))) , INTERVAL)) elseif (LITATOM BOX) then (* Someday, this test should be extended from LITATOM, to 
include LISPFORM.SIMPLIFY processing, and check for ARGSCOMMUTABLEP of BOX and INTERVAL) (BQUOTE (
\BOXIPLUS (, CLOCKer (if (EQ , \FIXP (NTYPX , BOX)) then , BOX else (NCREATE (QUOTE FIXP)))) , 
INTERVAL)) else (BQUOTE ((LAMBDA (\Interval \Box) (DECLARE (LOCALVARS \Interval \Box)) (\BOXIPLUS (, 
CLOCKer (if (EQ , \FIXP (NTYPX \Box)) then \Box else (NCREATE (QUOTE FIXP)))) \Interval)) , INTERVAL ,
 BOX)))) (LIST (QUOTE IPLUS) INTERVAL CLOCKer)))))))
(PUTPROPS \RCLOCK0 DMACRO ((BOX) (\RCLK (\DTEST BOX (QUOTE FIXP)))))
(RPAQ \TIMEREXPIRED.BOX (SETUPTIMER 0))
(\Duration.global.setup)
(ADDTOVAR AFTERSYSOUTFORMS (\Duration.global.setup))
(RPAQQ DURATIONCLISPWORDS ((TIMERUNITS timerUnits timerunits) (USINGBOX usingBox usingbox) (USINGTIMER
 usingTimer usingtimer) (FORDURATION forDuration forduration DURING during) (RESOURCENAME resourceName
 resourcename) (UNTILDATE untilDate untildate)))
(PUTPROPS TIMERUNITS CLISPWORD (\DURATIONTRAN . timerUnits))
(PUTPROPS timerUnits CLISPWORD (\DURATIONTRAN . timerUnits))
(PUTPROPS timerunits CLISPWORD (\DURATIONTRAN . timerUnits))
(PUTPROPS USINGBOX CLISPWORD (\DURATIONTRAN . usingBox))
(PUTPROPS usingBox CLISPWORD (\DURATIONTRAN . usingBox))
(PUTPROPS usingbox CLISPWORD (\DURATIONTRAN . usingBox))
(PUTPROPS USINGTIMER CLISPWORD (\DURATIONTRAN . usingTimer))
(PUTPROPS usingTimer CLISPWORD (\DURATIONTRAN . usingTimer))
(PUTPROPS usingtimer CLISPWORD (\DURATIONTRAN . usingTimer))
(PUTPROPS FORDURATION CLISPWORD (\DURATIONTRAN . forDuration))
(PUTPROPS forDuration CLISPWORD (\DURATIONTRAN . forDuration))
(PUTPROPS forduration CLISPWORD (\DURATIONTRAN . forDuration))
(PUTPROPS DURING CLISPWORD (\DURATIONTRAN . during))
(PUTPROPS during CLISPWORD (\DURATIONTRAN . during))
(PUTPROPS RESOURCENAME CLISPWORD (\DURATIONTRAN . resourceName))
(PUTPROPS resourceName CLISPWORD (\DURATIONTRAN . resourceName))
(PUTPROPS resourcename CLISPWORD (\DURATIONTRAN . resourceName))
(PUTPROPS UNTILDATE CLISPWORD (\DURATIONTRAN . untildate))
(PUTPROPS untilDate CLISPWORD (\DURATIONTRAN . untilDate))
(PUTPROPS untildate CLISPWORD (\DURATIONTRAN . untildate))
(ADDTOVAR PRETTYEQUIVLST (TIMERUNITS . for) (timerUnits . for) (timerunits . for) (USINGBOX . for) (
usingBox . for) (usingbox . for) (USINGTIMER . for) (usingTimer . for) (usingtimer . for) (FORDURATION
 . for) (forDuration . for) (forduration . for) (DURING . for) (during . for) (RESOURCENAME . for) (
resourceName . for) (resourcename . for) (UNTILDATE . for) (untilDate . for) (untildate . for))
(SELECTQ (SYSTEMTYPE) (D (MOVD? (QUOTE CLOCK0) (QUOTE \CLOCK0))) NIL)
(PUTPROPS DURATION COPYRIGHT ("Xerox Corporation" 1982 1983))
NIL
