;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

(define-library (s-expressions s-markup html)
  (import (scheme base)
	  (scheme write)

	  (chicken port)
	  (regex)

	  )

  (export display-html write-html)

  (begin 

    (define keyword? 
      (lambda (obj)
	(and (symbol? obj)
	     (equal? (car (reverse (string->list (symbol->string obj)))) #\: ))))
    


    (define keyword->string
      (lambda (obj)
	(list->string (reverse (cdr (reverse (string->list (symbol->string obj))))))))

    
    (define debug-html-linebreak "")

    (define replace-special-chars
      (lambda (s)
	(string-substitute* s '(("&" . "&amp;")
				("\"" . "&quot;")("'" . "&apos;")("<" . "&lt;")(">" . "&gt;")
				("©" . "&copy;") ("lambda" . "&lambda;")))))

    (define self-closing-tags '(br hr img input link meta area base col embed keygen menuitem param source track wbr))

    (define remainder->html
      (lambda (type remainder)
	(cond ((null? remainder) (cond ((member type self-closing-tags) ">")
				       ((equal? type '!--#) " -->")
				       (else (string-append "></" (symbol->string type) ">"))))
	      
	      ((keyword? (car remainder)) (string-append " " (keyword->string (car remainder)) "=\"" 
							 (replace-special-chars (cadr remainder)) "\"" 
							 (remainder->html type (cddr remainder))))

	      ((and (equal? type '!--# )(symbol? (car remainder))) (string-append " " (symbol->string (car remainder))
										  (remainder->html type (cdr remainder))))

	      ((symbol? (car remainder)) (string-append " " (symbol->string (car remainder)) 
							(remainder->html type (cdr remainder))))

	      (else (string-append ">" debug-html-linebreak (apply string-append (map sxml->html remainder)) 
				   "</" (symbol->string type) ">")))))


    (define sxml->html 
      (lambda (element)

	(string-append (cond ((char? element) (cond ((equal? element #\space) "&nbsp;")
						    (else (error "unknown character"))))
			     
			     ((string? element) (replace-special-chars element))

			     (else (let ((type (car element))
					 (remainder (cdr element)))
				     (cond ((equal? type '!--) (string-append "<!-- " (car remainder) " -->"))
					   ((equal? type '!DOCTYPE) (string-append "<!DOCTYPE" (with-output-to-string (lambda () (map (lambda (item) (display " ") (display item)) remainder))) ">"))
					   ((equal? type 'include-string) (apply string-append remainder))
					   (else (string-append "<" (symbol->string type) (remainder->html type remainder)))))))
		       debug-html-linebreak)))


    (define display-html
      (lambda (l)
	(for-each (lambda (element) (display (sxml->html element))) l)))

    (define write-html
      (lambda (l)
	(for-each (lambda (element) (write (sxml->html element))) l)))

    ))