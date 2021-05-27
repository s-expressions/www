(import (r7rs))
(import (chicken file))

(include "lib/s-expressions/s-config/css/library.scm")
(import	(s-expressions s-config css))


 (define build-style
   (lambda (name)
     (let* ((doc-root "/htdocs")
	    (www-dir "gen/var/www")
	    (output-dir (string-append www-dir doc-root "/resources/styles"))
	    (input-dir "src/content/resources/styles")
	    )

       (create-directory output-dir #t)
       (with-output-to-file (string-append output-dir "/" name ".css") 
	 (lambda () 
	   (display-css (eval (with-input-from-file (string-append input-dir "/" name ".scm") (lambda () (read)))))
	   (newline)
	   ))
       )
     ))


 (define build-styles
   (lambda ()
     (display "building styles..." )(newline)
     (build-style "style")
     ))


 (build-styles)