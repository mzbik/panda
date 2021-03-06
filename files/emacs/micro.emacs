!* -*-TECO-*-!
!* <GERGELY.EMACS>MICRO.EMACS.6, 29-Oct-80 16:05:28, Edit by GERGELY!
!* <GERGELY.EMACS>MICRO..16, 23-Apr-80 08:18:04, Edit by GERGELY!

!~filename~:! !Set of macros for Microprocessors!
MICRO

!Assemble Text Table:! !C Prepares a buffer of text for micro-assembler code!
J :S	.BYTE"L :i*CBuffer_has_been_preprocessed
fsechodisp0fsechoac w'
j M(M.M Untabify)
j<.-Z;
   @:L fs hposua
   0@L
   qa-1/8 <9i I.BYTE_ 39I
     8C 39I 13I 10I>
   qa-fshpos"N 9i i.BYTE_ 39i :@l 39i 13i 10i'
   9i i.BYTE_ i$0D_$0A
   1L>
9i i.BYTE_$00



!Disassemble Text Table:! !C Disassembles processed text code!
j <:S	.byte_'; fkd :l -d2d>
j <:s	.byte_$0D_$0A; fkd>
j <:s	.byte_$00
; fkd>


!Format Micro Line:! !C Formats a long string into lines having <arg> chars.
CAUTION: Do not execute this command twice on the same buffer, as
   unexpected results may occur.!
[a [b				    !* Push temporary Q-Registers!
FF"N ua' "#80ua'		    !* Qa is length of line, default!
				    !* 80.!
j<.-z; QA:C; 13i 10i>		    !* Do the formatting!
j 				    !* done, goto the top of the file!
				    !* and return!


!Strip and Dump:! !C Strips buffer and writes dumped file to DUMP.LST
This is a very specialized file!

    E[ E\ FNE^ E]
    0,fszM(m.M &_Save_For_Undo) DUMP_File_Preparation
    F[DFILE

    J<.UA
	:S____0;
	.UB 0L QB-.-5"E
	    5D QA,.K I['
	L>
    .,ZK
    J<:S_______*;
	0L 1K 1D wI\>
    J<:S____; fkd :K>
    J<:S_; -D>
    J<:S[; -D4D>
    J<:S\; __>
    ZJI___
    
    J<:S
	; -2D>
    M(M.M Write_File)DUMP.LST
    J

!*
/ Local Modes: \
/ MM Compile: 1:<M(M.M^R Date Edit)>
M(M.M^R Save File)
M(M.MGenerate Library)MICROMICRO \
/ End: \
!
  