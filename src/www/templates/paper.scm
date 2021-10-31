;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

(append `(div id: "k-paper"
	      ,(include "www/templates/site/header.scm")
	      ,(include "www/templates/site/nav.scm")
	      
	      )
	(if (project-page? (current-path))
	    (append (list (include "www/templates/projects/header.scm"))
		    (list (include "www/templates/projects/nav.scm"))
		    )
	    
	    '())

	(current-content)
	
	)