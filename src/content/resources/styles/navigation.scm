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

   border-top: "1px solid #AF985E"
   border-bottom: "1px solid #AF985E"

   margin-left: "6px"margin-right: "6px"margin-top: "23px"
   ;; padding-top: "1px"

   padding-left: "1px"
   padding-right: "1px"
   )
  

  ("a.k-toolbutton"
   cursor: "pointer"
   background-image: ,(bg-url "page/navigation/toolbar-background.png")
   )
  ("a.k-toolbutton:hover" "div.k-toolbutton"
   background-image: ,(bg-url "page/navigation/toolbar-background-selected.png")
   )

  (".k-toolbutton img"
   width: "17px"
   height: "16px")

  ("#k-home-button"
   margin-left: "36px"
   )

  ("a#k-home-button img" background-image: ,(bg-url "page/navigation/nav-icon_home.svg"))
  ("a#k-home-button:hover img" "div#k-home-button img" background-image: ,(bg-url "page/navigation/nav-icon_home_highlight.svg"))

  ("a#k-contact-button img" background-image: ,(bg-url "page/navigation/nav-icon_contact.svg"))
  ("a#k-contact-button:hover img" "div#k-contact-button img" background-image: ,(bg-url "page/navigation/nav-icon_contact_highlight.svg"))

  ("a#k-site-map-button img" background-image: ,(bg-url "page/navigation/nav-icon_site-map.svg"))
  ("a#k-site-map-button:hover img" "div#k-site-map-button img" background-image: ,(bg-url "page/navigation/nav-icon_site-map_highlight.svg"))

  ("#k-site-map-button"
   margin-right: "36px"
   )
  
  




  ("#k-simple-menu"

   padding-left: "24px"
   padding-right: "24px"

   float: "left"
   height: "62px"

   background-image: ,(bg-url "menu-simple-background.png")
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


  ("a#nav-label_company:hover"      background-image:  ,(bg-url "nav-label_company_highlight.svg"))
  ("a#nav-label_products:hover"     background-image:  ,(bg-url "nav-label_products_highlight.svg"))
  ("a#nav-label_technologies:hover" background-image:  ,(bg-url "nav-label_technologies_highlight.svg"))
  ("a#nav-label_support:hover"      background-image:  ,(bg-url "nav-label_support_highlight.svg"))
  ("a#nav-label_contact:hover"      background-image:  ,(bg-url "nav-label_contact_highlight.svg"))
  ("a#nav-label_my-account:hover"   background-image:  ,(bg-url "nav-label_my-account_highlight.svg"))

  ("a#nav-label_domainmanager:hover" background-image:  ,(bg-url "nav-label_domainmanager_highlight.svg"))
  ("a#nav-label_filegap:hover" background-image:  ,(bg-url "nav-label_filegap_highlight.svg"))

  ("a#nav-label_autobsd:hover" background-image:  ,(bg-url "nav-label_autobsd_highlight.svg"))
  ("a#nav-label_autocgi:hover" background-image:  ,(bg-url "nav-label_autocgi_highlight.svg"))
  ("a#nav-label_automaton:hover" background-image:  ,(bg-url "nav-label_automaton_highlight.svg"))
  ("a#nav-label_skate:hover" background-image:  ,(bg-url "nav-label_skate_highlight.svg"))
  ("a#nav-label_gnosys:hover" background-image:  ,(bg-url "nav-label_gnosys_highlight.svg"))

  ("#nav-label_cart" height: "16px" margin-left: "49px" margin-top: "9px" display: "inline-block")
  ("a#nav-label_cart:hover img" visibility: "hidden")


  )