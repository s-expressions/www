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



(define section-title
  (lambda (item)
    (let* ((url-name (url-encode (string-downcase item)))
	   (label item); (string-titlecase item))
	   (file-name (string-append "gen/var/www/htdocs/resources/images/section-title_" url-name ".svg"))
	   (src (img-src (string-append "section-title_" (url-encode url-name) ".svg")))

	   (dimensions (write-text-svg-with-shadow-to-file file-name label helios-svg 30 "#6b6c6f" "#dedee8"))
	   (width (number->string (car dimensions)))
	   (height (number->string (cdr dimensions)))
	   )

      `(h1 (img class: "k-section-title" alt: ,label width: ,width height: ,height src: ,src)))))


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


(define project-title
  (lambda (item)
    (let* ((url-name (url-encode (string-downcase item)))
	   (label item); (string-titlecase item))
	   (file-name (string-append "gen/var/www/htdocs/resources/images/project-title_" url-name ".svg"))
	   (src (img-src (string-append "project-title_" (url-encode url-name) ".svg")))

	   (dimensions (write-text-svg-with-shadow-to-file file-name label helios-svg 57 "#fff" "#4f5050"))
	   (width (number->string (car dimensions)))
	   (height (number->string (cdr dimensions)))
	   )

      `(img class: "k-project-title" alt: ,label width: ,width height: ,height src: ,src))))


(define project-caption
  (lambda (item)
    (let* ((url-name (url-encode (string-downcase item)))
	   (label item); (string-titlecase item))
	   (file-name (string-append "gen/var/www/htdocs/resources/images/project-caption_" url-name ".svg"))
	   (src (img-src (string-append "project-caption_" (url-encode url-name) ".svg")))

	   (dimensions (write-text-svg-with-shadow-to-file file-name label helios-svg 25 "#fff" "#4f5050"))
	   (width (number->string (car dimensions)))
	   (height (number->string (cdr dimensions)))
	   )

      `(img class: "k-project-caption" alt: ,label width: ,width height: ,height src: ,src))))




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
			      (write-text-svg-to-file select-file-name label helios-svg 14 "#595959")))
	   
	   (width (number->string (car dimensions)))
	   (height (number->string (cdr dimensions)))
	   (src (img-src (string-append "nav-tab_" (url-encode url-name) ".svg")))
	   (select-src (img-src (string-append "nav-tab_" (url-encode url-name) "_select.svg")))
	   (id (string-append "nav-tab_" item))				 
	   )


      (cond ((string-prefix? location (string-append "/" (current-path)))
	     `(div class: "k-project-tab"
		(img  alt: ,label width: ,width height: ,height src: ,select-src))
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
		(a href: ,href (img  alt: ,label width: ,width height: ,height src: ,select-src)))
	     )

	    (else `(a id: ,id class: "k-project-tab" href: ,href
		      
		      (img ;; class: "k-project-tab"
		       alt: ,label width: ,width height: ,height src: ,src)
		      ))

	    ))))




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




;; (define menu-button
;;   (lambda (item . rest )

;;     (let* ((url-name (url-encode (string-downcase item)))
;; 	   (location (string-append "/" item))
;; 	   (is-catagory (if (> (length rest) 0) (list-ref rest 0) #f))


;; 	   (label (string-titlecase (irregex-replace/all "-" item " ")))
;; 	   (href (string-append "https://www.s-expressions.org" location))
	   
;; 	   (file-name (string-append "gen/var/www/htdocs/resources/images/nav-label_" url-name ".svg"))
;; 	   (highlight-file-name (string-append "gen/var/www/htdocs/resources/images/nav-label_" url-name "_highlight.svg"))
;; 	   (select-file-name (string-append "gen/var/www/htdocs/resources/images/nav-label_" url-name "_select.svg"))

;; 	   (dimensions (begin (write-text-svg-to-file file-name label helios-svg 14 "#EBEBEB" )
;; 			      (write-text-svg-to-file highlight-file-name label helios-svg 14 "#fff")))
	   
;; 	   (width (number->string (car dimensions)))
;; 	   (height (number->string (cdr dimensions)))

;; 	   (src (img-src (string-append "nav-label_" (url-encode url-name) ".svg")))
;; 	   (src-highlight (img-src (string-append "nav-label_" (url-encode url-name) "_highlight.svg")))
;; 	   (src-select (img-src (string-append "nav-label_" (url-encode url-name) "_select.svg")))

;; 	   (id (string-append "nav-label_" (string-downcase item)))


;; 	   (is-location (string-prefix? location (string-append "/" (current-path))))
;; 	   )

;;       (cond (is-location `(img class: "k-simple-menu-label" alt: ,label width: ,width height: ,height src: ,src-highlight))
;; 	    (is-catagory `(a id: ,id class: "k-simple-menu-label" href: ,href
;; 			     (img alt: ,label width: ,width height: ,height src: ,src-highlight)))
;; 	    (else `(a id: ,id class: "k-simple-menu-label" href: ,href
;; 		      (img alt: ,label width: ,width height: ,height src: ,src)))))))

(define menu-button
  (lambda (item . rest )

    (let* ((url-name (url-encode (string-downcase item)))
	   (location (string-append "/" item))
	   (is-catagory (if (> (length rest) 0) (list-ref rest 0) #f))


	   (label (string-titlecase (irregex-replace/all "-" item " ")))
	   (href (string-append "https://www.s-expressions.org" location))
	   
	   (file-name (string-append "gen/var/www/htdocs/resources/images/nav-label_" url-name ".svg"))
	   (highlight-file-name (string-append "gen/var/www/htdocs/resources/images/nav-label_" url-name "_highlight.svg"))
	   (select-file-name (string-append "gen/var/www/htdocs/resources/images/nav-label_" url-name "_select.svg"))

	   (dimensions (begin (write-text-svg-to-file file-name label helios-svg 14 "#EBEBEB" )
			      (write-text-svg-to-file highlight-file-name label helios-svg 14 "#fff")))
	   
	   (width (number->string (car dimensions)))
	   (height (number->string (cdr dimensions)))

	   (src (img-src (string-append "nav-label_" (url-encode url-name) ".svg")))
	   (src-highlight (img-src (string-append "nav-label_" (url-encode url-name) "_highlight.svg")))
	   (src-select (img-src (string-append "nav-label_" (url-encode url-name) "_select.svg")))

	   (id (string-append "nav-label_" (string-downcase item)))


	   (is-location (string-prefix? location (string-append "/" (current-path))))
	   )

      (cond (is-location `(div class: "k-simple-menu-label"  ,label))
	    (is-catagory `(a id: ,id class: "k-simple-menu-label" href: ,href
			     (div ,label)))
	    (else `(a id: ,id class: "k-simple-menu-label" href: ,href
		      (div ,label)))))))

