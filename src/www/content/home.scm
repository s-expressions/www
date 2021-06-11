`(section (h1 "S-expressions")

	  (main (p "Also known as 'symbolic expressions' are a type of notation used to represent structured data.")
		(p "An S-expression can be defined recursively as one of the following:")
		
		(ol (li "An atom (described below) -or-")
		    (li "An ordered pair of S-expressions"))

		(br)
		(h2 "Atoms")
		(p "An atom can represent any valid object other than an ordered pair. "  
		   "Although valid atoms differ by context, they generally comprise numbers and symbols.")
		(br)
		(h2 "Ordered Pairs")
		(p "An ordered pair can be represented by its two members separated by a whitespace delimited '.' enclosed by a pair of parenthesis. "
		   "For example, an ordered pair of atoms x and y can be represented as:")
		(p "(x . y)")
		(br)
		(h2 "Lists")
		(p "Lists are a special kind of S-expression defined recursively as either:")
		(ol (li "An empty list -or-")
		    (li "An ordered pair where the second member is also a list"))
	
		(p "An empty list can be represented as an empty pair of parenthesis:")
		(p "()")
		(p "A non-empty list can be represented as a chain of nested pairs. "
		   "For example, a list containing the atoms x, y and z can be represented as:")
		(p "(x . (y . (z . ())))")
		(p "A list can also be represented by its members delimited by whitespace and enclosed by a single pair of parenthesis. "
		   "For example, the same list from the previous example can be represented as:")
		(p "(x y z)" )

		(br)

		(h2 "Trees")
		(p "Nested lists can be used to represent the nodes of a tree structure of arbitrary complexity. "
		   "For example, a simple binary tree can be represented as follows:")

		(table (tr (td "(root")
			   (td "(branch")
			   (td "(leaf)")
			   )
		       (tr (td )
			   (td )
			   (td "(leaf))")
			   )
		       (tr (td)
			   (td "(branch")
			   (td "(leaf)")
			   )
		       (tr (td )
			   (td )
			   (td "(leaf)))")
			   )
		       )

		(br)

		(h2 "Cycles")
		(p "In some contexts, a label may be assigned to an S-expression which can be referenced by other S-expressions. "
		   "If an S-expression containes a reference to itself, it is said to comprise a 'cycle'. "
		   "For example, a cycle containing the repeating symbols: o u r o b o r u s, can be represented as: "
		   )
		(p "#0=(o u r o b o r u s . #0#)")

		(br)

		(h2 "List Processing (LISP)")
		(p "Lists can be used to express a universal method of computation that invokes a function referenced "
		   "by the first member of a list and supplies any remaining members as arguments to the function. "
		   "For example, three factorial may be expressed as:")
		(p "(* 3 2 1)")
		(p "-or-")
		(p "(factorial 3)")
		(br)


		))