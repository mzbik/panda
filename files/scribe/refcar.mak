@Comment[ Copyright (C) 1979 Brian K. Reid ]
@marker(Make,RefCard,XGP)
@Comment{

This document type produces a pocket reference card on the CMU XGP.
Each panel of the reference card corresponds to one Scribe page.
The output is intended for 65% reduction, yielding a finished size
of 3.6 inches by 8.5 inches for each panel.

}
@Declare(PaperLength=13.4inches)
@Font(NewsGothic10)
@TextForm(Bar="@begin(format,facecode Z,Above 0,Below 0)@&@end(format)",
	  Sep1="@ @ @ @ ",Sep2="@ @ @ ")
@Modify(Description,LeftMargin 12,Indent -12)
@Modify(Heading,Above 0.2,Below 0.2)
@Define(BB=B,Font HeadingFont,FaceCode S)
@LibraryFile(Math)
@Begin(Text,Justification,Font BodyFont,FaceCode R,Spaces Compact,
	Indent 0,LeftMargin 1inch,TopMargin 1inch,BottomMargin 1inch,
	LineWidth 5.4in,
	Spacing 32raster,Spread 20raster)
@Marker(Make,RefCard,GSI)
@Comment{

This document type definition produces a pocket reference card on
the GSI photocomposer.  Each panel of the reference card is 3.6inches,
which is 1/3rd of the length of an 11-inch sheet of paper.

}
@Declare(PaperLength=8.5inches)
@Style(FontScale=8)
@Font(CMU 4)
@Modify(Insert,Above 0.3lines,Below 0.3lines)
@Modify(Description,LeftMargin 16,Indent -16,Spread 0.5lines)
@Define(ShortDescription=Description,Indent -12,LeftMargin 12,Spread 0.25lines)
@Modify(SubHeading,Size 7,FaceCode B)
@Modify(Heading,Above 0.2,Below 0.2,Size 10,FaceCode B)
@Modify(MajorHeading,Above 0.3,Below 0.3,Size 12,FaceCode B)
@Modify(Itemize,Spacing 9pts)
@Modify(Insert,Spacing 9pts)
@Define(BB=B)
@LibraryFile(Math)
@Begin(Text,Justification,Font BodyFont,FaceCode R,Spaces Compact,
	Size 8,
	Indent 0,LeftMargin 0.2in,TopMargin 0.2in,BottomMargin 0.2in,
	LineWidth 3.5inch,Spacing 9pts,Spread 0.3lines)
@marker(Make,RefCard,Diablo)
@Declare(PaperLength=11inches)
@TextForm(Bar="@begin(format,above 0,leftmargin 0,rightmargin 0)@&_@end(format)")
@Begin(Text,Justification on,Font CharDef,FaceCode R,Spaces Compact,
	Spacing 1.5,Spread 1,Indent 0,
	LineWidth 5in,
	LeftMargin 1inch,TopMargin .1inch,BottomMargin .1inches)
 