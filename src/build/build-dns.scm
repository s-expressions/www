(define build-dns
  (lambda ()
    (display "building dns..." )(newline)


    ;; (create-directory "gen/var/nsd/etc" #t)
    ;; (map (lambda (file-name)
    ;; 	   (copy-file (string-append "config/var/nsd/etc/" file-name)
    ;; 		      (string-append "gen/var/nsd/etc/" file-name)
    ;; 		      #t))

    ;; 	 '("nsd.conf"))


    ;; (create-directory "gen/var/nsd/zones/master" #t)
    ;; (map (lambda (file-name)
    ;; 	   (copy-file (string-append "config/var/nsd/zones/master/" file-name)
    ;; 		      (string-append "gen/var/nsd/zones/master/" file-name)
    ;; 		      #t))

    ;; 	 '("org.s-expressions.zone"))

    ))