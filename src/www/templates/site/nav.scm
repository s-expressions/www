`(nav class: "k-site"
      ,(append '(div class: "k-content" 
		     (div id: "margin-spacer" class: "k-separator"))


	       `(,(include "www/templates/toolbar.scm")

		 (div class: "k-separator")

		 ,(include "www/templates/menu.scm")

		 (div class: "k-separator")

		 )))