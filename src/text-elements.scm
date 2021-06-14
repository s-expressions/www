(define helios-svg (include "www/resources/fonts/helios-cond-bold.scm"))


(define input-img
  (lambda (label)
    (let* ((url-name (url-encode (string-downcase label)))
	   (file-name (string-append "gen/var/www/htdocs/resources/images/input-image_" url-name ".svg"))
	   (src (img-src (string-append "input-image_" (url-encode url-name) ".svg")))
	   (dim (write-text-svg-to-file file-name label helios-svg 14 "#fff"))
	   (width (number->string (car dim)))
	   (height (number->string (cdr dim))))

      `(input type: "image" name: ,label alt: ,label width: ,width height: ,height src: ,src))))



(define slide-title
  (lambda (item)
    (let* ((url-name (url-encode (string-downcase item)))
	   (label item); (string-titlecase item))
	   (file-name (string-append "gen/var/www/htdocs/resources/images/slide-title_" url-name ".svg"))
	   (src (img-src (string-append "slide-title_" (url-encode url-name) ".svg")))

	   (dimensions (write-text-svg-with-shadow-to-file file-name label helios-svg 24 "#fff" "#4f5050"))
	   (width (number->string (car dimensions)))
	   (height (number->string (cdr dimensions)))
	   )

      `(img class: "k-slide-title" alt: ,label width: ,width height: ,height src: ,src))))




(define slide-caption
  (lambda (item)
    (let* ((url-name (url-encode (string-downcase item)))
	   (label item); (string-titlecase item))
	   (file-name (string-append "gen/var/www/htdocs/resources/images/slide-caption_" url-name ".svg"))
	   (src (img-src (string-append "slide-caption_" (url-encode url-name) ".svg")))

	   (dimensions (write-text-svg-with-shadow-to-file file-name label helios-svg 16 "#6b6c6f" "#dedee8"))
	   (width (number->string (car dimensions)))
	   (height (number->string (cdr dimensions)))
	   )

      `(img class: "k-slide-caption" alt: ,label width: ,width height: ,height src: ,src))))




;; (define project-tab
;;   (lambda (item . rest )
;;     (let* ((url-name (url-encode (string-downcase item)))
;; 	   (location (if (> (length rest) 0) (list-ref rest 0) (string-append "/" item)))
;; 	   (aliases (if (> (length rest) 1) (list-ref rest 1) #f))

;; 	   (label (string-titlecase item))
;; 	   (href (string-append "https://www.s-expressions.org" location))
	   
;; 	   (file-name (string-append "gen/var/www/htdocs/resources/images/nav-tab_" url-name ".svg"))
;; 	   (select-file-name (string-append "gen/var/www/htdocs/resources/images/nav-tab_" url-name "_select.svg"))

;; 	   (dimensions (begin (write-text-svg-to-file file-name label helios-svg 14 "#fff")
;; 			      (write-text-svg-to-file select-file-name label helios-svg 14 "#8A794E")));;"#595959")))
	   
;; 	   (width (number->string (car dimensions)))
;; 	   (height (number->string (cdr dimensions)))
;; 	   (src (img-src (string-append "nav-tab_" (url-encode url-name) ".svg")))
;; 	   (select-src (img-src (string-append "nav-tab_" (url-encode url-name) "_select.svg")))
;; 	   (id (string-append "nav-tab_" item))				 
;; 	   )


;;       (cond ((string-prefix? location (string-append "/" (current-path)))
;; 	     `(div class: "k-project-tab"
;; 		(img  alt: ,label width: ,width height: ,height src: ,select-src))
;; 	     )

;; 	    ((and aliases
;; 		  (call/cc (lambda (return)
;; 			     (map (lambda (alias)
;; 				    (if (string-prefix? alias (current-path)) (return #t))
;; 				    )
;; 				  aliases)
;; 			     #f))
		  
;; 		  )
;; 	     `(div class: "k-project-tab"
;; 		(a href: ,href (img  alt: ,label width: ,width height: ,height src: ,select-src)))
;; 	     )

;; 	    (else `(a id: ,id class: "k-project-tab" href: ,href
		      
;; 		      (img ;; class: "k-project-tab"
;; 		       alt: ,label width: ,width height: ,height src: ,src)
;; 		      ))

;; 	    ))))

(define project-tab
  (lambda (item . rest )
    (let* ((url-name (url-encode (string-downcase item)))
	   (location (if (> (length rest) 0) (list-ref rest 0) (string-append "/" item)))
	   (aliases (if (> (length rest) 1) (list-ref rest 1) #f))

	   (label (string-titlecase item))
	   (href (string-append "https://www.s-expressions.org" location))
	   
	   (file-name (string-append "gen/var/www/htdocs/resources/images/nav-tab_" url-name ".svg"))
	   (select-file-name (string-append "gen/var/www/htdocs/resources/images/nav-tab_" url-name "_select.svg"))

	   (dimensions (begin (write-text-svg-to-file file-name label helios-svg 14 "#fff")
			      (write-text-svg-to-file select-file-name label helios-svg 14 "#8A794E")));;"#595959")))
	   
	   (width (number->string (car dimensions)))
	   (height (number->string (cdr dimensions)))
	   (src (img-src (string-append "nav-tab_" (url-encode url-name) ".svg")))
	   (select-src (img-src (string-append "nav-tab_" (url-encode url-name) "_select.svg")))
	   (id (string-append "nav-tab_" item))				 
	   )


      (cond ((string-prefix? location (string-append "/" (current-path)))
	     `(div class: "k-project-tab"
		(div ,label))
	     )

	    ((and aliases
		  (call/cc (lambda (return)
			     (map (lambda (alias)
				    (if (string-prefix? alias (current-path)) (return #t))
				    )
				  aliases)
			     #f))
		  
		  )
	     `(div class: "k-project-tab"
		(a href: ,href (div ,label)))
	     )

	    (else `(a id: ,id class: "k-project-tab" href: ,href
		      
		      (div ,label)
		      ))

	    ))))


