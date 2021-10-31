;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

((section 
  (h1 "Overview")

  (main 


   (p "S-mark - S-expression markup language")

   (h2 "What is a markup language?")
   (p "Data representations such as S-expressions and JSON easily encode heterogeneous data. Text is just one of many data types that fits equally well there. This is great for data with an elaborate structure and a little text thrown in here and there.")

   (p "Problems arise when dealing with data where the relationship is inverted: mostly text with a little structure thrown in here and there. Markup languages such as HTML, XML, Markdown and AsciiDoc shine here.")

   (h2 "What makes a good markup language?")
   (p "To be a useful improvement over simple representations like S-expressions and JSON, a markup language must have:")

   (ul (li "Compact syntax. A verbose syntax with lots of repetition makes it so odious to write the markup that the end result is not much easier to use than structure-first encodings as S-expressions or JSON. Markdown and AsciiDoc shine at compact syntax. HTML and XML don’t.")

       (li "Generic representation. To take full advantage of semantic markup, the language must be able to represent arbitrary tags. XML shines here; HTML is okay; AsciiDoc and Markdown overspecialize their syntax to fit typical text documents at the expense of other things.")

       (li "Easily understood rules. XML shines here; HTML is not too bad; AsciiDoc is perhaps too idiosyncratic; and Markdown seems evolved by trial and error. If the mapping from markup to common data structures is simple and unambiguous, processing the documents is way easier and people will take advantage of it for custom applications.")
       )

   (h2 "Why a new markup language?")
   (p "S-mark was born to be the simplest possible markup language where every document has a predictable mapping to an S-expression. This mapping makes S-mark documents easy to process with Lisp code.")

   (p "S-mark is essentially a simplified version of Scribble, which itself is a simplified version of Scheme Scribe. Unlike Scheme Scribe and Scribble, S-mark does not evaluate Scheme code interspersed with the markup. S-mark only reads an S-expression; it never evaluates. Evaluation is left to user programs.")

   (p "S-mark also does not specify any standard tags (heading, list, table, etc.). Users are free to assign any meaning to any tag. There are no special cases in the syntax, making it as simple, predictable and hence easy to learn as possible.")

   (h2 "Common tags")
   (p "A common set of tags (similar in scope to HTML) is being evolved to help applications standardize the usage of similar tags among themselves. Particular S-mark applications can opt to use or not use these tags.")
   )))