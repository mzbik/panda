(FILECREATED "24-SEP-81 21:42:30" ("compiled on " <LISPUSERS>DATEFORMAT.;3) (2 
. 3) bcompl'd in WORK dated NOBIND)
(FILECREATED " 2-Jan-79 10:37:32" <LISPUSERS>DATEFORMAT..3 3990 changes to: 
DATEFORMATCOMS previous date: "29-Dec-78 16:51:22" <LISPUSERS>DATEFORMAT..2)

DATEFORMAT BINARY
    \    Ï    Ù-.        ( ÏZ   ,<  ,<   Z` 3B   +   Z` 2B   +   Zwÿ+    ,<  Ò,<` $  S3B   +   Z  ÓZ` ,   XB` ,<` ,<   ,<   ,<   Zwþ-,   +   +   ÅZ  XBwÿZwÿZ   7  [  Z  Z  1H  +   2D   +   XBp  3B   +   ¡ wý,>  O,>  ^"  ,>  O,>  [p  ,      ^"  /     ,^  /  (B  GBx  ,^  /  ,   XBwý+   DZwÿZ   7  [  Z  Z  1H  +   ¦2D   +   #XBp  3B   +   µ wý,>  O,>  ^"ÿ,>  O,>  ^"  ,>  O,>  [p  ,      ^"  /     ,^  /  (B  FBx  ,^  /  ABx  ,^  /  ,   XBwý+   D,<wÿ,<  T,<   ,<wZ   ,<  Z   ,<  ,<   ,<w{,<   ,<   ,<wû"  Ô,<  ,<  U2  ÕXBw~3B   +   @+   CZwZwü,   XBwü/  +   D/  +   [wþXBwþ+   Zw/  Zp  3B   +   ,<   "  V,<  Ö,<   $  W,<p  ,<   ,<  ×,<  X,<  Ø*  Y,<   "  V+     $V 0@ R  @f4{   (KEYWORDS . 1)
(VARIABLE-VALUE-CELL DATEFORMAT.DEFAULT . 3)
(VARIABLE-VALUE-CELL DATEFORMAT.ON.KEYS . 34)
(VARIABLE-VALUE-CELL DATEFORMAT.OFF.KEYS . 68)
(VARIABLE-VALUE-CELL FIXSPELLREL . 111)
(VARIABLE-VALUE-CELL DATEFORMAT.KEYS . 113)
DASHES
MEMB
DASHES2
DATEFORMAT
CHCON
MUSTAPPROVE
FIXSPELL
TERPRI
"Unknown keys {in DATEFORMAT} are "
PRIN1
""
""
", "
MAPRINT
(KT MKN BHC IUNBOX SKNLST CONS URET2 KNIL ENTER1)  Î 	@ Ê 	 <    5    p D 0 ´ 0 1      . 8   p             H x » ( ·   ¦ p  `  P   `   8      
(PRETTYCOMPRINT DATEFORMATCOMS)
(RPAQQ DATEFORMATCOMS ((FNS DATEFORMAT) (VARS * DATEFORMATVARS) (DECLARE: 
EVAL@COMPILE DONTCOPY (P (RESETSAVE DWIMIFYCOMPFLG T))) (DECLARE: DONTEVAL@LOAD
 DOEVAL@COMPILE DONTCOPY COMPILERVARS (ADDVARS (NLAMA DATEFORMAT) (NLAML) (LAMA
)))))
(RPAQQ DATEFORMATVARS (DATEFORMAT.KEYS DATEFORMAT.ON.KEYS DATEFORMAT.OFF.KEYS (
DATEFORMAT.DEFAULT 0)))
(RPAQQ DATEFORMAT.KEYS (CIVILIAN.TIME DASHES DATE DAY.LONG DAY.OF.WEEK 
DAY.SHORT EUROPE.FORMAT LEADING.SPACES MILITARY.TIME MONTH.LONG MONTH.SHORT 
NAME.OF.MONTH NO.DATE NO.DAY.OF.WEEK NO.LEADING.SPACES NO.SECONDS NO.TIME 
NO.TIME.ZONE NUMBER.OF.MONTH SECONDS SLASHES SPACES TIME TIME.ZONE USA.FORMAT 
YEAR.LONG YEAR.SHORT))
(RPAQQ DATEFORMAT.ON.KEYS ((NO.DATE . 0) (DAY.OF.WEEK . 1) (DAY.LONG . 2) (
NUMBER.OF.MONTH . 3) (MONTH.LONG . 4) (YEAR.LONG . 5) (USA.FORMAT . 6) (SPACES 
. 7) (SLASHES . 8) (NO.TIME . 9) (NO.SECONDS . 10) (CIVILIAN.TIME . 11) (
TIME.ZONE . 13) (NO.LEADING.SPACES . 17)))
(RPAQQ DATEFORMAT.OFF.KEYS ((DATE . 0) (NO.DAY.OF.WEEK . 1) (DAY.SHORT . 2) (
NAME.OF.MONTH . 3) (MONTH.SHORT . 4) (YEAR.SHORT . 5) (EUROPE.FORMAT . 6) (
DASHES . 7) (DASHES2 . 8) (TIME . 9) (SECONDS . 10) (MILITARY.TIME . 11) (
NO.TIME.ZONE . 13) (LEADING.SPACES . 17)))
(RPAQ DATEFORMAT.DEFAULT 0)
NIL
 