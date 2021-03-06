@Comment[ Copyright (C) 1979 Brian K. Reid ]

@marker(Make,Letter,XGP)
@Font(NewsGothic10)
@Define(Address,Group,Nofill,LeftMargin 0,Break,Use R,
	Fixed 2inches,Spacing 1.0)
@Define(Body,Fill,Justification,Use R,LeftMargin 0,EofOK,
	Spacing 1,Spread 1,Spaces Compact,BlankLines Break,
	Above 1.3inch,Below 0.5inch,Break)
@Define(Ends,Nofill,LeftMargin 3.3inch,Spread 0,Break,Use R,
	RightMargin 0,BlankLines Kept,Spacing 1)
@Define(Notations,Nofill,LeftMargin 0,Spread 0,Break,BlankLines Kept,
	RightMargin 0,Spaces Kept,Fixed 9.5inches)
@Define(PS=Body,Above 0,Below 0)
@Define(Greeting=Flushleft)
@Equate(PostScript=PS,PostScripts=PS,Closings=Notations,Initials=Notations)
@LibraryFile(Math)
@begin(Text,Justification,Font BodyFont,FaceCode R,LeftMargin 1.0inch,
	LineWidth 6.3inches,BottomMargin 1inch,TopMargin 1.0inch,
	Spacing 1,Indent 0)
@begin(Ends,Eofok)
@PageHeading(left "@value(Date)",right "Page @value(Page)")
@marker(Make,Letterhead,XGP)
@string(Phone="(412) 578-2565",Department="Computer Science")
@DefineFont(LetterHeadFont,Q=<ascii "CMU32">,R=<ascii "NGR25">)
@Font(NewsGothic10)
@Define(Q,FaceCode Q)
@Define(Address,Group,Nofill,LeftMargin 0,Break,Use R,
	Fixed 2inches,Spacing 1.0)
@Define(Body,Fill,Justification,Use R,LeftMargin 0,EofOK,
	Spacing 1,Spread 1,Spaces Compact,BlankLines Break,
	Above 1.3inch,Below 0.5inch,Break)
@Define(Ends,Nofill,LeftMargin 3.3inch,Spread 0,Break,Use R,
	RightMargin 0,BlankLines Kept,Spacing 1)
@Define(Notations,Nofill,LeftMargin 0,Spread 0,Break,BlankLines Kept,
	RightMargin 0,Spaces Kept,Fixed 9.5inches)
@Define(PS=Body,Above 0,Below 0)
@Define(Greeting=Flushleft)
@Equate(PostScript=PS,PostScripts=PS,Closings=Notations,Initials=Notations)
@LibraryFile(Math)
@Begin(Text,Justification,Font BodyFont,FaceCode R,LeftMargin 1.0inch,
	Indent 0,
	LineWidth 6.3inches,BottomMargin 1inch,TopMargin 0.3inch,
	Spacing 1)
@Begin(Format,Font LetterHeadFont,FaceCode R,Break)
@tabs(3.3inches)
      @Q[ ]  @\Department of @value(Department)
@\Schenley Park
@\Pittsburgh, Pennsylvania 15213
@\@value(Phone)

@\@value(date)
@End(Format)
@Begin(Ends,Eofok)
@style(TopMargin=1inch)
@PageHeading(left "@value(Date)",right "Page @value(Page)")
@Comment{

Document type definition file to define a personal letter
(i.e. no letterhead) on the Diablo HyType II.
}
@marker(Make,Letter,Diablo)
@Style(Spacing 1,Spread 0.3,indentation 0)
@Typewheel(Elite 12)
@Define(Address,Group,Nofill,LeftMargin 0,Spread 0,Break,Use R,
	Below 0.5inch,Initialize "@Blankspace(0.7inches)")
@Define(Body,Break,Fill,Justification off,Use R,Above 0.3inch,EofOK,LeftMargin 0,
	Below 0.5inch,Spread 0.8,RightMargin 0)
@Define(Ends,Nofill,LeftMargin 3.8inches,Spread 0,Break,Use R,
	RightMargin 0,Blanklines kept)
@Define(Notations,Nofill,LeftMargin 0,Spread 0,Break,BlankLines Kept,
	RightMargin 0,Spaces Kept)
@Define(PS=Body,Above 0,Below 0)
@Define(Greeting=FlushLeft)
@Equate(PostScript=PS,PostScripts=PS,Closings=Notations,Initials=Notations)
@LibraryFile(Math)
@Begin(Text,Justification off,Font CharDef,FaceCode R,LeftMargin 1.0inch,
	LineWidth 6.3inch,BottomMargin 0.5inch,TopMargin 1inch,
	Spacing 1,Spread 0.8lines,indent 0)
@Begin(Ends,EOFOK)
@style(TopMargin=1inch)
@PageHeading(left "@value(Date)",right "Page @value(Page)")
@marker(Make,LetterHead,Diablo)
@Style(Spacing 1,Spread 0.3,indentation 0)
@Typewheel(Elite 12)
@Define(Address,Group,Nofill,LeftMargin 0,Spread 0,Break,Use R,
	Below 0.5inch,Initialize "@Blankspace(0.7inches)")
@Define(Body,Break,Fill,Justification off,Use R,Above 0.3inch,EofOK,LeftMargin 0,
	Below 0.5inch,Spread 0.8,RightMargin 0)
@Define(Ends,Nofill,LeftMargin 3.5inches,Spread 0,Break,Use R,
	RightMargin 0,Blanklines kept)
@Define(Notations,Nofill,LeftMargin 0,Spread 0,Break,BlankLines Kept,
	RightMargin 0,Spaces Kept)
@Define(PS=Body,Above 0,Below 0)
@Define(Greeting=Flushleft)
@Equate(PostScript=PS,PostScripts=PS,Closings=Notations,Initials=Notations)
@LibraryFile(Math)
@Begin(Text,Justification off,Font CharDef,FaceCode R,LeftMargin 1.3inch,
	LineWidth 6.0inch,BottomMargin 0.5inch,TopMargin 1inch,
	Spacing 1,Spread 0.8lines,indent 0)
@Begin(Ends,EOFOK)
@style(TopMargin=1inch)
@PageHeading(left "@value(Date)",right "Page @value(Page)")





@value(date)
@marker(Make,Letter)
@Style(Spacing 1,Spread 1,indentation 0)
@Style(TopMargin 1inch,BottomMargin 1inch,LeftMargin 1inch,
	LineWidth 6.5inches)
@Define(Ends,Nofill,LeftMargin 3in,Spread 0,Break,BlankLines Kept,RightMargin 0)
@Define(Address=Ends,LeftMargin 0,Above 4)
@Define(Body,Fill,Justification,Use R,LeftMargin 0,EofOK,
	Spacing 1,Spread 1,Spaces Compact,BlankLines Break,
	Above 1,Below 0.5inch,Break)
@Define(Notations,Nofill,LeftMargin 0,Spread 0,Break,BlankLines Kept,
	RightMargin 0,Spaces Kept,Fixed 9.5inches)
@Define(PS=Body,Above 0,Below 0)
@Define(Greeting=Flushleft,Below 1,Above 1)
@Equate(PostScript=PS,PostScripts=PS,Closings=Notations,
	Initials=Notations)
@LibraryFile(Math)
@Begin(Text,Justification,Font CharDef,FaceCode R)
@PageHeading(Center "@value(page)")
@Begin(Ends,EofOK)
    