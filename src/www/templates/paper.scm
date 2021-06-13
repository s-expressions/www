(append `(div id: "k-paper"
	      ,(include "www/templates/site/header.scm")
	      ,(include "www/templates/site/nav.scm")
	      
	      )
	(append (let ((project (project-page? (current-path))))
		  (if project (list (include "www/templates/projects/header.scm")
				    (include "www/templates/projects/nav.scm")
				    )
		      '()

		      ))

		(current-content)
		)
	)