((section

  (h1 "Standards")

  (main

   (p "The following are a list of S-expression related technological standards linked to projects belonging to the S-expressions organization as well as to outside sources:")

   (br)


   (h2 "PROGRAMMING LANGUAGES")

   (h3 "STANDARDIZED")
   (ul
    (li (a href: "https://common-lisp.net/" "Common Lisp"))
    (li (a href: "https://www.scheme.org/" "Scheme"))
    (li (a href: "http://islisp.org/" "ISLisp")
	" - ISO standard derived from CL and Scheme"))

   (h3 "TARGETING A WELL-KNOWN VM/LANGUAGE")
   (ul
    (li (a href: "https://clojure.org/" "Clojure")
	" - for the Java Virtual Machine (JVM) and JavaScript")
    (li (a href: "https://lfe.io/" "Lisp Flavored Erlang (LFE)")
	" - for BEAM, the Erlang Virtual Machine")
    (li (a href: "https://hylang.org/" "Hy")
	" - for Python")
    (li (a href: "https://urn-lang.com/" "Urn")
	" - for Lua")
    (li (a href: "https://github.com/bakpakin/Fennel" "Fennel")
	" - for Lua")
    (li (a href: "https://github.com/eudoxia0/corvus" "Corvus")
	" - low-level, targets LLVM")
    (li (a href: "https://github.com/rolfrm/Photon" "Photon")
	" - low-level, targets TCC"))

   (h3 "STANDALONE")
   (ul
    (li (a href: "https://racket-lang.org/" "Racket"))
    (li (a href: "http://www.newlisp.org/" "newLISP"))
    (li (a href: "https://janet-lang.org/" "Janet")))

   (br)
   (h2 "APPLICATIONS")

   (h3 "SCRIPTED IN LISP")
   (ul
    (li (a href: "https://emacs.org/" "GNU Emacs")
	" - text editor, scripted in Emacs Lisp")
    (li (a href: "https://www.autodesk.com/autocad" "AutoCAD")
	" - CAD suite, scripted in AutoLISP / Visual LISP")
    (li (a href: "https://www.gimp.org" "GIMP")
	" - paint program, scripted in Scheme")
    (li (a href: "https://gnucash.org/" "GnuCash")
	" - accounting program, scripted in Scheme")
    (li (a href: "https://lilypond.org/" "LilyPond")
	" - sheet music program, scripted in Scheme"))

   (h3 "USING S-EXPRESSION NOTATION")
   (ul
    (li (a href: "https://notmuchmail.org/" "Notmuch")
	" - email search, has S-expression"
	" queries and output"))

   (br)
   (h2 "GENERAL-PURPOSE DATA FORMATS")
   (ul
    (li (a href: "https://pose.s-expressions.org/" "Pose")
	" - portable S-expressions")
    (li (a href: "https://twinjo.s-expressions.org/" "Twinjo")
	" - dual text and binary formats,"
	" the text format is S-expressions")
    (li (a href: "https://people.csail.mit.edu/rivest/sexp.html"
	   "Rivest S-expressions")
	" - internet draft for machine-to-machine communication"))

   (br)
   (h2 "DOMAIN-SPECIFIC LANGUAGES")
   (ul
    (li (a href: "https://standards.s-expressions.org/name" "Name")
	" - represents people's names")
    (li (a href: "https://standards.s-expressions.org/bib" "Bib")
	" - represents BibTeX citations")))))
