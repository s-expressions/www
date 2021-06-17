`((section (h1 "Projects")

	   (main (p "The following are a list of projects started and/or maintained by members of the S-expressions organization:")
		 (br))
	   (div class: "k-slide-gallery"


		(a style: "position:relative" class: "k-slide" href: ,(pg-ref "projects/dsl/overview")
		   (div class: "k-slide-header" 
			(div class: "k-slide-title" "DSL")
			)
		   (div class: "k-slide-body"
			(p "(Domain Specific Languages) ")
			(p "Specialized computer languages for use in particular application domains.")
			(span "learn more")
			)
		   ;; (div class: "k-slide-spacer")
		   )


		(a style: "position:relative" class: "k-slide" href: ,(pg-ref "projects/pose/abstract")
		   (div class: "k-slide-header" 
			(div class: "k-slide-title" "POSE")
			)
		   (div class: "k-slide-body"
			(p "(Portable S-expressions) ")
			(p "Specification and libraries.")
			(span "learn more")
			)
		   ;; (div class: "k-slide-spacer")
		   )

		(a style: "position:relative" class: "k-slide" href: ,(pg-ref "projects/s-mark/overview")
		   (div class: "k-slide-header" 
			(div class: "k-slide-title" "S-mark")
			)
		   (div class: "k-slide-body"
			;; (p "(S-expression Markup Language)")
			(p "Ultralight markup language with predictable S-expression mapping.")
			(span "learn more")
			)
		   ;; (div class: "k-slide-spacer")
		   )

		(a style: "position:relative" class: "k-slide" href: ,(pg-ref "projects/twinjo/overview")
		   (div class: "k-slide-header" 
			(div class: "k-slide-title" "Twinjo")
			)
		   (div class: "k-slide-body"
			(p "A general and extensible method of serializing Scheme data in a way that other languages can straightforwardly handle.")
			(span "learn more")
			)
		   ;; (div class: "k-slide-spacer")
		   )




		)

	   ))

