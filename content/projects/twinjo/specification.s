;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

((section 
  (h1 "Specification")

  (main


   (h2 "Abstract")
   (p "This SRFI specifies Twinjo, a general and extensible method of serializing Scheme data in a way that other languages can straightforwardly handle. Twinjo provides two formats: Twinjo Text, a variant of Lisp S-expressions, and Twinjo Binary, a subset of ASN.1 Basic Encoding Rules. It makes no use of ASN.1 schemas.")

   (p "It also arranges for there to be just one encoding for each datum represented, although the Twinjo Text rules don't quite correspond to any Lisp syntax, and the Twinjo Binary rules don't conform to either of the usual subsets, ASN.1 Canonical Encoding Rules (CER) or ASN.1 Distinguished Encoding Rules (DER). Twinjo provides effectively unlimited extensibility and attempts to maintain a balance between ease and efficiency for both reading and writing.")

   (br)

   (h2 "Basic Text syntax")
   (ul (li "Integers: optional sign followed by sequence of digits")

       (li "Floats: optional sign followed by sequence of digits with optional decimal point followed by optional exponent (E followed by sign followed by digits). Either the decimal point or the exponent can be omitted but not both.")

       (li "Symbols: lower-case ASCII letter optionally followed by sequence of lower-case ASCII letters and ASCII digits. Alternatively, any characters surrounded by vertical bars. The only escapes are \\\\ and \\|")

       (li "Strings: Enclosed in double quotes. The only escapes are \\\" and \\\\.")

       (li "Bytevectors: Enclosed in curly braces. Hex digits, with an optional hyphen between consecutive digits. This is related to UUID syntax. Rationale: so that bytevectors can be prefixed with a tag without needing to support nested tags.")

       (li "Lists: Enclosed in parentheses.")

       (li "Tags: Used to extend syntax. Consists of # followed by:"
	   (ul 
	    (li "nothing (datum follows)")
	    (li "X followed by type number in upper-case hex (datum follows)")
	    (li "a single lower-case ASCII letter (no datum follows)")
	    (li "ASCII lower-case letter followed by zero or more lower-case ASCII letters or digits (datum follows)")

	    ))


       )
   (br)

   (h2 "Whitespace and comments")
   (p "Whitespace outside strings is ignored completely, except for separating adjacent tokens when ambiguity would result. For example, #f 32 (1.0 2.0) is not the same as #f32 (1.0 2.0). Whitespace by itself is not a valid S-expression.")

   (p "; (except in strings and symbols) introduces a comment that goes up to but not including the end of line and is discarded. A comment by itself is not a valid S-expression.")

   (br)

   (h2 "Binary syntax")
   (p "Depending on its type, an object is represented as either a sequence of bytes or a sequence of subobjects.")

   (p "All byte objects have the same general format:")

   (ul (li "1 or 2 type bytes")
       (li "1-9 length bytes")
       (li "the number of content bytes specified in the length.")
       )
   (p "All objects with subobjects also have the same general format:")
   (ul (li "1 or 2 type bytes")
       (li "an 80 pseudo-length byte")
       (li "the encoded subobjects")
       (li "an end of content (EOC) marker (two consecutive 00 bytes)")
       )
   (p "Length bytes format:")
   (ul (li "If length is indeterminate, pseudo-length byte is 80.")
       (li "If length is less than 2^7 bytes, then length byte is 00 through 7F.")
       (li "If length is less than 2^16 bytes, then meta-length byte is 82, followed by 2 length bytes representing a big-endian unsigned integer.")
       (li "If length is less than 2^24 bytes, then meta-length byte is 83, followed by 3 length bytes representing the length as a big-endian unsigned integer.")
       (li "...")
       (li "If length is less than 2^64 bytes, then meta-length byte is 88, followed by 8 length bytes representing the length as a unsigned 2's-complement integer.")
       (li "Larger objects are not representable.")
       )

   (br)
   (h2 "Examples")
   (p "Here are a few examples of how different kinds of objects are represented. For all known types, see this Google spreadsheet: "
      (a href: "https://tinyurl.com/asn1-ler" "Twinjo data type serializations at https://tinyurl.com/asn1-ler") ".")



   (p "Note: If binary interoperability with other ASN.1 systems is important, encode only the types marked \"X.690\" in the Origin column of the spreadsheet.")

   (p "Lists: Type byte E0,: pseudo-length byte 80, the encoded elements of the list, an EOC marker 00 00.")

   (p "Text: subobjects in parentheses")

   (p "Vectors: Type byte 30, length bytes, the encoded elements of the vector, an EOC marker 00 00.")

   (p "Text: the empty tag # followed by a list.")

   (p "Booleans: Type byte 01, length byte 01, either 00 for false or FF for true.")

   (p "Text: #t or #f.")

   (p "Integers: Type byte 02, 1-9 length bytes, content bytes representing a big-endian 2's-complement integer.")

   (p "Text: optional sign followed by sequence of decimal digits.")

   (p "IEEE double floats: Type byte DB, length byte 08, 8 content bytes representing a big-endian IEEE binary64 float.")

   (p "Text: optional sign followed by sequence of decimal digits, with either a decimal point or an exponent.")


   (p "Strings: Type byte OC, 1-9 length bytes representing the length of the string in bytes when encoded as UTF-8, corresponding content bytes. Text: characters enclosed in double quotes, with \\\\' and\\\"` as escapes.")

   (p "Symbols: Type byte DD, 1-9 length bytes representing the length of the string in bytes when encoded as UTF-8, corresponding content bytes. Text: lower-case ASCII letters, or characters enclosed in vertical bars, with '\\and\\|` as escapes.")

   (p "Nulls: Type byte 05, length byte 00.")

   (p "Text: #n.")

   (p "Note: This is not the same as #f or (); there is no natural representation in Scheme.")

   (p "Mappings / hash tables: Type byte E4, pseudo-length byte 80, the encoded elements of the list alternating between keys and values, an EOC marker 00 00.")

   (p "Timestamps: Type byte 18, 1 length byte, ASCII encoding of a ISO 8601 timestamp without hyphens, colons, or spaces.")

   (p "Text: #date followed by a string.")

   (br)
   (h2 "Skipping unknown binary types")
   (ul (li "If first type byte is 1F, 3F, 5F, 7F, 9F, BF, DF, or FF, skip one additional type byte.")
       (li "Read and interpret length bytes.")
       (li "If length byte is not 80, skip number of bytes equal to the length.")
       (li "If length byte is 80, recursively skip subobjects until the EOC marker has been read.")
       )

   )))