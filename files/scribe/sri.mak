@Marker(Make,SRI,Diablo)
@Define(BodyStyle,Spacing 1.5,Spread 0.5)
@Define(TitleStyle,Spacing 1,Spread 0)
@Define(NoteStyle,Spacing 1,Spread 0.3)

@Generate(Outline,Contents)
@Send(Contents "@Style(PageNumber <@i>)@Set(Page=0)")
@Send(Contents "@PrefaceSection(CONTENTS)")
@define(noul,underline off)
@Define	(HDX,LeftMargin 0,Indent 0,Fill,Spaces compact,Above 1,Below 0,
	  break,Use B,Need 5,Justification Off)
@Define	(Hd0,Use HdX,Above 1inch,Below 0.5inch)
@Define(Hd1,Use HdX,Above .5inch, Below 3)
@Define(HD1A=HD1,Centered,Pagebreak Before)
@Define(Hd2,Use HdX,Above 3, Below 2)
@Define(Hd3,Use HdX,Above 2, Below 2, indent 5)
@Define(Hd4,Use HdX,Above 2, Below 2, indent 10)
@Define(TcX,LeftMargin 5,Indent -5,RightMargin 5,Fill,Spaces compact,
	Above 0,Spacing 1,Below 0,Break,Spread 0)
@Define(Tc0=TcX)
@Define(Tc1=TcX,Above 2,Below 1.5)
@Define(Tc2=TcX,LeftMargin 10, Above 1.5, Below 1.5)
@Define(Tc3=TcX,LeftMargin 15, Above 1, Below 1)
@Define(Tc4=TcX,LeftMargin 20)
@Counter(MajorPart,TitleEnv HD0,ContentsEnv tc0,Numbered [@I],
	  IncrementedBy Use,Announced)
@Counter(Chapter,TitleEnv HD1A,ContentsEnv tc1,Numbered [@I],
	  IncrementedBy Use,Referenced [@I],Announced)
@Counter(Appendix,TitleEnv HD1A,ContentsEnv tc1,Numbered [@A.],
	  IncrementedBy,Referenced [@A],Announced,Alias Chapter)
@Counter(UnNumbered,TitleEnv HD1A,ContentsEnv tc1,Announced,Alias Chapter)
@Counter(Section,Within Chapter,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@A.],Referenced [@#@:.@A],IncrementedBy Use,
		Announced)
