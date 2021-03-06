!* -*-TECO-*- !
!~FILENAME~:! !PHRASE macros for handling phrases!
PHRASE

!& Setup PHRASE Library:! !S Assign C-, M-, C-M-, and ^X-,
and initialize qPhrase Delimiters if undefined!

    0fo..qPhrase_Delimiters"e	      !* Set up Phrase Delimiters if necessary!
       :i* ,.;:()!][}{<>?-- M.C Phrase_Delimiters   *_search_string_to_define_phrase_boundaries'

   0FO..Q PHRASE_Setup_Hook[1	    !* see if setup hook defined !
   FQ1"G M1'			    !* if so, run it, otherwise default key assignments !
      "# M.M ^R_Forward_Phrase   U.,
	 M.M ^R_Backward_Phrase  U..,
	 M.M ^R_Mark_Phrase      U...,
	 M.M ^R_Delete_Phrase    U:.X(,) '
   	 


!^R Forward Phrase:! !^R Move forward over one or more phrases.
A phrase contains the punctuation mark that ends it.  Move
forward, therefore, past <arg> punctuation marks.  (The phrase-
defining search string is in qPhrase Delimiters)!

	"L -:M(M.M ^R_Backward_Phrase)'  !* if neg arg, jump to backward !
	q Phrase_Delimiters [1	      !* note that F^B cannot be used !
	 :s 1   0		      !* because "--" is 2 characters long !

!^R Backward Phrase:! !^R Move backward over one or more phrases.
A phrase contains the punctuation mark that ends it.  Move
backwards, therefore, past <arg> punctuation marks, leaving
the pointer just following the last one.  (The phrase-defining
search string is in qPhrase Delimiters)!

	"L -:M(M.M ^R_Forward_Phrase)'  !* if neg arg, jump to forward !
	q Phrase_Delimiters [1 1r	     !* move left one at least, in case!
					     !* starting at phrase beginning !
	- :s 1  : 0		     !* :^B does FKC as well, so !

!^R Mark Phrase:! !^R Mark one or more surrounding phrases.
Sets the point before and the mark after the current phrase (the one
containing the point).  If an explicit arg is given, |n|-1 others are
included, following the current one if the argument is positive,
preceding it if the argument is negative.  (Notes:  A phrase
contains the punctuation mark that ends it.  The phrase-defining
search string is kept in qPhrase Delimiters.)!

    ("l 1' "#') m(m.m ^R_Forward_Phrase) w .
       m(m.m ^R_Backward_Phrase) 0 	    !* ^@^@ is abs val!


!^R Delete Phrase:! !^R Delete one (or several) phrases.
Deletes from the pointer forwards (or backwards, if given
a negative argument) through <arg> phrases.  Note that
^R Mark Phrase followed by ^R Kill Region will delete the
entire phrase surrounding the cursor; ^R Delete Phrase deletes
only the part following (or preceding) the cursor.  (Notes:
A phrase contains the punctuation mark ending it.  The phrase-
defining search string is kept in qPhrase Delimiters.)!

    [9
    .,(
        m(m.m ^R_Forward_Phrase)
        w). f :m(m.m &_Kill_Text)
