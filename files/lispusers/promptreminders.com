(FILECREATED "10-SEP-83 16:53:34" ("compiled on " <LISPUSERS>PROMPTREMINDERS.;6) (2 . 2) bcompl'd in 
WORK dated "19-JUN-83 15:13:55")
(FILECREATED "10-SEP-83 16:35:35" {PHYLUM}<LISPUSERS>PROMPTREMINDERS.;6 21183 changes to: (VARS 
PROMPTREMINDERSCOMS) (FNS PERIODICALLYCHECKREMINDERS) previous date: "25-JUL-83 18:03:58" 
{PHYLUM}<LISPUSERS>PROMPTREMINDERS.;4)

SETREMINDER BINARY
     û    l    x-.     8     lZ   2B   +      ðXB  ,<   Z  -,   +   Zp  +   ,<  ,<  q$  ñXB  +   /  ,<   Z   3B   +   -,   +   Zp  +   ,<  ,<  r$  ñXB  +   /  ,<   Z   -,   +   -,   +   -,   +   Zp  +   ,<  ,<  ò$  ñXB  +   /  Z  ,<  ,<  s,<   ,<  ó(  t,<  @  ô  ,~   Z   2B   +   '   &" t." >@,   ,<  ,<   ,<   ,<   ,<   ,<   ^"  ,   Z  õ,   XB  [  ¦[  ,<  Z   2B   +   ªZ  D  vZ  ',<  ,\  [  [  [  [  [  ,<  Z   -,   +   ±Z   D  vZ  +,<  ,\  [  [  [  [  ,<  Z   -,   +   8Z   D  vZ  *,<  ,<  sZ  2F  ö[  :[  [  ,<  Z  D  v[  ;Z  XB   Z  -,   +   C3B   +   Å-,   +   Å,<  Z  ?D  wXB  Ã+   Î   &" t,>  ë,>  Z  ¿2B   +   ËZ  =2B   +   Ë^"   +   L,   .Bx  ,^  /  ,   XB  Ä[  >,<  Z  ND  vZ   3B   +   ê[  Î[  [  [  [  [  ,<  Z  Ð-,   +   Y3B   +   Z-,   +   ZB  w+   j   &" t."   ,   ,<  @  ÷   +   j   &" t,>  ë,>      ,>  ë,>     Ï   ,^  /  /  "  ,>  ë,>     Õ.Bx  ,^  /  .Bx  ,^  /  ,   ,~   D  vZ  ¸,~     44*ZB   P TR%  «I @     (VARIABLE-VALUE-CELL NAME . 213)
(VARIABLE-VALUE-CELL PERIOD . 146)
(VARIABLE-VALUE-CELL MESSAGE . 81)
(VARIABLE-VALUE-CELL INITIALDELAY . 143)
(VARIABLE-VALUE-CELL EXPIRATION . 203)
(VARIABLE-VALUE-CELL REMINDINGDURATION . 95)
(VARIABLE-VALUE-CELL WINKINGDURATION . 108)
(VARIABLE-VALUE-CELL DEFAULT.REMINDER.DURATION . 98)
(VARIABLE-VALUE-CELL DEFAULT.REMINDER.WINKINGDURATION . 111)
GENSYM
"
 is not a suitable value for the variable:  NAME"
ERROR
"
 is not a suitable value for the variable:  PERIOD"
"
 is not a suitable value for the variable:  INITIALDELAY"
REMINDERS
NOERROR
GETDEF
(VARIABLE-VALUE-CELL REMINDER . 164)
(NIL VARIABLE-VALUE-CELL BOX . 195)
PERIODIC.PROMPT.REMINDER
RPLACA
PUTDEF
SETUPTIMER.DATE
(VARIABLE-VALUE-CELL NEWBOX . 192)
(IUNBOX CONS21 LIST MKN SKNSTP SKNI SKI BHC SKLA KNIL ENTERF)   Ì    '    &    j H Î     
p A @   x 1 0   P    h @ N   (    C P     X 
  Ê 	 B   % H $ 8 # x     0   0      

ACTIVEREMINDERNAMES BINARY
               -.           Z   ,<  ,<   Zwÿ-,   +   Zp  Z   2B   +    "  +   	[  QD   "  +    ZwÿZ  Zp  ,   XBp  [wÿXBwÿ+   "@ (VARIABLE-VALUE-CELL PERIODIC.PROMPT.REMINDERS . 3)
(COLLCT URET2 SKNLST KNIL ENTER0)       
          `        

INSPECTREMINDER BINARY
        ?    4    =-.           4Z   3B   +   3-,   +   3,<  ,<  ´$  53B   +   3Z  ,<  ,<  ´$  µ,<  @  6   +   ²,<   "  ¶,<  7,<   $  ·[   [  Z  ,<  ,<   $  ·,<   "  ¶,<  8,<   $  ·[  [  [  Z  ,<  ,<   $  ·,<  ¸,<   ,<   &  9,<  ¹,<   $  ·[  [  [  [  Z  ,<  ,<   $  ·,<  :,<   ,<   &  9,<  º,<   $  ·[  [  [  [  [  Z  ,<  ,<   $  ·,<   "  ¶,<  ;,<   $  ·Z  B  »,<  ,<   $  ·Z  (B  <XB  !3B   +   ±,<   "  ¶,<  ¼,<   $  ·Z  «,<  ,<   $  ·   ¶,~   ,~   Z   ,~   Z54@f@3 RK#      (VARIABLE-VALUE-CELL NAME . 85)
REMINDERS
HASDEF
GETDEF
(VARIABLE-VALUE-CELL DEF . 95)
TERPRI
"Message: "
PRIN1
"Period: "
20
TAB
"Winking: "
40
"Reminding: "
"NextRemindDate: "
REMINDER.NEXTREMINDDATE
REMINDER.EXPIRATIONDATE
"NextExpiration: "
(SKLA KNIL ENTERF)       4  ¯ ` - ( ( h ¥   p    x  (     8   0      

REMINDER.NEXTREMINDDATE BINARY
        µ    ¯    4-.          ¯    1"  +   .Z` -,   Z   Z  2B  0+   Z` +   
Z` ,<  ,<  °,<   ,<  1(  ±,<  @  2   +   ­Z   ,<  ,\  3B   +   ¬   0B  +   [  Z  ,   ,>  /,>     Ë,>  /,>     &" t   ,^  /  /  .Bx  ,^  /  ,   B  ²,~   [  ,<  ZwþZ8 -,   +   ZwþZ8 B  ²,<  [  Z  D  3D  ³Z  -,   +   -[  !Z  ,   ,>  /,>     Ë,>  /,>     &" t   ,^  /  /  .Bx  ,^  /  ,   B  ²,~   Z   ,~   ,~   Z   ,~     PÈ @HdH    (VARIABLE-VALUE-CELL N . 29)
PERIODIC.PROMPT.REMINDER
REMINDERS
((NOERROR NOCOPY) . 0)
GETDEF
(VARIABLE-VALUE-CELL DEF . 69)
GDATE
SETUPTIMER.DATE
RPLACA
(SKNSTP MKN BHC IUNBOX KNIL SKLST ENTERF)  (     ,    8 ©      ¤     p ­ h   P    H      

REMINDER.EXPIRATIONDATE BINARY
        Å    ?    Ã-.          ?    1"  +   ½Z` -,   Z   Z  2B  ¿+   Z` +   
Z` ,<  ,<  @,<   ,<  À(  A,<  @  Á   +   =Z   ,<  ,\  3B   +   <   0B  +   "[  [  [  [  [  [  Z  3B   +   ![  [  [  [  [  [  Z  ,   ,>  ¾,>     Ë,>  ¾,>     &" t   ,^  /  /  .Bx  ,^  /  ,   B  B,~   Z   ,~   [  [  [  [  [  [  ,<  ZwþZ8 -,   +   )ZwþZ8 B  BB  ÂD  C[  "[  [  [  [  [  Z  3B   +   ;[  *[  [  [  [  [  Z  ,   ,>  ¾,>     Ë,>  ¾,>     &" t   ,^  /  /  .Bx  ,^  /  ,   B  B,~   Z   ,~   Z   ,~   ,~   Z   ,~     PH @ $     (VARIABLE-VALUE-CELL N . 29)
PERIODIC.PROMPT.REMINDER
REMINDERS
((NOERROR NOCOPY) . 0)
GETDEF
(VARIABLE-VALUE-CELL DEF . 93)
GDATE
SETUPTIMER.DATE
RPLACA
(SKNSTP MKN BHC IUNBOX KNIL SKLST ENTERF)  x   (      :     `   0     ¾ P < h " H              

REMINDER.PERIOD BINARY
        ¨    ¢    '-.          ¢    1"  +   ¡Z` -,   Z   Z  2B  #+   Z` +   
Z` ,<  ,<  £,<   ,<  $(  ¤,<  @  %   +   !Z   ,<  ,\  3B   +       0B  +   [  [  [  Z  ,~   ZwZ8 -,   +   ,   ,   ,<  @  ¢   +      0"  +   ,<  ¥Z  ,<  ,   B  &[  [  [  ,<  Z  D  ¦Z  ,~   ,~   Z   ,~   ,~   Z   ,~   PH)D      (VARIABLE-VALUE-CELL N . 59)
PERIODIC.PROMPT.REMINDER
REMINDERS
((NOERROR NOCOPY) . 0)
GETDEF
(VARIABLE-VALUE-CELL DEF . 55)
27
ERRORX
RPLACA
(LIST2 MKN IUNBOX SKNI KNIL SKLST ENTERF)                  ¢               

PERIODICALLYCHECKREMINDERS BINARY
       }    k    ù-.          ( kZ   ,<      (Bÿ,   ,<  @  í @0+   éZ` -,   +   +   èZ  XB   [  Z  [  Z  XB   -,   +   [   [  [  [  [  [  Z  XB   3B   +   ,<  ,<  ñ$  r3B   +   Z  	,<  Z  D  òXB  +   gZ  ,<  ,<  ñ$  r3B   +   g,<   ,<   Z   2B   +      ."   ,   ,<  Z   XB  ,\  XBwÿZ   2B   +   £   ."   ,   ,<  Z   XB   ,\  XBp  [  Z  XB  [  '[  [  Z  XB  -,   +   /Z  &,<  Z  D  òXB  ,Z   XB  ©+   5[  §,<     &" t,>  ê,>     ..Bx  ,^  /  ,   D  s   &" t,>  ê,>  [  /[  [  [  [  Z  ,   .Bx  ,^  /  ,   ,<  @  ó  (
+   [Zwý,<8  ,<  ñ$  r3B   +   B+   Z[  7[  Z  ,<  Z   D  vZ  DB  ö   &" t,>  ê,>  [  B[  [  [  Z  ,   .Bx  ,^  /  ,   ,<  ,<   ,<wÿ,<  ñ$  r3B   +   Q+   Ö,<   "  w3B   +   TZ   +   W,<  ÷"  v,<  x"  ø+   NZp  /  2B   +   Z   y3B   +   ¾Z` ,~   /  Z  23B   +   ã[  H,<     &" t,>  ê,>     Û.Bx  ,^  /  ,   D  sZ  ,<  ZwXB  ZwÿXB  ¤,\  /  [` XB` +   Z` ,~   Z   ,~     `hS!  B@ S0) Z_Æ @     (VARIABLE-VALUE-CELL PERIODIC.PROMPT.REMINDERS . 90)
(VARIABLE-VALUE-CELL \RCLKSECOND . 5)
(VARIABLE-VALUE-CELL \REMINDER.HOLD.TIMER . 201)
(VARIABLE-VALUE-CELL \REMINDER.FLASH.TIMER . 203)
(VARIABLE-VALUE-CELL PROMPTWINDOW . 138)
(0 . 1)
(VARIABLE-VALUE-CELL .5SECS.tics . 0)
NIL
(NIL VARIABLE-VALUE-CELL X . 86)
(NIL VARIABLE-VALUE-CELL TIMEOUT . 46)
(NIL VARIABLE-VALUE-CELL REMOVALS . 0)
(NIL VARIABLE-VALUE-CELL REMINDER . 186)
(NIL VARIABLE-VALUE-CELL SAVEDP . 192)
SECONDS
TIMEREXPIRED?
REMOVE
RPLACA
NIL
(NIL VARIABLE-VALUE-CELL NFT . 0)
(NIL VARIABLE-VALUE-CELL OLDKEYLST . 0)
(NIL VARIABLE-VALUE-CELL ADDRSLST . 0)
(NIL VARIABLE-VALUE-CELL KEYMASKLST . 0)
PRIN3
TERPRI
READP
%
1000
DISMISS
PRINTBELLS
(KT IUNBOX BHC SKNI KNIL SKI SKNLST MKN ENTER0)   
@ R    Ë 0   x â @ X 	P ¼ H   0   ( ]   Ø 
0 Ð 	h Á h %    H  0  @             c 	X = P $ h        

\PUTREMINDER BINARY
      <    1    :-.          1Z   3B   +   -,   +   Z   3B  3+   ,<  ³Z  2B  3+   Z  +   ,   B  4Z   -,   Z   Z  3B  ´+   ,<  ³Z  ,<  ,   B  4Z  ,<  Z   D  5,<  [  [  [  Z  ,<  @  µ @ +   ¯Z  ,<  ,\  ,<  Z  ,<  Z   2B   +   ,<  ¶Z  ,<  Z  ,<  ,   Z  ,   D  7Z  ·+   '[  [  [  Z  [  [  ,   3B   +   ¤+    [   ,<  Z  D  8Z  ¸F  9Z   -,   +   /[  ¥,<     &" t,>  °,>     §.Bx  ,^  /  ,   D  ¹,~   Z  ,~     ]T" 0@@      (VARIABLE-VALUE-CELL NAME . 95)
(VARIABLE-VALUE-CELL FILEPKGTYPE . 47)
(VARIABLE-VALUE-CELL DEF . 82)
(VARIABLE-VALUE-CELL PERIODIC.PROMPT.REMINDERS . 58)
REMINDERS
27
ERRORX
PERIODIC.PROMPT.REMINDER
ASSOC
(VARIABLE-VALUE-CELL OLD . 73)
(VARIABLE-VALUE-CELL PERIOD . 88)
PERIODIC.PROMPT.REMINDERS
/SETTOPVAL
DEFINED
/RPLACA
CHANGED
MARKASCHANGED
RPLACA
(MKN BHC SKI URET2 EQUAL CONS LIST2 SKLST ALIST2 SKLA KNIL ENTERF)  /    ®    )    %    £         p   0       @   @  8        

\GETREMINDER BINARY
              -.          Z   ,<  Z   D  [  Z  ,~       (VARIABLE-VALUE-CELL NAME . 3)
(VARIABLE-VALUE-CELL TYPE . 0)
(VARIABLE-VALUE-CELL PERIODIC.PROMPT.REMINDERS . 5)
ASSOC
(ENTERF)     

\DELREMINDER BINARY
              -.          Z   3B   +   -,   +   Z   3B  +   ,<  Z  2B  +   Z  +   ,   B  Z  ,<  Z   D  ,<  @     ,~   Z   3B   +   Z  ,<  Z  ,<  ,<  &  ,<  Z  ,<  Z  D  D  Z   ,~   Z   ,~   ]T(¡F    (VARIABLE-VALUE-CELL NAME . 30)
(VARIABLE-VALUE-CELL FILEPKGTYPE . 32)
(VARIABLE-VALUE-CELL PERIODIC.PROMPT.REMINDERS . 39)
REMINDERS
27
ERRORX
ASSOC
(VARIABLE-VALUE-CELL OLDDEF . 37)
DELETED
MARKASCHANGED
PERIODIC.PROMPT.REMINDERS
REMOVE
/SETTOPVAL
(KT ALIST2 SKLA KNIL ENTERF)                p        
(PRETTYCOMPRINT PROMPTREMINDERSCOMS)
(RPAQQ PROMPTREMINDERSCOMS ((* "Reminders" , which wake up periodically at PROMPTCHARS time, and 
notify you of an "urgent" message via the PROMPTWINDOW) (COMS (* Next FNS ought to be elsewhere) (
DECLARE: DONTCOPY (MACROS NNLITATOM \CHECKTYPE \NULL.OR.FIXP \CHARS.OR.FIXP) (PROP MACRO NCREATE) (* 
FOO, following functionality ought to be with the DURATION stuff.) (MACROS TIMERSUBTRACT)) (* Lossage 
to be sure TIMEREXPIRED? is defined) (DECLARE: DONTEVAL@LOAD COPYWHEN (NEQ COMPILEMODE (QUOTE D)) (
INITVARS (PROMPTWINDOW T) (\RCLKSECOND 1000)))) (DECLARE: EVAL@COMPILE DONTCOPY (RECORDS 
PERIODIC.PROMPT.REMINDER)) (RECORDS \SHOWABLE.PROMPT.REMINDER) (GLOBALRESOURCES (\REMINDER.HOLD.TIMER 
(SETUPTIMER 0 NIL (QUOTE TICKS))) (\REMINDER.FLASH.TIMER (SETUPTIMER 0 NIL (QUOTE TICKS))) (
\REMINDER.LITTLE.TIMER (SETUPTIMER 0 NIL (QUOTE TICKS)))) (FNS SETREMINDER ACTIVEREMINDERNAMES 
INSPECTREMINDER REMINDER.NEXTREMINDDATE REMINDER.EXPIRATIONDATE REMINDER.PERIOD) (FNS 
PERIODICALLYCHECKREMINDERS \PUTREMINDER \GETREMINDER \DELREMINDER) (DECLARE: COPYWHEN (EQ COMPILEMODE 
(QUOTE D)) (FNS \PR.KBDChangedP) (INITVARS (\PERIOD.SAVEDCARET NIL))) (INITVARS (
DEFAULT.REMINDER.DURATION 60) (DEFAULT.REMINDER.WINKINGDURATION 10) (PERIODIC.PROMPT.REMINDERS NIL)) (
GLOBALVARS DEFAULT.REMINDER.DURATION DEFAULT.REMINDER.WINKINGDURATION PERIODIC.PROMPT.REMINDERS 
\PERIOD.SAVEDCARET \EM.KBDAD0 DEFAULT.REMINDER.PERIOD) (FILEPKGCOMS REMINDERS) (ADDVARS (
PROMPTCHARFORMS (PERIODICALLYCHECKREMINDERS))) (DECLARE: DONTEVAL@LOAD DOEVAL@COMPILE DONTCOPY 
COMPILERVARS (ADDVARS (NLAMA) (NLAML) (LAMA REMINDER.PERIOD REMINDER.EXPIRATIONDATE 
REMINDER.NEXTREMINDDATE)))))
(RPAQ? PROMPTWINDOW T)
(RPAQ? \RCLKSECOND 1000)
(RECORD \SHOWABLE.PROMPT.REMINDER (NIL NIL \REMINDER.MESSAGE \REMINDER.PERIOD 
\REMINDER.WINKINGDURATION \REMINDER.DURATION) (CREATE (ERROR DATUM 
"Creations not allowed on this record")) (ACCESSFNS ((\REMINDER.NEXTREMINDDATE (
REMINDER.NEXTREMINDDATE DATUM) (REMINDER.NEXTREMINDDATE DATUM NEWVALUE)) (\REMINDER.EXPIRATIONDATE (
REMINDER.EXPIRATIONDATE DATUM) (REMINDER.EXPIRATIONDATE DATUM NEWVALUE)))))
(RPAQQ \REMINDER.HOLD.TIMER NIL)
(RPAQQ \REMINDER.FLASH.TIMER NIL)
(RPAQQ \REMINDER.LITTLE.TIMER NIL)
(RPAQ? DEFAULT.REMINDER.DURATION 60)
(RPAQ? DEFAULT.REMINDER.WINKINGDURATION 10)
(RPAQ? PERIODIC.PROMPT.REMINDERS NIL)
(PUTDEF (QUOTE REMINDERS) (QUOTE FILEPKGCOMS) (QUOTE ((TYPE DESCRIPTION "Periodic PROMTP Reminders" 
GETDEF \GETREMINDER PUTDEF \PUTREMINDER DELDEF \DELREMINDER))))
(ADDTOVAR PROMPTCHARFORMS (PERIODICALLYCHECKREMINDERS))
(PUTPROPS PROMPTREMINDERS COPYRIGHT ("Xerox Corporation" 1982 1983))
NIL
  