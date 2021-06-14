`((section (h1 "Rationale")

	   (main (h2 "The origin of S-expressions")
		 (p "S-expressions first appeared in the paper that introduced the Lisp programming language, "
		    "Recursive Functions of Symbolic Expressions and Their Computation by Machine (McCarthy 1960). The expressions in that paper were made out of symbols and nested lists.")

		 (p "This seminal form of S-expressions has since been extended with syntax for additional data types. "
		    "Among them are numbers, strings, boolean values, sets, and maps (also known as hash tables or dictionaries). The ability to write comments has also been added.")

		 (br)
		 (h2 "Data types")

		 (p "In designing a portable S-expression syntax, the first decision is which data types to support.")

		 (p "Lisp would lose its essence without the lists and symbols from McCarthy’s paper. Any variant of S-expressions needs them.")

		 (p "Numbers and strings are essential for practical use.")

		 (p "Booleans are essential, but there is little agreement on how to represent them.")

		 (p "Beyond lists, other collection types such as vectors, sets, maps, and user-defined record types, are omitted.")

		 (p "Likewise, we omit explicit support for specialized data such as timestamps, units of measure, "
		    "and file system pathnames. Values of these types are subject to so many idiosyncratic and changing rules that it’s difficult to strike a balance between being comprehensive and being useful.")

		 (br)
		 (h2 "Lists and vectors")
		 (p "n everyday usage, the English word list means any sequence of elements. Programmers define lists with mathematical precision: zero-element, one-element, and two-element lists still count as lists.")

		 (p "The custom in Lisp is to implement a list as a singly linked list. This custom carries over to most functional programming languages. "
		    "These languages use the word vector for sequences (implemented using arrays or trees) supporting faster than O(n) random access, and reserve the word list for O(n) linked lists.")

		 (p "A linked list is a sequence of pairs where the first part of each pair contains a list element, and the second part points to the next pair. "
		    "(In the last pair of the list, the second part is nil.) In statically typed functional languages this rule is enforced by the type system. "
		    "In Lisp the rule is merely a convention, and each part of a pair can actually point to any type of object. That relaxation of the rule gives rise to the following special cases:")
		 
		 (ul (li "It’s possible to construct a list where the second part of the last pair is neither a pair nor nil. "
			 "In Lisp, we call such lists dotted lists, and the last (possibly the only) pair is a dotted pair.")

		     (li "When pairs are mutable, it’s possible to construct a never-ending circular list by making the second part of the last pair point back to an earlier pair in the list. "
			 "Usually the last pair points back to the first pair, but it’s possible for a list to start with a non-circular prefix which leads to a circular sublist.")

		     (li "Multiple lists can share sublists, and trees build out of pairs can share subtrees. Multiple pairs can point to the same pair in their second part.")
		     )

		 (p "A notation supporting these special cases needs two notational aids:")

		 (ul (li "A consing dot that can be put before the final element of the list to make a dotted pair.")

		     (li "A syntax for labels and references to describe shared structure.")
		     )

		 (p "We choose not to include either of those in POSE. Most languages outside of functional programming use vectors for their most idiomatic list-like data type, "
		    "and even functional programming langauges forbid dotted pairs. We can also envision a future Lisp dialect where vectors (instead of lists) are the basic sequence type. "
		    "In the interest of easier portability to all of these languages, it is better to avoid the special cases. "
		    "A proper list like (1 2 3) is also easy for non-lispers to read and write without special instruction.")

		 (p "One more restriction that statically typed languages have is that list elements all need to be of the same type. "
		    "Since this is a semantic concern, not a syntax concern, we permit heterogeneous lists like Lisp and other dynamically languages do. "
		    "In statically typed languages, a parser can be implemented by using a union type to cover the range of data types that can appear in S-expressions.")

		 (br)
		 (h2 "Numbers")
		 (p "Lisp dialects have traditionally supported an especially large variety of numbers, made the usage convenient, and specified numerical results quite precisely. In Lisp tradition, a full numeric tower is:")
		 (ul (li "Integer (negative and nonnegative, arbitrarily large magnitude).")
		     (li "Ratio of two integers.")
		     (li "Real number (implemented as floating point).")
		     (li "Complex number.")
		     )

		 (p "Not all programming languages have complex numbers, and fewer still have ratios, making them problematic in a portable notation. Hence we stick to integers and floating point numbers in POSE.")

		 (p "Lisp dialects tend to transparently switch numbers between machine-word size fixnums to larger bignums as required. There is no special syntax for bignums. Clojure breaks with Lisp tradition here by having a syntactic suffix for bignums. POSE sticks to tradition, and does not distinguish bignums and fixnums.")

		 (p "Clojure adds another peculiarity to Lisp’s traditionally clean number syntax: a leading zero causes a number to be interpreted in octal (base 8). This feature is borrowed from the C family, is a common source of confusion, and we argue that it is best avoided. However, it does s place a prerogative on the designer of a portable syntax to forbid leading zeros in order to avoid the ambiguity.")

		 (p "Some Lisp implementations permit putting underscores between groups of digits for readability. This is convenient but not yet common, so we omit this feature from POSE.")


		 (br)
		 (h2 "Symbols, strings, characters, and byte vectors")
		 (p "Symbols and strings are two very similar data types that Lisp has long held separate. The name of a symbol is a string, but the symbol itself is not a string. The name has to be deliberately extracted in order to be handled as a string. In Common Lisp this is done by symbol-name, in Scheme by symbol->string.")

		 (p "Lisp started out with only symbols due to its origins in abstract computer science. Strings were added later. Most languages do not have a standard mapping from source code to the data structures in the language, and do not need a standard symbol type for that reason. All Lisp programs have a standard mapping to Lisp data, and symbols are the data type that corresponds to identifiers in Lisp programs.")

		 (p "In Lisp, strings are used for most user-defined data. Lispers continually entertain the thought of merging symbols and strings into one data type but it won’t work out. Both types are needed.")

		 (p "Many Lisp dialects also have a character data type that is disjoint from the string and integer types. In Common Lisp and Scheme this is written as #\\a #\\A #\\space. Since dialects are not unanimous in having a character type, and Unicode makes the concept of a character somewhat dubious, we omit the syntax from POSE.")

		 (br)
		 (h2 "Case sensitivity in symbols")
		 (p "For a long time, there has been a debate over whether Lisp symbols should be case-sensitive or case-insensitive. Lisp is old enough that symbols used to be written in uppercase. When the Common Lisp standard came around, it dictated that lowercase or mixed-case symbols shall be normalized to uppercase equivalents when read in, with a reader option to change this behavior. Scheme has not traditionally dictated symbol case, but lowercase is the default starting with R6RS (2007). Almost all Scheme implementations are now case sensitive by default, and use lowercase.")

		 (p "There is a clear long-term trend among programming languages that case sensitivity is winning, and more and more Lisp dialects and implementations are following suit. Hence, we declare that all symbols are always case sensitive in POSE. Readers that need to interoperate with the legacy uppercase symbols may relax this requirement, but that is non-normative.")

		 (p "Strings are always case sensitive for obvious reasons; there is no debate in the community about them.")
		 (br)


		 (h2 "Symbol packages, identifiers, and keywords")
		 (p "Common Lisp puts symbols in packages; a CL symbol has two parts: the package name and the symbol name. These are separated by a colon as in package:symbol. If the colon is missing, the symbol is interned in the current package. If the colon is present but the package name is blank, the symbol is interned in the KEYWORD package. Symbols in this package are commonly known as keywords. A keyword is very much like an ordinary symbol but tends to serve as a special syntactic marker for things like named arguments in a function call.")

		 (p "Many Lisp implementations outside of Common Lisp also have keywords, but it varies whether they are a kind of symbol or a disjoint datatype.")

		 (p "Scheme syntax talks about identifiers instead of symbols. The distinction is important for hygienic macros, but is not important when dealing only with surface syntax, so we ignore identifiers here.")

		 (p "POSE symbols do not have package names, only symbol names. POSE does not have keywords. In order to avoid an ambiguity with keywords, POSE does not permit the traditional keyword marker : in symbol names.")

		 (p "Clojure uses the slash / as package name delimiter, and permits only one slash to appear in a symbol. We judge that this is too extreme a deviation from Lisp tradition, and POSE freely permits / in symbols.")

		 (br)
		 (h2 "Distinguishing numbers from symbols")
		 (p "The traditional way to parse Lisp is to start by treating a symbol and a number as the same type of token, and reserve a bunch of characters that may appear in such tokens. Each contiguous sequence of these characters is read as one token. The parser then tries to interpret the token as a number. If it succeeds, the token becomes that number. If it fails, the token becomes a symbol.")

		 (p "For portable data, that has the unfortunate side effect that the same token that parses as a symbol in one Lisp dialect can parse as a number in another.")

		 (p "For example, consider the standard functions to increment and decrement a number. In Common Lisp they are called by the symbols 1+ and 1-. Standard Scheme would try and fail to interpret those tokens as numbers. MIT Scheme uses 1+ and -1+ equivalent to 1-. Clojure cannot read any of the preceding tokens as symbols, opting to spell out the names inc and dec instead.")

		 (p "In POSE we use the following rule:")

		 (ul (li "Any token starting with a digit 0..9 must be a valid number.")
		     (li "Any token starting with either + or - followed by a digit must be a valid number.")
		     (li "Any other token is a symbol.")
		     )
		 (br)
		 (h2 "Booleans, nil, and the empty list")
		 (p "Lisp dialects have a famous ambiguity involving nil. Two parentheses () are used to write an empty list. In many dialects an empty list is equivalent to the symbol nil. nil further doubles as the boolean value false, and a non-nil object stands for boolean true. Traditionally the symbol t is reserved as the default choice for a true object.")

		 (p "The above conventions are arguably a bit of a hack, and there are dialects that disagree with all of them. This makes it tricky to standardize booleans in a portable notation.")

		 (p "The following table shows what different dialects do:")

		 (table (tr (td "Common Lisp")(td "t")(td "nil"))
			(tr (td "Emacs Lisp")(td "t")(td "nil"))
			(tr (td "Autolisp")(td "t")(td "nil"))
			(tr (td "Picolisp")(td "t")(td "nil"))

			(tr (td "Newlisp")(td "true")(td "nil"))
			(tr (td "Clojure / EDN")(td "true")(td "false"))
			(tr (td "Lisp Flavored Erlang")(td "true")(td "false"))
			(tr (td "Janet")(td "true")(td "false"))
			(tr (td "Fennel")(td "true")(td "false"))
			(tr (td "Urn")(td "true")(td "false"))
			(tr (td "Hy")(td "True")(td "False"))
			(tr (td "Scheme (R7RS alternative)")(td "#true")(td "#false"))
			(tr (td "Scheme")(td "#t")(td "#f"))

			)

		 (p "The least ambiguous choice is by Scheme: #t and #f are the two values of a disjoint boolean data type; () is the empty list; and the symbols nil and t have no special meaning. We could use these conventions in a portable notation, but that would still leave an ambiguity in how to read it into Lisp dialects that conflate nil and () as the same object.")

		 (p "We choose to dodge the issue in POSE by not saying anything about boolean values. Going by the above survey, the symbols true/false or t/f would make for a reasonable convention to represent booleans, but this is non-normative.")
		 (br)
		 (h2 "Sets and maps")
		 (p "POSE does not have sets or maps. Most substantial Lisp implementations have maps or hash-tables, but there is no standard read syntax for them. A set data type is not a de facto standard. Both sets and maps can be simulated with lists.")

		 )))