`((section (h1 "Overview")

	  (main 




(p (strong "Twinjo") " is a general and extensible method of serializing Scheme data in a way that other languages can straightforwardly handle.")

(p "The distinctive feature of Twinjo is that it provides both a text and a binary format, and the two formats can encode the same data. This makes it convenient to switch between text and binary as needed.")

(p "Twinjo Text is a variant of Lisp S-expressions, and Twinjo Binary is a subset of ASN.1 Basic Encoding Rules. It makes no use of ASN.1 schemas."

(p "Though the formats are being designed under Scheme, there is nothing Scheme-specific about them. Libraries for other languages, especially other Lisps, are planned.")

))))