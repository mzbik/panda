!~FILENAME~:! !Functions to Grok the BBN Bitbucket mouse.!
  MOUSE
!* Must hack exit to superior hook and return from superior hook... !

!& Setup MOUSE Library:! ! foo!
!*  FSRGETTY-58"N ' !

  128*5 FS Q VEC [0
  128*5 FS Q VEC [1
  8*5   FS Q VEC [2
  Q0 M.V Mouse_Dispatch_Table
  Q1 M.V Mouse_Echo_Dispatch_Table
  Q2 M.V Mouse_Default_Dispatch_Table

  m.m%_Cursor_to_MouseU:0(4)

  m.m%_Mouse_Scroll_Window U:1(4)
  m.m%_Mouse_Scroll_Window_Proportional U:1(2)

  @:I*/m(m.mMouse_Off)/m.vExit_Hook
  @:I*/M(M.MMouse_On)/m.VReturn_from_Superior_Hook
  m.m&_Handle_MouseU..:
  m(m.mMouse_On)
  

!Mouse On:! !C Turns the mouse on.!
  250FO..QMouse_Quiescent_Time:\[0
  7FO..QMouse_Character:\[1
  @:I*/:0;71;0;0;767;0;1;1;1;1;0;0;0;c/ FSECHODISPLAY
  @:I*/:5;1;0L/ FSECHODISPLAY
  

!Mouse Off:! !C Turns the mouse off.!
  @:I*/:0;0; ; ; ;    ; ; ; ; ; ; ; ;c/ FSECHODISPLAY
  @:I*/:5;1;0L/ FSECHODISPLAY
  

!& Decode Mouse:! !S Decodes the mouse clicks.
The Altmode : may have been stripped off the first mouse event.  This
routine sets QX and QY to the coordinates of the mouse (in raw
coordinates), Q.1 and Q.2 to the coords in character coords with
origin at top left.  QB is set to the buttons which were pressed, and
QC to the number of clicks minus 1.  The buttons are encoded as Left =
4, Middle = 2, and Right = 1.  These may be or'ed to indicate chords.
Multiple clicks with different chords are not supported; The first
click is taken as the desired click, and any non-conforming clicks are
ignored.  Likewise, any stray characters between clicks are ignored.
This routine assumes correct format of the sequence; no error checking
is attempted.  Returns a value indicating whether the chord is still
held down, 0 if not, the chord being held, if so.!

  0[0 0[1 0[2			    !* 0: curr. butt. down. 1: Max button down!
				    !* 2: temporary!
  -1UX -1UY -1UC 0UB		    !* initialize state!
  F[ B BIND			    !* buffer to read clicks into!
  < M(M.M&_Read_Mouse_Click)
    0J QX"L \UX C \UY C' "# 2S;'   !* get X and Y if not already have!
    \UF				    !* get flags!
    QF&100."E			    !* no timeout: decode button change!
      (QF&7)Q0-Q0"E		    !* no new buttons down, button must have!
				    !* gone up!
	Q1"E Q0U1 0UC'		    !* first click, q0 is it.!
	Q0-Q1"E 1%C''		    !* same chord, increment clicks.!
      QF&7U0'			    !* remember current buttons down.!
    "#				    !* is timeout: all done!
      Q1"E Q0U1 0UC'		    !* if nothing yet, then we have the click!
      Q1UB			    !* set QB to the buttons!
      QXU.1 QYU.2		    !* remember mouse coordinates!
      FS HEIGHT - (QY/16)UY	    !* adjust Y to characters!
      QX/9 UX			    !* and X, too. !
      QF&7'			    !* return!
    HK>				    !* Erase temp buffer!
  

!& Read Mouse Click:! !S Reads the mouse click into the buffer!
  FI-27"E FI FI'		    !* strip the '2' and the $:, if necessary!
  FI <FIU2 Q2-c"E 0;' Q2I>	    !* strip the first semi.!
				    !* read next character! 
				    !* when read c, then done!
				    !* insert the character in the buffer!
				    !* and go back for more!
  

!& Handle Mouse:! !S Handles mouse events.  This must be placed on M-:.
This routine assumes that the input is in correct and full format.!
  5+5F[IBASE			    !* make sure in decimal!
  [B [C [X [Y [F		    !* c: char x, y: mouse positions, f: flags!
  [.1 [.2
  !* Here we must dispatch on the flags.!
  !* Set up description of mouse event !
  M(M.M &_Decode_Mouse)	    !* find out what buttons!
  [D [E
  FS HEIGHT - (FS ECHO LINES) - QY - 1"L
    QMouse_Echo_Dispatch_TableUD
    :IE BND	Button_not_defined_in_echo_area '
  "# QMouse_Dispatch_Table UD
    :IE BND	Button_not_defined '    !* select appropriate dispatch table!
  Q:D(QC*8+QB) [0
  Q0"E				    !* anything there?!
    Q:Mouse_Default_Dispatch_Table(QB)U0  !* try default table!
    Q0"E
      QE M(M.M &_Default_Mouse_Button ) ''
  !* Here we have a function !
  M0 

!Set Mouse Button:! !C !
  8,F Function_Name:_[0
  m.m0 m(m.m&_Macro_Name)u0
  @FT Put_0_on_mouse_button_(Press_button)_:_
  [C [B [X [Y [.0 [.1
  M(M.M &_Decode_Mouse)
  [D [E
  FS HEIGHT - (FS ECHO LINES) - QY - 1"L
    QMouse_Echo_Dispatch_TableUD :IE_in_echo_area_'
  "# QMouse_Dispatch_Table UD :IE'
  QC,QB M(M.M &_Print_Mouse_Button ) @FTE
  @ft
    __Go_ahead 1m(m.m&_Yes_or_No)"e 0'
  m.m0u:D(QC*8+QB)

!& Default Mouse Button:! !S Prints an informative error message!
  1,m(m.m&_Print_Mouse_Button)[0
  [1
  :I*1,_0 FS ERR

!& Print Mouse Button:! !S Prints an English rendition of a mouse button in the echo area.
Expects clicks,buttons in QC and QB resp.  With pre-comma arg of 1, returns
string.!
  [1
  :I1
  !* Print buttons!
  QB&4"N :I1 Left- '		    !* can't be anything else there, yet!
  QB&2"N :I1 1Middle- '
  QB&1"N :I1 1Right- '
  !* Print number!
  QC+1:\[0			    !* count is less 1!
  :I110
  "N Q1'"# @FT1'
  

!% Cursor to Mouse:! !S Move the cursor to the mouse, changing windows, if necessary!
  0FO..QWindow_2_Size"N	    !* in two window mode, check which window!
				    !* we want!
    FS TOP LINE"E		    !* in top window!
      FS LINES-QY"L
        M(M.M ^R_Other_Window)	    !* want the other window!
	''
    "#				    !* in bottom window!
      FS TOP LINE - QY"G	    !* want the top window!
        M(M.M ^R_Other_Window) '''
	
  FS WINDOW+BJ			    !* go to top of screen!
  1:< -(FS TOP LINE) + QY,QX :FM > !* move to position!
  

!% Mouse Scroll Window Proportional:! !S Scrolls the screen accoding to the X position of mouse.!
  QX*(Z-B)/(FS WIDTH)[0
  Q0-Z"G ZU0'
  Q0J 0L
  . FS WINDOW
  

!% Mouse Scroll Window:! !S Scrolls the screen up or down, depending on whether the
mouse is on the left half of the screen or the right.!
  QX-(FS WIDTH/2)"L
    @M(M.M^R_Previous_Screen)'
  "#
    @M(M.M^R_Next_Screen)'
  
   