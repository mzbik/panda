!~Filename~:! !VT52 numeric keypad argument accumulation!
VT52

!& SETUP VT52 LIBRARY:! !S Define Meta-? for VT52 keypad hacking.!

  M.M&_VT52_KEYPAD_PROCESSORU..?

!VT52 Alternate Keypad:! !C Turns on alternate keypad mode for VT52.
When this command is executed, the numeric keypad can be used to enter
arguments for the following function.  Numbers enter as themselves and
the "." key serves as minus.!

  27FSIMAGEOUT
  61FSIMAGEOUT

!VT52 Normal Keypad:! !C Turns off alternate keypad mode for VT52.
The keys on the keypad become functionally identical to the standard
digit keys.  See VT52 Alternate Keypad for a description of the
alternative.!

  27FSIMAGEOUT
  62FSIMAGEOUT

!& VT52 KEYPAD PROCESSOR:! !S Processes VT52 keypad argument digits.
This macro is intended to be put on meta-? so that when a VT52
is in VT52 Alternate Keypad mode, to enable the special functions
such as argument accumulation of digits.!

  FI[A
  FS^RARGP"E @FT
ARG: '
  QA-112"L OUNDIGIT'
  QA-121"G OUNDIGIT'
  FS^RARG"L
    Q.Y-1"E-1*(QA-112)FS^RARG'
    "# FS^RARG*10-QA+112FS^RARG''
  "# FS^RARG*10+QA-112FS^RARG'
  Q.Y+1U.Y
  QA-64UA
  @FTA
  OEXIT

 !UNDIGIT!
  QA-77"E M(M.M^R_DESCRIBE) OEXIT1'
  QA-110"E
    FS^RARGP"G FG OEXIT'
    -1FS^RARG
    @FT-
    1U.Y'
 !EXIT!
  0FS^RLAST
  3FS^RARGP
 !EXIT1!
  0FSECHOACTIVE
  
 