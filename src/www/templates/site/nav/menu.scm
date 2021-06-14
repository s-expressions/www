(let ((menu-button (lambda (item . rest )

		     (let* ((url-name (url-encode (string-downcase item)))
			    (location (string-append "/" item))
			    (is-catagory (if (> (length rest) 0) (list-ref rest 0) #f))

			    (label (string-titlecase (irregex-replace/all "-" item " ")))
			    (href (string-append "https://www.s-expressions.org" location))
			    
			    (is-location (string-prefix? location (string-append "/" (current-path))))
			    )

		       (cond (is-location `(div class: "k-simple-menu-label"  ,label))
			     (is-catagory `(a class: "k-simple-menu-label" href: ,href
					      (div ,label)))
			     (else `(a class: "k-simple-menu-label" href: ,href
				       (div ,label)))))))
      )
  `(div id: "k-simple-menu" 
	class: "k-simple"
	,(menu-button "organization")
	,(menu-button "standards")
	,(menu-button "projects" (project-page? (current-path)))
	,(menu-button "contact")
	))

