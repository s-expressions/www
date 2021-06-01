(import (r7rs)
	(scheme time)
	(chicken file)
	)

(include "lib/s-expressions/s-config/css/library.scm")
(import	(s-expressions s-config css))

(define site-url (lambda () "https://www.s-expressions.org"))


(define time-stamp (let ((time-stamp (number->string (inexact->exact (current-second)))))
			 (lambda () time-stamp)))
(define img-src (lambda (image-name) (string-append (site-url) "/images/" image-name "?" (time-stamp))))

(define bg-url (lambda (image-name) (string-append "url(" (img-src image-name) ")")))

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
     (map build-style '("page" "header" "navigation" "footer"))
     ))


 (build-styles)