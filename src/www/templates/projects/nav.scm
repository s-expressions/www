;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

(let* ((name (project-name (current-path)))
       (project-nav-file (string-append "src/www/templates/projects/" name  "/nav.scm")))

  (if (file-exists? project-nav-file)
      (eval (with-input-from-file project-nav-file (lambda () (read))))
     

      `(nav class: "k-project"

	    (div class: "k-content"
		 
		 (div id: "k-tabs"

		      ,(project-tab "Abstract" (string-append "/projects/" name "/abstract"))

		      ,(project-tab "Rationale" (string-append "/projects/" name "/rationale"))

		      ,(project-tab "Specification" (string-append "/projects/" name "/specification"))

		      ,(project-tab "Examples" (string-append "/projects/" name "/examples"))

		      ,(project-tab "Library" (string-append "/projects/" name "/library"))

		      
		      )

	   
	   ))))