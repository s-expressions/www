(import (r7rs)
	(scheme time))

(import (chicken file))

(include "lib/s-expressions/s-markup/html/library.scm")
(import	(s-expressions s-markup html))

(define build-pages
  (lambda ()
    (display "building pages...")(newline)
    (build-page "home")
    ))

(define build-page
  (lambda (name)
    (let* ((doc-root "/htdocs/org.s-expressions")
	   (www-dir "gen/var/www")
	   (output-dir (string-append www-dir doc-root "/pages"))
	   (input-dir "src/content/pages")
	   )

      (create-directory output-dir #t)
      (with-output-to-file (string-append output-dir "/" name ".html") 
	(lambda () 
	  (display-html (eval (with-input-from-file (string-append input-dir "/" name ".scm") (lambda () (read)))))
	  (newline)
	  ))
      )
    ))

(build-pages)
