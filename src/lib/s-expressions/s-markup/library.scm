;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

(define-library (s-expressions s-markup)
  (import (scheme base)
	  (scheme write)

	  (chicken base)
	  )

  (export get-attributes
	  get-children
	  get-element-by-type
	  get-elements-by-type
	  get-attribute-value
	  get-element-where
	  )

  (begin 

    (define k:error
      (lambda (message . irritants)
	(display message)
	(cond ((not (null? irritants)) (display ": ")))
	(map (lambda (irritant) (write irritant) (display " ")) irritants)
	(newline)
	(exit 1)))

    (define separate-attributes
      (lambda (l)
	(cond ((null? l) (values '() '()))

	      ((not (symbol? (car l))) (values '() l))

	      ((or (null? (cdr l))
		   (not (string? (cadr l)))) (k:error "Markup error - attribute missing value" (car l)))

	      (else (let-values (((attributes children) (separate-attributes (cddr l))))
		      (values (cons (cons (car l) (cadr l))
				    attributes)
			      children))))))
    
    (define get-attributes
      (lambda (element)
	(separate-attributes (cdr element))))

    (define get-children
      (lambda (element)
	(let-values (((attributes children) (separate-attributes (cdr element))))
	  children)))

    (define get-element-by-type
      (lambda (type elements)
	(assoc type elements)))

    (define get-elements-by-type
      (lambda (type elements)
	(apply append (map (lambda (element)
			     (cond ((equal? (car element) type) (list element))
				   (else '())))
			   elements))))

    (define get-attribute-value
      (lambda (element name)
	(let* ((attributes (get-attributes element))
	       (attribute (assoc name attributes)))

	  (cond (attribute (cdr attribute))
		(else #f)))))

    (define get-element-where
      (lambda (elements name value)
	(cond ((null? elements) #f)
	      (else (let* ((element (car elements))
			   (test-value (get-attribute-value element name)))

		      (cond ((and test-value (equal? test-value value)) element)
			    (else (get-element-where (cdr elements) name value))))))))


    ))