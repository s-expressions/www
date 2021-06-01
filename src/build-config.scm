(import (chicken file))

(define build-config
  (lambda ()
    (display "building configuration...")(newline)

    (create-directory "gen/etc" #t)

    (map (lambda (file-name)
	   (copy-file (string-append "src/www/config/etc/" file-name)
		      (string-append "gen/etc/" file-name)
		      #t))
	 '("httpd.conf" "acme-client.conf"))
    ))


(build-config)
