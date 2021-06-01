(let ((toolbutton (lambda (name location alt)
		      (let ((id (string-append "k-" name "-button"))
			    (href (string-append "https://www.s-expressions.org" location)))

			(if (or (equal? location (string-append "/" (current-path)))
				(and (equal? location "") (equal? (current-path) "home")))
			    `(div id: ,id 
				  class: "k-toolbutton" title: ,alt
				  (img src: ,(img-src "page/navigation/nav-icon.svg") alt: ,alt))

			    `(a id: ,id
				class: "k-toolbutton" href: ,href title: ,alt
				(img src: ,(img-src "page/navigation/nav-icon.svg") alt: ,alt)))))))

  `(div id: "k-toolbar"
	,(toolbutton "home" "/home" "Home")

	,(toolbutton "contact" "/contact" "Contact")

	,(toolbutton "site-map" "/site-map" "Site Map")
	))
