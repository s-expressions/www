;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

`((@charset "UTF-8")
  

  ("footer.k-project" "footer.k-project .k-content"
   background-image: ,(bg-url "skate-footer.png")
   min-width: "760px"
   height: "14px"
   )




  ("footer.k-site"
   margin-top: "-1px"
   min-width: "760px"
   )
  ("footer.k-site" ;"footer .k-content"
   ;; should not need page edges
   background-image: ,(bg-url "page/footer/site-footer-background.png")
   )
  ("footer.k-site .k-content"
   height: "200px"
   
   color: "#CCC"
   font-size: "10px"
   )
  ("footer.k-site div#notice"
   float: "left"
   margin-left: "37px"
   margin-top: "16px"
   color: "#bdbdbd"
   )

  ("footer.k-site .k-copyright"
   font-size: "11px"
   color: "#FFF"
   font-weight: "bold"
   )
  ("footer.k-site .k-rights"
   font-size: "10px"
   ;; color: "#bdbdbd"
   color: "#CCC"
   font-weight: "bold"	
   )
  ("footer.k-site a" "footer.k-site .k-bar"
   text-decoration: "none"	
   ;; color: "#CCC"
   color: "#EBEBEB"
   )
  ("footer.k-site a:hover"
   color: "#FFF"
   )

  )