@Counter(AppendixSection,Within Appendix,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@1.],
	  Referenced [@#@:.@1],IncrementedBy Use,Announced)
@Counter(SubSection,Within Section,TitleEnv HD3,ContentsEnv tc3,
	  Numbered [@1.],
	  IncrementedBy Use,Referenced [@#@:.@1])
@Counter(Paragraph,Within SubSection,TitleEnv HD4,ContentsEnv tc4,
	  Numbered [@a.],Referenced [@#@:.@a],IncrementedBy Use)

@Counter(PrefaceSection,TitleEnv HD1A,Alias Chapter)
@define(Bullet=Itemize,Numbered "*")
@Counter(FigureCounter,Within Chapter,Numbered <Figure @#@:-@1: >,
	 Referenced "@#@:-@1",Init 0)
@Define(Figure,Break,Nofill,Spaces Kept,Use R,BlankLines kept,Float,
	Above 1,Below 1,Counter FigureCounter,NumberLocation LFL)
@Define(FullPageFigure,Use Figure,FloatPage)
@Define(CaptionEnv=Center,FaceCode R)

@Define(TitlePage,Break,PageBreak Around,Centered,
	BlankLines Kept,Above 4.4inches)
@Define(TitleBox,Break,Fixed 1.8inches)
@Define(Abstract=Text,Spacing 1.5,Indent 5,Fill,Justification, Spread .5,
	Initialize "@heading{Abstract}")
@Define(ResearchCredit,Fixed 8.5inches,Fill,Justification)
@Define(CopyrightNotice,Fixed 8.0inches,Centered,
	Initialize "Copyright -C- @value{year} ")

@define(FileExample,Break,Use NoteStyle,FaceCode F,CRbreak,LeftMargin 16,
        Fill,BlankLines Kept,Indent -10,Spacing 1,Spread 0,Above 1,Below 1)
@Define(OutputExample=Verbatim,LeftMargin 2)

@Equate(Sec=Section,Subsec=SubSection,Chap=Chapter,Para=Paragraph,
	SubSubSec=Paragraph,AppendixSec=AppendixSection)
@Enter(Text,Indent 5,Use BodyStyle,LeftMargin .75inch,TopMargin 1inch,
	BottomMargin 1.4inch,LineWidth 6inches,Justification,
	Spaces Normalized,Font CharDef,FaceCode R)
@set(page=0)
@PageFooting(Center "@value(page)")
@Marker(Make,SRI)
@Define(BodyStyle,Spacing 2)
@Define(TitleStyle,Spacing 1)
@Define(NoteStyle,Spacing 1)

@Generate(Outline,Contents)
@Send(Contents "@Style(PageNumber <@i>)@Set(Page=0)")
@Send(Contents "@PrefaceSection(CONTENTS)")
@define(noul,Underline Off)
@Define	(HDX,LeftMargin 0,Indent 0,Fill,Spaces compact,Above 1,Below 0,
	  break,Use B,Need 5,Justification Off)
@Define	(Hd0,Use HdX,Above 1inch,Below 0.5inch)
@Define(Hd1,Use HdX,Above 3)
@Define(HD1A=HD1,Centered,Pagebreak Before)
@Define(Hd2,Use HdX,Above 2)
@Define(Hd3,Use HdX,Above 3,indent 5)
@Define(Hd4,Use HdX,Above 2,indent 10)
@Define(TcX,LeftMargin 5,Indent -5,RightMargin 5,Fill,Spaces compact,
	Above 0,Spacing 1,Below 0,Break,Spread 0)
@Define(Tc0=TcX)
@Define(Tc1=TcX,Above 1,Below 1)
@Define(Tc2=TcX,LeftMargin 10)
@Define(Tc3=TcX,LeftMargin 15)
@Define(Tc4=TcX,LeftMargin 20)
@Counter(MajorPart,TitleEnv HD0,ContentsEnv tc0,Numbered [@I.],
	  IncrementedBy Use,Announced)
@Counter(Chapter,TitleEnv HD1A,ContentsEnv tc1,Numbered [@I],
	  IncrementedBy Use,Referenced [@I],Announced)
@Counter(Appendix,TitleEnv Hd1A,ContentsEnv tc1,Numbered [@A.],
	  IncrementedBy,Referenced [@A],Announced,Alias Chapter)
@Counter(UnNumbered,TitleEnv HD1A,ContentsEnv tc1,Announced,Alias Chapter)
@Counter(Section,Within Chapter,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@A.],
	  Referenced [@#@:.@A],IncrementedBy Use,Announced)
@Counter(AppendixSection,Within Appendix,TitleEnv HD2,ContentsEnv tc2,
	  Numbered [@A.],
	  Referenced [@#@:.@A],IncrementedBy Use,Announced)
@Counter(SubSection,Within Section,TitleEnv HD3,ContentsEnv tc3,
	  Numbered [@1.],IncrementedBy Use,Referenced [@#@:.@1])
@Counter(Paragraph,Within SubSection,TitleEnv HD4,ContentsEnv tc4,
	  Numbered [@a.],Referenced [@#@:.@a],IncrementedBy Use)

@Counter(PrefaceSection,TitleEnv HD1A,Alias Chapter)
@define(Bullet=Itemize,Numbered "*")
@Counter(FigureCounter,Within Chapter,Numbered <Figure @#@:-@1: >,
	 Referenced "@#@:-@1",Init 0)
@Define(Figure,Break,Nofill,Spaces Kept,Use R,BlankLines kept,Float,
	Above 1,Below 1,Counter FigureCounter,NumberLocation LFL)
@Define(FullPageFigure,Use Figure,FloatPage)
@Define(CaptionEnv=Center,FaceCode R)

@Define(TitlePage,Break,PageBreak Around,Centered,
	BlankLines Kept,Above 4.4inches)
@Define(TitleBox,Break,Fixed 1.8inches)
@Define(Abstract=Text,Spacing 2,Indent 5,Fill,Justification,
	Initialize "@heading{Abstract}")
@Define(ResearchCredit,Fixed 8.4inches,Fill,Justification)
@Define(CopyrightNotice,Fixed 8.0inches,Centered,
	Initialize "Copyright -C- @value{year} ")

@define(FileExample,Break,Use NoteStyle,FaceCode F,CRbreak,LeftMargin 16,
        Fill,BlankLines Kept,Indent -10,Spacing 1,Spread 0,Above 1,Below 1)
@Define(OutputExample=Verbatim,LeftMargin 2)

@Equate(Sec=Section,Subsec=SubSection,Chap=Chapter,Para=Paragraph,
	SubSubSec=Paragraph,AppendixSec=AppendixSection)
@Enter(Text,Indent 5,Spread 1,Use BodyStyle,LineWidth 7.0inches,
	Spaces Normalized,
	Justification,Font CharDef,FaceCode R)
@set(page=0)
@PageFooting(Center "@value(page)")
   