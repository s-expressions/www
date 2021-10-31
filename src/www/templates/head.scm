;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

`(head (meta http-equiv: "Content-Type" content: "text/html; charset=UTF-8")
			(meta name: "viewport" content: "width=762, user-scalable=yes")
			(meta name: "format-detection" content: "telephone=no")
			(title ,(get-title (current-path)))
			(link rel: "icon" href: ,(string-append (site-url) "/favicon.ico?" (time-stamp)))

			(link rel: "apple-touch-icon" href: "https://www.s-expressions.org/icons/favicon_60x60.png")
			(link rel: "apple-touch-icon" sizes: "57x57" href: "https://www.s-expressions.org/icons/favicon_57x57.png")
			(link rel: "apple-touch-icon" sizes: "60x60" href: "https://www.s-expressions.org/icons/favicon_60x60.png")
			(link rel: "apple-touch-icon" sizes: "72x72" href: "https://www.s-expressions.org/icons/favicon_72x72.png")
			(link rel: "apple-touch-icon" sizes: "76x76" href: "https://www.s-expressions.org/icons/favicon_76x76.png")
			(link rel: "apple-touch-icon" sizes: "114x114" href: "https://www.s-expressions.org/icons/favicon_114x114.png")
			(link rel: "apple-touch-icon" sizes: "120x120" href: "https://www.s-expressions.org/icons/favicon_120x120.png")
			(link rel: "apple-touch-icon" sizes: "144x144" href: "https://www.s-expressions.org/icons/favicon_144x144.png")
			(link rel: "apple-touch-icon" sizes: "152x152" href: "https://www.s-expressions.org/icons/favicon_152x152.png")
			(link rel: "apple-touch-icon" sizes: "180x180" href: "https://www.s-expressions.org/icons/favicon_180x180.png")

			(link rel: "stylesheet" type: "text/css" href: ,(string-append "/styles/page.css?" (time-stamp)))
			(link rel: "stylesheet" type: "text/css" href: ,(string-append  "/styles/header.css?" (time-stamp)))
			(link rel: "stylesheet" type: "text/css" href: ,(string-append  "/styles/navigation.css?" (time-stamp)))
			(link rel: "stylesheet" type: "text/css" href: ,(string-append  "/styles/footer.css?" (time-stamp)))
			(script type: "text/javascript" src: ,(string-append  "/scripts/set-page-height.js?" (time-stamp)))
			(script type: "text/javascript" src: ,(string-append  "/scripts/preload-images.js?" (time-stamp)))
			(!-- "$NAVIGATION:HEAD")
			)