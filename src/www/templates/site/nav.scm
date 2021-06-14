`(nav class: "k-site"
      ,(append '(div class: "k-content" 
		     (div id: "margin-spacer" class: "k-separator"))


	       `(,(include "www/templates/site/nav/toolbar.scm")

		 (div class: "k-separator")

		 ,(include "www/templates/site/nav/menu.scm")

		 (div class: "k-separator")

		 )))