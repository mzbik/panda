!* -*-Teco-*-!
!~FILENAME~:! !Extension to WORDAB, to write just some abbrevs.!
WRITE-SOME

!Write Some Word Abbrevs:! !C Write some abbrevs to a file.
Like Write Word Abbrev File, except that certain abbrevs are marked as
    unwritable by libraries that want to provide some standard abbrevs.  These
    standard abbrevs, however, are not to be "mixed" with the user's abbrevs,
    i.e. written to the user's word abbrev file.
Stringarg filename.  Default is WORDAB DEFNS.
Argument present means do not write out usage counts.
Normally writes a fast-loading format file, but if you have the
    Readable Word Abbrev Files option variable set to 1, it will write
    a human-readable format file (like that used by
    List Word Abbrevs).
Default filenames come from last definition filename used.!

 m(m.m& Declare Load-Time Defaults)
    Readable Word Abbrev Files, * Non-0 means write human-readable kind: 0


 !* The unwritable abbrevs are marked by having hook-abbrevs whose programs!
 !* begin with <excl>NoWr<excl> (six characters).!

 [.0[.1[.2[.3[.4[.5 f[DFile	    !* save regs!
 1f[FnamSyntax			    !* Lone fn is first fn. *!
 0fo..qLast Word Abbrev Filef"n fsDFilew'
 "#w etDSK:WORDAB DEFNS fsHSnamefsDSnamew'
 4,1fWord Abbrev Filef"ew'u.0	!* Read string argument *!
 et.0 fsDFileu.0		    !* .0: Set default fn. *!
 q.0m.vLast Word Abbrev Filew	    !* Save for next time. *!

 f[BBind			    !* Temp buffer. *!

 qReadable Word Abbrev Files"n	!* User wants readable kind.!
    m(m.m& Insert Writable Word Abbrevs)	!* Make a list of that kind.!
    oWRITE'				!* Go write them out.!

 :fo..qX  u.2			    !* .2: $X ^@$ offset, before any abbrevs.!
 q.2"L -q.2u.2'			    !* .2: $X ^@$ offset, positive.!
				    !* .2: Running ..Q index for abbrevs.!
 ff&1"E			    !* QWABL file has usage counts. *!
  @i|m.m& Make Usage Abbrev Variable[V	    !* V: Will be variable-maker. *!
|'"#				    !* QWABL file has no usage counts. *!
  @i|m.m& Make Non-Usage Abbrev Variable[V !* V: Will be variable-maker. *!
|'
 iq..q[..o			    !* Will select symtab buffer. *!

 0s				!* Search default, used for!
					!* quoting Alts and C-]s.!
 fq..q/5-q.2/3(			    !* Number of var slots to examine in ..Q.!
 q.2-1u.2			    !* .2: Start ..Q - 1.!
  )< q:..Q(%.2)u.3		    !* .3: Next variable name.!
     q:..Q(%.2)u.4		    !* .4: Next variable value.!
     q:..Q(%.2)u.5		    !* .5: Next variable comment.!
     q.4fp"L oNEXT'		    !* Skip variable if value is number.!
				    !* (Local vars become 0 when not in their!
				    !* buffer.)!
     f~(0,2:g.3)X "N oNEXT'	    !* Skip this variable if not $X ...$, !
     f~(fq.3-7,fq.3:g.3) Abbrev"N oNEXT'	!* ...or if not $... Abbrev$.!

     !* Now the part that is different from Write Word Abbrev File.  First,!
     !* check whether this variable is a hook (-WABMAC Abbrev) and starts with!
     !* the <excl>NoWr<excl>.  If so, skip it: !

     f~(fq.3-14,fq.3:g.3)-WABMAC Abbrev"e	!* This is a hook.!
       f~(0,6:g.4)!NoWr!"e oNEXT''	!* And it is not to be written.!
     "# !* Second check is to see if this is an abbrev with an associated hook!
	!* whose code marks it as unwritable: !
	0:g.5-#"e			!* This abbrev has a hook.!
	  0,fq.3-7:g.3u.1		!* .1: First part of variable name.!
	  f~(0,6:g(q:..q(:fo..q.1-WABMAC Abbrev+1)))!NoWr!"e !* Skip.!
	    oNEXT'''			!* ...!

     iMV.3			!* Insert var-maker call, varname. *!

     .(g.4)j <:s; r i c> zj i	!* Insert expansion and Teco-quote any!
					!* Altmodes or C-]s in it.!

     ff&1"E g.5 i'		!* Insert usage if no argument or only!
					!* pre-comma argument.!
     i
					!* Finish this definition.!

     !NEXT! >				!* Repeat for next variable.!

 !WRITE!

 eihpef.0				!* Write it out.!
 er fsIFileu.0 ec @ft
Written: .0
					!* Tell user the full filename.!
 0uWord Abbrevs Modified		!* Abbrevs no longer modified with!
					!* respect to save files.!
 0fsEchoActivew 1 

!& Insert Writable Word Abbrevs:! !S Insert a list of the writable word abbrev definitions.!

 [1[2[3[4[5[6[7 [9
 .f[VB fsZ-.f[VZ			!* Narrow bounds.!

 :fo..qX  u9 q9"l -q9u9'		!* 9: ..Q index to first!
					!* abbrev.!

 fq..q/5-q9/(q:..q(0))(			!* Number of slots to examine.!
    q9-1u9				!* 9: Start back one word.!
    )<					!* Iterate over variables.!

	q:..q(%9)u2			!* 2: Next variables name.!
	q:..q(%9)u3			!* 3: Its value.!
	q:..q(%9)u4			!* 4: Its comment.!

	.u5				!* 5: Start of abbrev insert.!

	q3fp"l oNEXT'			!* Skip variable if numeric value.!
					!* E.g. may be a local abbrev in!
					!* another buffer.  Or just broken.!

	g2				!* Insert variable name.!
	-7 f~ Abbrev"n oNEXT' -7d	!* Skip if not abbrev.!
	q5j 2 f~X "n oNEXT' 2d	!* ...!

	!* First, check whether this variable is a hook (-WABMAC Abbrev) and!
	!* starts with the <excl>NoWr<excl>.  If so, skip it: !

	f~(fq2-14,fq2:g2)-WABMAC Abbrev"e	!* This is a hook.!
	  f~(0,6:g3)!NoWr!"e oNEXT''	!* And it is not to be written.!
	"# !* Second check is to see if this is an abbrev with an associated hook!
	   !* whose code marks it as unwritable: !
	   0:g4-#"e			!* This abbrev has a hook.!
	    0,fq2-7:g2u.1		!* .1: First part of variable name.!
	    f~(0,6:g(q:..q(:fo..q.1-WABMAC Abbrev+1)))!NoWr!"e !* Skip.!
	      oNEXT'''			!* ...!

	@:f l d .u6			!* 6: Point between abbrev, mode.!

	zj .u7 g3			!* 7: Point between mode, expansion.!
					!* Insert value string.!

	!INS!				!* Now we are sure we insert this!
					!* abbrevs definition.  Must prettify!
					!* the junk inserted so far.!

	q6j				!* To end of abbrev.!
	.,q7f=*"e			!* Global abbrev.!
	  d i:		'		!* ..!
	"# q7-zu7			!* 7: Z-relative point now, between!
					!* mode and expansion.!
	   i:	(			!* Separate abbrev, mode.!
	   q7+zj i)	'		!* Separate mode, count.!
	g4				!* Get comment -- usage count or sharp!
					!* if WABMAC.!
	i	"			!* Separate count, expansion.!
	<@:f"l .-z; i" c>		!* Double all double quotes in the!
					!* expansion.!
	i"
	!''''!				!* Terminate the expansion, finishing!
					!* the definition for this abbrev.!

	.u5				!* 5: Set so the q5,zk is no-op.!


	!NEXT!				!* Some jump here to skip an abbrev.!

	q5,zk				!* Kill garbage if skipping.!

	>				!* On to next variable.!

 h					!* Return bounds of inserted!
					!* definitions.!
 