;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

((section (h1 "Abstract")

	  (main (p "S-expressions, short for symbolic expressions, are the syntactic backbone of the Lisp programming language family. "
		   "While each dialect uses a slightly different variant for its native syntax, there is broad agreement on the fundamentals. "
		   "This document gives a precise specification and a rationale for a syntax that is close to a least common denominator.")
		
		(p "Such a pidgin syntax is appropriate for the interchange of data files across language boundaries. "
		   "It is also fit for code written in some of the kind of domain-specific languages that Lisp handles well.")

		(p "The proposed syntax is simple to implement in full. A reader is about 200 lines of code in a typical high-level language. "
		   "The authors hope this will encourage the use of S-expressions beyond the Lisp community.")

		))))