(append (cond ((project-page? (current-path)) (list (include "www/templates/projects/footer.scm")))

	      (else '()))

	(list (include "www/templates/site/footer.scm")

	      ;; (script type: "text/javascript" src: ,(string-append (site-url) "/scripts/preload-images.js?" (time-stamp)))
	      ))