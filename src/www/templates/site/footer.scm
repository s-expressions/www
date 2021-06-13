`(footer class: "k-site"
	 (div class: "k-content"
	      (div id: "notice" (span class: "k-copyright"
				      "© " 
				      (!-- "$CURRENT_YEAR") 
				      ;; (!--# config timefmt: "%Y")(!--# echo var: "date_local") 
				      " The S-expressions organization")
		   #\space
		   (span class: "k-rights"
			 "All Rights Reserved")
		   (br)
		   (a href: ,(pg-ref "privacy-policy") "Privacy Policy")
		   (span class: "k-bar" #\space "|" #\space)
		   (a href: ,(pg-ref "terms-and-conditions") "Terms and Conditions"))
	      )
	 )