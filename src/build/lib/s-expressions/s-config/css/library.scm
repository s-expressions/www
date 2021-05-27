(define-library (s-expressions s-config css)
  (import (scheme base)
	  (scheme write)

	  (chicken base)
	  (chicken port)
	  )

  (export display-css write-css)

  (begin 


    (define css-error
      (lambda (reason object)
	;; (display "CSS error - ")(display reason)(display ": ")(pp object)
	(error (string-append "CSS error - " reason) object)
	(exit 1)))

    (define k:symbol->string
      (lambda (sym)
	(with-output-to-string (lambda () (display sym)))))

    (define declaration->css
      (lambda (remainder)
	(cond ((null? remainder) "}\n")
	      ((not (symbol? (car remainder))) (css-error "not a symbol" (car remainder)))
	      ((null? (cdr remainder)) (css-error "property missing value" (car remainder)))
	      ((not (string? (cadr remainder))) (css-error "value not a string" (cadr remainder)))
	      (else (string-append (k:symbol->string (car remainder)) " " (cadr remainder) ";\n" (declaration->css (cddr remainder)))))))
    


    (define remainder->css
      (lambda (remainder)
	(cond ((null? remainder) "\n{\n}\n")
	      ((string? (car remainder)) (string-append ", " (car remainder) (remainder->css (cdr remainder))))
	      ((symbol? (car remainder)) (string-append "\n{\n" (declaration->css remainder)))
	      (else (css-error "expected string or symbol" remainder)))))


    (define scss->css
      (lambda (rules)
	(apply string-append (map (lambda (rule)
				    (cond ((null? rule) "")
					  ((string? (car rule)) (string-append (car rule) (remainder->css (cdr rule))))
					  ((symbol? (car rule)) (string-append (k:symbol->string (car rule)) 
									       (cond ((null? (cdr rule)) (css-error "missing declaration" rule))
										     ((string? (cadr rule)) (string-append " \"" (cadr rule) "\";\n"))
										     (else (string-append "\n{\n" (declaration->css (cdr rule)))))))

					  (else (css-error "incorrect rule" rule))))

				  rules))
	))


    (define display-css
      (lambda (object)
	(display (scss->css object))
	))


    (define write-css
      (lambda (object)
	(write (scss->css object))
	))


    ))