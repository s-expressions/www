(import (r7rs)
	(scheme time)
	(srfi-13)

	(chicken file)
	(chicken file posix)
	(chicken pathname )
	(chicken irregex)
	(regex)
	)

(include "lib/s-expressions/s-markup/library.scm")
(include "lib/s-expressions/s-markup/html/library.scm")
(include "lib/s-expressions/s-markup/xml/library.scm")
(import	(s-expressions s-markup)
	(s-expressions s-markup html)
	(s-expressions s-markup xml)
	)

(include "url-encode.scm")
(include "text-svg.scm")
(include "text-elements.scm")


(define site-url (lambda () "https://www.s-expressions.org"))


(define time-stamp (let ((time-stamp (number->string (inexact->exact (current-second)))))
			 (lambda () time-stamp)))
(define img-src (lambda (image-name) (string-append (site-url) "/images/" image-name "?" (time-stamp))))
(define pg-ref (lambda (page-name) (string-append (site-url) "/" page-name)))


(define get-title
  (lambda (path)
    (string-append "S-expressions - " (string-titlecase (string-substitute* path '(("-" . " ") ("/" . ": ")))))))


(define project-page? (lambda (path) #f))


(define *current-content*)
(define current-content (lambda () *current-content*))

(define *current-path*)
(define current-path (lambda () *current-path*))

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

(define page-paths (get-paths "src/www/content"))

(display "page-paths: ")(write page-paths)(newline)



(define page-template (with-input-from-file "src/www/templates/page.scm" (lambda () (read))))
(define toolbar-template (with-input-from-file "src/www/templates/toolbar.scm" (lambda () (read))))

(define build-page
  (lambda (path)

    (let ((content (with-input-from-file (string-append "src/www/content/" path ".scm") (lambda () (set! *current-path* path) 
											     (eval (read))
											     )))


	  (output-file (string-append "gen/var/www/htdocs/pages/" path ".html" ))
	  
	  )
      (set! *current-content* content)
      (set! *current-path* path)
      (create-directory (pathname-directory output-file))

      (with-output-to-file output-file (lambda () (display-html (eval page-template)) (newline)))
      ;; ( (lambda () (display-html (eval page-template)) (newline)))


      )))




(define build-pages
  (lambda ()
    (display "building pages...")(newline)
    (map build-page page-paths)
    ))

(build-pages)
