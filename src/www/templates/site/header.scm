;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

`(header class: "k-site"
	 ,(append '(div class: "k-content")

		  (if (equal? (current-path) "home")
		      `((div id: "k-logo"
			     (img width: "258" height: "38" src: ,(img-src "page/header/s-expressions-logo.svg") alt: "(S-EXPRESSIONS . ORG)")))

		      `((a id: "k-logo"
			   href: ,(string-append (site-url) "/home")
			   (img width: "258" height: "38" src: ,(img-src "page/header/s-expressions-logo.svg") alt: "(S-EXPRESSIONS . ORG)")))
		      )

		  ))