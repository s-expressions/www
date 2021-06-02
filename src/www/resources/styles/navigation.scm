`((@charset "UTF-8")
  

  ("nav.k-site"
   height: "63px"
   )

  ("nav.k-site" ;"nav.k-site .k-content"
   background-image: ,(bg-url "page/navigation/navigation-background.png")
   )
  ("nav.k-site .k-content"
   height: "63px"
   )

  ("nav.k-site .k-separator"
   float: "left"
   
   width: "1px"
   height: "62px"
   
   background-image: ,(bg-url "page/navigation/navigation-separator.png")
   )

  ("#margin-spacer"
   margin-left: "37px"
   )


  
  (".k-toolbutton"
   cursor: "default"
   float: "left" 
   height: "16px"

   border: "1px solid #AF985E"

   margin-left: "6px"
   margin-right: "6px"
   margin-top: "23px"
   )
  
  ("a.k-toolbutton" cursor: "pointer")

  (".k-toolbutton img"
   width: "17px"
   height: "16px"
   background-image: ,(bg-url "page/navigation/toolbar_sprite.svg")
   background-size: "51px 32px"

   background-position-y: "0px"
   )

  ("a.k-toolbutton:hover img" "div.k-toolbutton img" background-position-y: "-16px")

  ("#k-home-button" margin-left: "36px")
  ("#k-home-button img" background-position-x: "0px")

  ("#k-contact-button img" background-position-x: "-17px")

  ("#k-site-map-button img" background-position-x: "-34px")
  ("#k-site-map-button" margin-right: "36px")
  
  




  ("#k-simple-menu"

   padding-left: "24px"
   padding-right: "24px"

   float: "left"
   height: "62px"

   background-image: ,(bg-url "page/navigation/menu-simple-background.png")
   )

  ("#k-complex-menu"
   float: "left"
   height: "63px"
   background-image: ,(bg-url "menu-compound-background.png")
   )

  

  ("#k-primary-menu"
   float: "left"
   height: "30px"

   line-height: "30px"
   vertical-align: "middle"

   padding-left: "24px"
   padding-right: "24px"
   )
  ("#k-secondary-menu" 
   clear: "left"
   float: "left"
   height: "32px"

   padding-left: "35px"
   )


  (".k-simple-menu-label"
   float: "left"
   margin-top: "25px"
   margin-left: "14px"
   margin-right: "14px"

   height: "14px"

   )
  (".k-primary-menu-label"
   float: "left"
   margin-top: "10px"
   margin-left: "14px"
   margin-right: "14px"

   height: "14px"
   )
  (".k-secondary-menu-label"
   float: "left"
   margin-top: "10px"
   margin-left: "0px"
   margin-right: "0px"

   height: "22px"
   )

  ("a.k-simple-menu-label img" display: "block")
  ("a.k-simple-menu-label:hover img" visibility:  "hidden")
  ("a.k-primary-menu-label img" display: "block")
  ("a.k-primary-menu-label:hover img" visibility:  "hidden")
  ("a.k-secondary-menu-label img" display: "block")
  ("a.k-secondary-menu-label:hover img" visibility:  "hidden")


  ("a#nav-label_organization:hover"      background-image:  ,(bg-url "nav-label_organization_highlight.svg"))
  ("a#nav-label_standards:hover"         background-image:  ,(bg-url "nav-label_standards_highlight.svg"))
  ("a#nav-label_projects:hover"          background-image:  ,(bg-url "nav-label_projects_highlight.svg"))
  ("a#nav-label_contact:hover"           background-image:  ,(bg-url "nav-label_contact_highlight.svg"))


  )