;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

(let ((menu-button (lambda (item . rest )

		     (let* ((url-name (url-encode (string-downcase item)))
			    (location (string-append "/" item))
			    (is-category (if (> (length rest) 0) (list-ref rest 0) #f))

			    (label (string-titlecase (irregex-replace/all "-" item " ")))
			    (href (string-append "https://www.s-expressions.org" location))
			    
			    (is-location (equal? location (string-append "/" (current-path))))
			    )

		       (cond (is-location `(div class: "k-simple-menu-label"  ,label))
			     (is-category `(a class: "k-simple-menu-label" href: ,href
					      (div class: "k-category" ,label)))
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

