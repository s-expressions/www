;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

(append `(body onload: "setPageHeight (); preloadImages ();"
	       ,(include "www/templates/paper.scm"))
	
	(include "www/templates/footers.scm")
	)
