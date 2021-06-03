`(section (h1 "S-expressions")

	  (main (p "Also known as 'symbolic expressions' are a convenient way to represent structured data.")
		(p "An S-expression can be defined recursively as one of the following:")
		
		(ol (li "An atom (described below) -or-")
		    (li "An ordered pair of S-expressions"))

		(br)
		(h2 "Atoms")
		(p "An atom can represent any valid object other than an ordered pair. "  
		   "Although valid atoms differ by context, they generally comprise numbers and symbols.")
		(br)
		(h2 "Ordered Pairs")
		(p "An ordered pair can be represented by its 2 members separated by a whitespace delimited '.' enclosed by a pair of parenthesis.")

		(p "An example of an ordered pair of atoms x and y can be represented as:")
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

		(br)
		(h2 "List Processing (LISP)")
		(p "")
		(br)

		(h2 "Domain Specific Languages (DSLs)")
		(p "")
		(br)


		(h2 "Alternative Syntax")
		(p "")
		(br)


		(h2 "Data Format")
		(p "")
		(br)



		))