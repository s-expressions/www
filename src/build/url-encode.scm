
;; char *url_encode(char *input, int input_len) 
;; {
;;     char *p_input = input;
;;     char *buffer = malloc (input_len * 3 + 1);
;;     char *p_buffer = buffer;

;;     while (*p_input) 
;;     {
;; 	if (isalnum (*p_input) || *p_input == '-' || *p_input == '_' || *p_input == '.' || *p_input == '~') 
;; 	    *p_buffer++ = *p_input;
;; 	else if (*p_input == ' ') 
;; 	    *p_buffer++ = '+';
;; 	else 
;; 	    *p_buffer++ = '%', *p_buffer++ = to_hex (*p_input >> 4), *p_buffer++ = to_hex (*p_input & 15);
;; 	p_input++;
;;     }
;;     *p_buffer = '\0';
;;     return buffer;
;; }

(define url-encode
  (lambda (s)
    (apply string-append (map (lambda (c)
				(cond ((or (char-alphabetic? c) (char-numeric? c) (member c '(#\- #\_ #\. #\~))) (string c))
				      (else (string-append "%" (string-pad (string-upcase (number->string (char->integer c) 16)) 2 #\0)))))
			      (string->list s)))))