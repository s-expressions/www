(append `(body onload: "setPageHeight (); preloadImages ();"
	       ,(include "www/templates/paper.scm"))
	
	(include "www/templates/footers.scm")
	)
