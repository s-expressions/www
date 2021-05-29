(import (r7rs)
	(scheme time))

(import (chicken file)
	(chicken file posix)
	(chicken pathname )
	)

(include "lib/s-expressions/s-markup/html/library.scm")
(import	(s-expressions s-markup html))


(define *time-stamp* (number->string (inexact->exact (current-second))))



(define get-paths 
  (lambda (dir)
    (apply append (map (lambda (file)
			 (let ((file-path (string-append dir "/" file)))
			   (cond ((directory? file-path) (map (lambda (path)
								(string-append file "/" path))
							      (get-paths file-path)))
				 ((equal? (pathname-extension file) "scm") (list (pathname-file file)))
				 (else '()))))
		       (directory dir)))))

(define page-paths (get-paths "src/content/pages"))

(display "page-paths: ")(write page-paths)(newline)



(define build-pages
  (lambda ()
    (display "building pages...")(newline)
    (map build-page page-paths)
    ;; (build-page "home")
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
