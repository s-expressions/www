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




