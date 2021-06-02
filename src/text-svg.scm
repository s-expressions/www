;; (include "src/xml-accessors.scm")
;; (include "src/write-xml.scm")

(define *image-cache* '())

(define write-text-svg-to-file
  (lambda (file-name text font size color . shadow-args)
    (define cache-entry (assoc file-name *image-cache*))

    (if cache-entry (cdr cache-entry)

	(let* ((svg-element (get-element-by-type 'svg font))
	       (defs-element (get-element-by-type 'defs (get-children svg-element)))
	       (font-element (get-element-by-type 'font (get-children defs-element)))
	       (font-face-element (get-element-by-type 'font-face (get-children font-element)))
	       (glyphs (get-elements-by-type 'glyph (get-children font-element)))

	       (scale (/ size (string->number (get-attribute-value font-face-element 'units-per-em:))))

	       (shadow-color (if (null? shadow-args) "" (car shadow-args)))
	       (shadow-x (if (null? shadow-args) 0 1.2))
	       (shadow-y (if (null? shadow-args) 0 1.8))

	       
	       (x 0)
	       (y 0)
	       (high-water-x 0)

	       (paths (apply append (map (lambda (c)
					   (cond ((equal? c #\newline) 
						  (if (> x high-water-x) (set! high-water-x x))
						  
						  (set! x 0)
						  (set! y (+ y (/ size scale)))

						  '())

						 (else (let ((horiz-adv-x (string->number (get-attribute-value (get-element-where glyphs 'unicode: (string c)) 'horiz-adv-x:)))
							     (path `(path transform: ,(string-append "translate (" (number->string x) ", " (number->string y) ") rotate (180) scale (-1, 1)")
									  d: ,(get-attribute-value (get-element-where glyphs 'unicode: (string c)) 'd:))))

							 (set! x (+ x horiz-adv-x))
							 (if (> x high-water-x) (set! high-water-x x))
							 (list path)))))
					 (string->list text)))
		      )

	       (high-water-y (+ y (/ size scale)))

	       (ascent (get-attribute-value font-face-element 'ascent:))

	       (shadow-offset-x (number->string (/ shadow-x scale)))
	       (shadow-offset-y (number->string (+ (/ shadow-y scale) (string->number ascent))))

	       (w (inexact->exact (ceiling (+ (* high-water-x scale) shadow-x))))
	       (h (inexact->exact (ceiling (+ (* high-water-y scale) shadow-y))))

	       (width (number->string w))
	       (height (number->string h))

	       (fill color)
	       )

	  (with-output-to-file file-name
	    (lambda ()
	      (display-xml `((?xml version: "1.0" encoding: "utf-8")
			     (!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd")
			     ,(append `(svg version: "1.1" xmlns: "http://www.w3.org/2000/svg" xmlns:xlink: "http://www.w3.org/1999/xlink" x: "0px" y: "0px"
					    width: ,(string-append width "px") 
					    height: ,(string-append height "px") 
					    viewBox: ,(string-append "0 0 " width " " height) 
					    enable-background: ,(string-append "new 0 0 " width " " height) 
					    xml:space: "preserve")

				      `(,(append `(defs
						    ,(append `(g id: "text"  )
							     paths))
						 (if (null? shadow-args) '()
						     `((filter id: "f1" x: "0" y: "0"
							       (feGaussianBlur in: "SourceGraphic" stdDeviation: "3")
							       ))))
					)
				      
				      (if (null? shadow-args) '()
					  `((use xlink:href: "#text" 
						 fill: ,shadow-color transform: ,(string-append "scale(" (number->string (exact->inexact scale)) ") translate (" shadow-offset-x ", " shadow-offset-y ")"))))
				      `((use xlink:href: "#text" 
					     fill: ,fill transform: ,(string-append "scale(" (number->string (exact->inexact scale)) ") translate (0, " ascent ")")))

				      )))))


	  (set! *image-cache* (cons (cons file-name (cons w h)) *image-cache*))

	  (cons w h)
	  
	  ))))


(define write-text-svg-with-shadow-to-file
  (lambda (file-name text font size color shadow-color)
    (write-text-svg-to-file file-name text font size color shadow-color)))




(define write-nav-label-svg-to-file
  (lambda (file-name text font size color selected)
    (define cache-entry (assoc file-name *image-cache*))

    (if cache-entry (cdr cache-entry)

	(let* ((svg-element (get-element-by-type 'svg font))
	       (defs-element (get-element-by-type 'defs (get-children svg-element)))
	       (font-element (get-element-by-type 'font (get-children defs-element)))
	       (font-face-element (get-element-by-type 'font-face (get-children font-element)))
	       (glyphs (get-elements-by-type 'glyph (get-children font-element)))

	       (scale (/ size (string->number (get-attribute-value font-face-element 'units-per-em:))))

	       
	       (x (/ 14 scale ))
	       (y 0)
	       (high-water-x 0)

	       (paths (apply append (map (lambda (c)
					   (cond ((equal? c #\newline) 
						  (if (> x high-water-x) (set! high-water-x x))
						  
						  (set! x 0)
						  (set! y (+ y (/ size scale)))

						  '())

						 (else (let ((horiz-adv-x (string->number (get-attribute-value (get-element-where glyphs 'unicode: (string c)) 'horiz-adv-x:)))
							     (path `(path transform: ,(string-append "translate (" (number->string x) ", " (number->string y) ") rotate (180) scale (-1, 1)")
									  d: ,(get-attribute-value (get-element-where glyphs 'unicode: (string c)) 'd:))))

							 (set! x (+ x horiz-adv-x))
							 (if (> x high-water-x) (set! high-water-x x))
							 (list path)))))
					 (string->list text)))
		      )

	       (high-water-y (+ y (/ size scale)))

	       (ascent (get-attribute-value font-face-element 'ascent:))


	       (w (inexact->exact (ceiling (* high-water-x scale))))
	       (h (inexact->exact (ceiling (* high-water-y scale))))

	       (width (number->string (+ w 14)))
	       (height (number->string 22))

	       (fill color)
	       )
	  
	  (with-output-to-file file-name
	    (lambda ()
	      (display-xml `((?xml version: "1.0" encoding: "utf-8")
			     (!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd")
			     ,(append `(svg version: "1.1" xmlns: "http://www.w3.org/2000/svg" xmlns:xlink: "http://www.w3.org/1999/xlink" x: "0px" y: "0px"
					    width: ,(string-append width "px") 
					    height: ,(string-append height "px") 
					    viewBox: ,(string-append "0 0 " width " " height) 
					    enable-background: ,(string-append "new 0 0 " width " " height) 
					    xml:space: "preserve")

				      `(,(append `(defs
						    ,(append `(g id: "text"  )
							     paths))
						 )
					)
				      
				      `((use xlink:href: "#text" 
					     fill: ,fill transform: ,(string-append "scale(" (number->string scale) ") translate (0, " ascent ")"))
					
					(circle fill: ,fill cx: "2" cy: "7" r: "2"))

				      (if selected
					  `((polygon fill: ,fill points: ,(string-append (number->string (+ (/ w 2) 2)) ",17 "
											 (number->string (+ (/ w 2) 12)) ",17 "
											 (number->string (+ (/ w 2) 7)) ",22")))
					  '())


				      )))))

	  (set! *image-cache* (cons (cons file-name (cons (+ w 14) 22)) *image-cache*))

	  (cons (+ w 14) 22)
	  
	  ))))