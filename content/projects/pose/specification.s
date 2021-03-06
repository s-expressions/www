;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

((section (h1 "Specification")

	  (main (h2 "File name extension")
		(p "The suggested extension for a POSE file is .pose. This appears to be unused by any common program.")
		(br)
		(h2 "MIME type")
		(p "The tentative plan is to register the internet media type text/pose with IANA. In the meantime, text/x-pose is suggested.")
		(br)
		(h2 "Grammar")
		
		(table class: "simple"

		       (tr (td "expressions ")(td "=")(td "(atmosphere* expression)* atmosphere*"))
		       (tr)
		       (tr (td "atmosphere  ")(td "=")(td "whitespace | comment"))
		       (tr (td "whitespace  ")(td "=")(td "HT | VT | FF | space | newline"))
		       (tr (td "newline     ")(td "=")(td "CR | LF"))
		       (tr (td "comment     ")(td "=")(td "';' and all subsequent characters until newline or eof"))
		       (tr)
		       (tr (td "expression  ")(td "=")(td "list | string | number | symbol"))
		       (tr)
		       (tr (td "list        ")(td "=")(td "'(' expressions ')'"))
		       (tr)
		       (tr (td "string      ")(td "=")(td "'\"' string-char* '\"'"))
		       (tr (td "string-char ")(td "=")(td "string-esc | any-char-except-backslash"))
		       (tr (td "string-esc  ")(td "=")(td "\\\\ | \\\""))
		       (tr)
		       (tr (td "number      ")(td "=")(td "'0' | decimal"))
		       (tr (td "decimal     ")(td "=")(td "minus? onenine digit* fraction? exponent?"))
		       (tr (td "fraction    ")(td "=")(td "'.' digit+"))
		       (tr (td "exponent    ")(td "=")(td "'e' sign digit+"))
		       (tr)
		       (tr (td "symbol      ")(td "=")(td "wordsym | signsym"))
		       (tr (td "wordsym     ")(td "=")(td "wordsym-1st wordsym-cont*"))
		       (tr (td "wordsym-1st ")(td "=")(td "letter | punct-1st"))
		       (tr (td "wordsym-cont")(td "=")(td "letter | punct-cont | digit"))
		       (tr (td "signsym     ")(td "=")(td "sign signsym-rest?"))
		       (tr (td "signsym-rest")(td "=")(td "signsym-2nd signsym-cont*"))
		       (tr (td "signsym-2nd ")(td "=")(td "letter | punct-cont"))
		       (tr (td "signsym-cont")(td "=")(td "letter | punct-cont | digit"))
		       (tr (td "punct-1st   ")(td "=")(td "'!' | '$' | '&' | '*' | '+' | '-' | '/' | '<' | '=' | '>' | '_'"))
		       (tr (td "punct-cont  ")(td "=")(td "punct-1st | '.' | '?' | '@'"))
		       (tr)
		       (tr (td "letter      ")(td "=")(td "a-z | A-Z"))
		       (tr (td "digit       ")(td "=")(td "0-9"))
		       (tr (td "onenine     ")(td "=")(td "1-9"))
		       (tr (td "minus       ")(td "=")(td "'-'"))
		       (tr (td "sign        ")(td "=")(td "'-' | '+'"))

		       )


		)))