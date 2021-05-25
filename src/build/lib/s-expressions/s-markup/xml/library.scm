(define-library (s-expressions s-markup xml)
  (import (scheme base)
	  (scheme write)
	  (srfi-13)

	  (chicken keyword)
	  (chicken port)
	  (regex)
	  )

  (export display-xml write-xml)

  (begin 

    (define debug-xml-linebreak "")

    (define replace-special-chars
      (lambda (s)
	(string-substitute* s '(("&" . "&amp;") 
				("\"" . "&quot;")("'" . "&apos;")("<" . "&lt;")(">" . "&gt;")
				("©" . "&copy;") ("lambda" . "&lambda;")))))


    (define remainder->xml
      (lambda (type remainder)
	(cond ((null? remainder) (cond ((string-prefix? "?" (symbol->string type)) "?>")
				       (else (string-append " />"))))
	      
	      ((keyword? (car remainder)) (string-append " " (keyword->string (car remainder)) "=\"" 
							 (replace-special-chars (cadr remainder)) "\"" 
							 (remainder->xml type (cddr remainder))))

	      (else (string-append ">" debug-xml-linebreak (apply string-append (map object->xml remainder)) 
				   "</" (symbol->string type) ">")))))


    (define object->xml 
      (lambda (obj)
	(string-append (cond ((char? obj) (cond ((equal? obj #\space) "&nbsp;")
						(else (error "unknown character"))))
			     
			     ((string? obj) (replace-special-chars obj))

			     (else (let ((type (car obj))
					 (remainder (cdr obj)))

				     (cond ((equal? type '!DOCTYPE) (string-append "<!DOCTYPE" (with-output-to-string (lambda () (map (lambda (o) (display " ") (write o)) (cdr obj)))) ">"))
					   ((string-prefix? "!--" (symbol->string type)) (string-append "<" (symbol->string type) (car remainder) "-->"))
					   (else (string-append "<" (symbol->string type) (remainder->xml type remainder)))))))
		       debug-xml-linebreak)))


    (define display-xml
      (lambda (l)
	(for-each (lambda (obj) (display (object->xml obj))) l)))
    

    (define write-xml
      (lambda (l)
	(for-each (lambda (obj) (write (object->xml obj))) l)))
    
    ))