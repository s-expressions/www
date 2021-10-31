;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

`(nav class: "k-site"
      ,(append '(div class: "k-content" 
		     (div id: "margin-spacer" class: "k-separator"))


	       `(,(include "www/templates/site/nav/toolbar.scm")

		 (div class: "k-separator")

		 ,(include "www/templates/site/nav/menu.scm")

		 (div class: "k-separator")

		 )))