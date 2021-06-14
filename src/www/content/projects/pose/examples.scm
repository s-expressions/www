`((section (h1 "Examples")

	   (main (br)

		 (p "; comment")
		 (br)
		 (p "()" (br)
		    "(1)" (br)
		    "(1 2)" (br)
		    "(1 2 3)" (br)
		    "(1 2 (3 (4)) 5)" (br))
		 (br)
		 (p "foo-bar")
		 (br)
		 (p "\"foo bar\"" (br)
		    "\"foo \\\\bar \\\" baz\""
		    )
		 (br)
		 (table class: "simple"
			(tr (td "123")       (td)      (td "-123")        (td)    (td "leading zero not permitted"))
			(tr (td "0.123")     (td)      (td "-0.123")      (td)    (td "zero required before the dot"))
			(tr (td "123.45")    (td)      (td "-123.45"))
			)
		 )))