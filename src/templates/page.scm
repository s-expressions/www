`((!DOCTYPE html)
  (html ,(append `(head (meta http-equiv: "Content-Type" content: "text/html; charset=UTF-8")
			(meta name: "viewport" content: "width=762, user-scalable=yes")
			(meta name: "format-detection" content: "telephone=no")
			(title ,(get-title (current-path)))
			(link rel: "icon" href: ,(string-append (site-url) "/favicon.ico?" (time-stamp)))

			(link rel: "apple-touch-icon" href: "https://www.s-expressions.org/icons/favicon_60x60.png")
			(link rel: "apple-touch-icon" sizes: "57x57" href: "https://www.s-expressions.org/icons/favicon_57x57.png")
			(link rel: "apple-touch-icon" sizes: "60x60" href: "https://www.s-expressions.org/icons/favicon_60x60.png")
			(link rel: "apple-touch-icon" sizes: "72x72" href: "https://www.s-expressions.org/icons/favicon_72x72.png")
			(link rel: "apple-touch-icon" sizes: "76x76" href: "https://www.s-expressions.org/icons/favicon_76x76.png")
			(link rel: "apple-touch-icon" sizes: "114x114" href: "https://www.s-expressions.org/icons/favicon_114x114.png")
			(link rel: "apple-touch-icon" sizes: "120x120" href: "https://www.s-expressions.org/icons/favicon_120x120.png")
			(link rel: "apple-touch-icon" sizes: "144x144" href: "https://www.s-expressions.org/icons/favicon_144x144.png")
			(link rel: "apple-touch-icon" sizes: "152x152" href: "https://www.s-expressions.org/icons/favicon_152x152.png")
			(link rel: "apple-touch-icon" sizes: "180x180" href: "https://www.s-expressions.org/icons/favicon_180x180.png")

			(link rel: "stylesheet" type: "text/css" href: ,(string-append (site-url) "/styles/main.css?" (time-stamp)))
			(script type: "text/javascript" src: ,(string-append (site-url) "/scripts/set-page-height.js?" (time-stamp)))
			(script type: "text/javascript" src: ,(string-append (site-url) "/scripts/preload-images.js?" (time-stamp)))
			(!-- "$NAVIGATION:HEAD")
			)

		 )

	,(append
	  `(body onload: "setPageHeight (); preloadImages ();")
	  `(,(append `(div ;;id: "k-page"
			   (header class: "k-site"
				   ,(append '(div class: "k-content")

					    (if (equal? (current-path) "home")
						`((div ;;id: "k-logo"
						     (img width: "258" height: "38" src: ,(img-src "s-expressions-logo.svg") alt: "(S-EXPRESSIONS . ORG)")))

						`((a ;;id: "k-logo"
						     href: ,(string-append (site-url) "/home")
						     (img width: "258" height: "38" src: ,(img-src "s-expressions-logo.svg") alt: "(S-EXPRESSIONS . ORG)")))
						)

					    ))
			   ;; (nav class: "k-site"
			   ;; 	,(append '(div class: "k-content" 
			   ;; 		       (div id: "margin-spacer" class: "k-separator"))


			   ;; 		     `(,(include "../templates/toolbar.scm")

			   ;; 		       (div class: "k-separator")

			   ;; 		       ,(include "../templates/menu.scm")
	
			   ;; 		       (div class: "k-separator")

			   ;; 		       (!-- "$NAVIGATION:CART")
					       
					     
			   ;; 		     )))
			   )
		     (append (let ((project (project-page? (current-path))))
			       (if project
				   (with-input-from-file (string-append "src/templates/" project ".scm") (lambda () (eval (read))))
				   '()))

			     `(,(current-content))
			     )
		     ))
	  (cond ((project-page? (current-path))
		 `((footer class: "k-project" (div class: "k-content"))))
		(else '()))
	  `((footer class: "k-site"
		    (div class: "k-content"
			 ;; (div id: "notice" (span class: "k-copyright"
			 ;; 			 "© " 
			 ;; 			 (!-- "$CURRENT_YEAR") 
			 ;; 			 ;; (!--# config timefmt: "%Y")(!--# echo var: "date_local") 
			 ;; 			 " S-Expressions Organization")
			 ;;      #\space
			 ;;      (span class: "k-rights"
			 ;; 	    "All Rights Reserved")
			 ;;      (br)
			 ;;      (a href: ,(pg-ref "privacy-policy") "Privacy Policy")
			 ;;      (span class: "k-bar" #\space "|" #\space)
			 ;;      (a href: ,(pg-ref "terms-and-conditions") "Terms and Conditions"))
			 )
		    )

	    ;; (script type: "text/javascript" src: ,(string-append (site-url) "/scripts/preload-images.js?" (time-stamp))
	    ;; 	    )
	    )
	  )


	)
  )

