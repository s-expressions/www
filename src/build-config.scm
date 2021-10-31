;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

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
