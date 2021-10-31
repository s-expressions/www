;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

(let ((project-header-file (string-append "src/www/templates/projects/" (project-name (current-path)) "/header.scm")))

  (if (file-exists? project-header-file)

      (eval (with-input-from-file project-header-file (lambda () (read))))


      (let* ((title (string-upcase (project-name (current-path)))))
	`(header class: "k-project"
		 (div class: "k-content"

		      (div class: "k-project-title"  ,title)

		      (div class: "k-project-description" 
			   "description line 1"
			   (br)
			   "line 2 of description")

		      )))))
