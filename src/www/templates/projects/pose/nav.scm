;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

`(nav class: "k-project"

      (div class: "k-content"
	   
	   (div id: "k-tabs"

		,(project-tab "Abstract" "/projects/pose/abstract")

		,(project-tab "Rationale" "/projects/pose/rationale")

		,(project-tab "Specification" "/projects/pose/specification")

		,(project-tab "Examples" "/projects/pose/examples")

		;; ,(project-tab "Libraries" "/projects/pose/libraries")

		)

	   
	   ))