!* -*-TECO-*- *!
!* <SHSU>FTPLIB.EMACS.3,  1-Jul-82 16:14:48, Edit by SHSU!
!* keep same generation numbers even if FTPing over ARPA.!
!* just doing 2 ESC's defaults local version number to 0.!

!~FILENAME~:! !FTP new files from XX.!
FTPLIB

!<ENTRY>:! !Update Directory:! !C FTP new files from XX.!
 :i*[3 fq3"e :i3EMACS'		!* 3: directory name!
 0fzdo <emacs>ftp 3
					!* get directory listing into XX.DIR!
 f[BBind f[DFile [1[2			!* working buffer!
 erPS:<3>XX.DIR @y ed		!* read in directory listing and!
					!* delete!
 j k					!* remove PS:<EMACS>!
 < .-z; :x1 l et1 0fsDVersionu1	!* get next filename!
   1:< 1,er >f"nu2 f=2OPN0104  -8"l -k' !<!>'w	!* open file, if file!
							!* not found then!
							!* save line; if!
							!* other error, kill!
							!* line!
   fsIFVersion-q1:"l -k' ec		!* if our version ge, then!
   >					!* delete from list!
 :i*Delete files not wanted[..j	!* let user edit list!
 j 					!* ...!
 j 0s <:s; i>			!* double all ^Vs!
 j iFTP
MIT-XX
					!* insert start up commands!
[1
  < .-z; iGET <3> .u1 :l q1,.x1 27i i<3> g1 l >
]1					!* turn each filename into GET!
					!* command, but remember version!
 iBYE					!* numbers for stupid ARPA ftp!
DISCONNECT
QUIT

 et<3>UPDATE.CMD eihpef		!* write command file!
 fsOFileu1 @ft
Written: 1
 0fsEchoActivew 			!* tell user!

!*
 * Local Modes:
 * Comment Column:40
 * End:
 *!
  