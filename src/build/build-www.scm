(import (scheme time))
(import (chicken file)
	(chicken pretty-print)
	)

(import (s-expressions s-markup html))


(define build-www
  (lambda ()
    (display "building www..." )(newline)
   
    (build-config)
    (build-pages)
   
    ))


(define build-config
  (lambda ()
    (create-directory "gen/etc" #t)

    (map (lambda (file-name)
	   (copy-file (string-append "src/config/etc/" file-name)
		      (string-append "gen/etc/" file-name)
		      #t))
	 '("httpd.conf" "acme-client.conf"))
    ))


(define build-pages
  (lambda ()
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

