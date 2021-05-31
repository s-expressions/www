`((@charset "UTF-8")

  ("main" display: "block") ;; needed for IE

  ("*"
   ;; margin: "0"
   padding: "0"
   ;; border: "none"
   font-family: "Arial, Helvetica, Verdana, sans-serif"

   color: "#333"
   text-align: "justify"
   -webkit-tap-highlight-color: "rgba(0,0,0,0)"

   -webkit-hyphens: "auto"
   -moz-hyphens: "auto"
   hyphens: "auto"
   )


  ("img"
   margin: "0"
   border: "none"
   padding: "0"
   font-size: "7pt")

  ("a"
   text-decoration: "none")



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ("html" "body"
   margin: "0"
   width: "100%"
   height: "100%"
   
   background-color: "#f8f8f8")

  (".k-background" "#k-page" 
   "header.k-site" "nav.k-site" "footer.k-site"
   "header.k-project" "nav.k-project" "footer.k-project"
   background-position: "center"
   background-repeat: "repeat-y")

  ("section" ".k-content"
   width: "760px"
   margin: "0 auto"
   display: "table"
   )


  

  ;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



  ("#k-page"
   min-height: "2000px"  ;; /* min-height > "header.k-site + menu + content */		      
   height: "100%"
   margin-top: "-200px" margin-bottom: "-200px" padding-top: "200px"	;;/* use footer height */	

   min-width: "760px"
   background-image: ,(bg-url "page/page-background.png")

   )

  ;; /*********************************************************/

  ("header.k-site" ;"header.k-site .k-content"
   ;; background-image: ,(bg-url "header-background.png")
   )
  ("header.k-site .k-content"
   height: "89px"
   )
  ("#k-logo"
   width: "267px" padding-left: "11px"
   height: "38px"

   float: "left"
   position: "relative"
   top: "24px"
   left: "18px"

   background-color: "white"

   border-radius: "8px"
   -web-kit-border-radius: "8px"

   box-shadow: "2px 2px 2px #999, inset 0px 0px 2px 0px #888"
   -webkit-box-shadow: "2px 2px 2px #999, inset 0px 0px 2px 0px #888"

   overflow: "hidden"
   )



  ("header form"
   float: "right" margin-top: "24px" margin-right: "37px"
   ;; border: "1px solid red"
   )
  ("header form label"
   font-size: "11px" color: "#737477"
   width: "100px"
   text-align: "right"
   display: "block"
					;border: "1px solid blue"

   height: "14px"
   float: "left"

   margin-top: "3px"
   margin-right: "3px"
   clear: "left"
   )
  ("header form input[type=text]" "header form input[type=password]"
   -webkit-appearance: "none" 
   font-size: "11px" height: "16px" width: "96px" border-radius: "0"  border-style: "solid"  border-color: "#ccc" border-width: "1px" padding-left: "3px" padding-right: "3px"
   display: "inline-block"
   ;; border: "1px solid blue"

   float: "left"
   margin-bottom: "5px"

   )
  ("header form input[type=image]"
   -moz-border-radius: "2px"
   -webkit-border-radius: "2px"
   border-radius: "2px"
   
   background-color: "#afafaf"
   border-color: "#afafaf"
   border-style: "solid"
   border-top-width: "4px"
   border-left-width: "7px"
   border-right-width: "7px"

   float: "left"
   margin-left: "7px"
   )


  ;; ("header form input[type=submit]"
  ;; font-family: "HeliosCondBold, Verdana"
  ;; -moz-osx-font-smoothing: "grayscale"
  ;; -webkit-font-smoothing: "antialiased"

  ;; -webkit-appearance: "none" 
  ;; background-color: "#afafaf"
  ;; -moz-border-radius: "2px"
  ;; -webkit-border-radius: "2px"
  ;; border-radius: "2px"
  ;; color: "#fff"
  ;; font-size: "11px" 
  ;; text-decoration: "none"
  ;; cursor: "pointer"
  ;; border: "none"


  ;; height: "16px"
  ;; width: "40px"
  ;; text-align: "center"

  ;; display: "inline-block"
  ;; padding-top: "2px"
  ;; margin-left: "2px"
  ;; )
  ("#logout-button-small"
   float: "right"
   margin-top: "36px"
   margin-right: "37px"
   )

  ("a.link-button-small"
   background-color: "#afafaf"

   -moz-border-radius: "2px"
   -webkit-border-radius: "2px"
   border-radius: "2px"

   height: "18px"
   padding-left: "7px"
   padding-right: "7px"

   display: "inline-block"
   float: "right"
   )
  ("a.link-button-small img"
   margin-top: "4px"
   display: "block")


  ("#welcome-text"
					;   font-family: "Arial, Verdana"
   ;; -moz-osx-font-smoothing: "grayscale"
   ;; -webkit-font-smoothing: "antialiased"
   font-size: "16px"color: "#606060"
   float: "right"


   line-height: "19px"
   margin-right: "10px"
   margin-top: "36px"
   )
  ;; ("#log-out-button"
  ;;  font-family: "HeliosCondBold, Verdana"
  ;;  -moz-osx-font-smoothing: "grayscale"
  ;;  -webkit-font-smoothing: "antialiased"

  ;;  background-color: "#afafaf"
  ;;  -moz-border-radius: "2px"
  ;;  -webkit-border-radius: "2px"
  ;;  border-radius: "2px"
  ;;  color: "#fff"
  ;;  font-size: "11px" 
  ;;  text-decoration: "none"
  ;;  cursor: "pointer"
  ;;  border: "none"


  ;;  height: "16px"
  ;;  line-height: "16px"
  ;;  text-align: "center"

  ;;  display: "inline-block"
  ;;  padding-top: "2px"
  ;;  padding-left: "5px"
  ;;  padding-right: "5px"

  ;;  margin-top: "36px"
  ;;  margin-right: "33px"


  ;;  ;; width: "100px"
  ;;  ;; text-align: "center"

  ;;  ;; display: "inline"
  ;;  ;; padding-top: "2px"
  ;;  ;; margin-left: "2px"

  ;;  ;; position: "relative"
  ;;  ;; top: "24px"
  ;;  float: "right"

  ;;  ;; font-family: "HeliosCondBold, Verdana"
  ;;  ;; -moz-osx-font-smoothing: "grayscale"
  ;;  ;; -webkit-font-smoothing: "antialiased"
  ;;  ;; font-size: "12px"
  ;;  ;; background-color: "#afafaf"
  ;;  ;; color: "white"
  ;;  ;; float: "right"
  ;;  ;; width: "41px"
  ;;  ;; height: "26px"
  ;;  ;; line-height: "26px"
  ;;  ;; vertical-align: "middle"
  ;;  ;; text-align: "center"
  ;;  ;; -web-kit-border-radius: "2px"
  ;;  ;; border-radius: "2px"

  ;;  ;; position: "relative"
  ;;  ;; top: "24px"
  ;;  ;; right: "29px"

  ;;  )



  ("a.link-button"
   background-color: "#afafaf"

   -moz-border-radius: "3px"
   -webkit-border-radius: "3px"
   border-radius: "3px"

   height: "22px"
   padding-left: "10px"
   padding-right: "10px"

   display: "block"

   float: "left"
   margin-top: "24px"
   margin-left: "37px"
   )

  ("a.link-button img"
   margin-top: "5px"
   display: "block")



  ;; /*********************************************************/

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

  ;; /*********************************************************/




  ("header.k-project" margin-top: "-1px")

  ("header.k-project" ;"header.k-project .k-content"
   background-image: ,(bg-url "dark-background.png")
   )

  ("header.k-project .k-content"
   height: "125px"
   )

  (".k-project-title" 
   float: "left"
   margin-left: "36px"
   margin-top: "36px"
   margin-right: "50px"
   display: "block"
   )

  (".k-project-caption" 
   display: "block"
;   float: "right"

   margin-top: "37px"
   margin-right: "129px"
   )



  ("#k-tabs"
   padding-left: "28px"
   )

  (".k-project-tab"
   float: "left"
   padding-left: "9px"
   padding-right: "9px"
   padding-top: "6px"

   border-top-left-radius: "5px"
   border-top-right-radius: "5px"
   )
  ("div.k-project-tab"
   height: "24px"
   margin: "1px 1px -1px 1px"
   background-color: "#f8f8f8"
   )
  ("a.k-project-tab"
   border-top: "1px solid #828a93"
   border-left: "1px solid #828a93"
   border-right: "1px solid #828a93"

   height: "10px"
   margin-bottom: "-1px"
   background-color: "#595959"

   )

  (".k-project-tab img"
   display: "block")
  
  ("nav.k-project"
   margin-top: "-1px"
   )
  ("nav.k-project" ;"nav.k-project .k-content"
   background-image: ,(bg-url "skate-tab-menu-background.png")
   )
  ("nav.k-project .k-content"
   height: "30px"
   )


  
  ;; /*********************************************************/

  ("h1" 
   margin-left: "37px"
   margin-top: "33px"
   margin-bottom: "4px"
   )
  

  ("main"
   width: "470px"
   float: "left"
   )
  ("main p" 
   font-size: "14px"
   margin-left: "37px"
   )
  ;; ("main a img" 
  ;;  margin-left: "37px"
  ;;  )






  ("div.k-preview"
   display: "inline-block"
   margin-left: "37px"
   )
  
  ("div.k-preview div"
   float: "left"
   width: "222px"
 
   margin-right: "10px"
   margin-bottom: "20px"

   overflow: "hidden"
   )

  ("div.k-preview div.product"
   height: "222px"
   border-radius: "5px"
   border: "1px solid #CECECE"
   )

  ("div.k-preview p"
   margin-right: "10px"
   font-size: "14px"
   )

  ("a.k-preview-link" 
   text-decoration: "underline"
   font-size: "14px"
   )


  ("div.k-preview td"
   font-size: "14px"
   padding-right: "20px"
   )
 ("div.k-preview td a"
  color: "#333"
  font-size: "14px"

  )

  (".k-preview-title" 
   float: "left"
   margin-left: "16px"
   margin-top: "16px"
   ;; margin-right: "50px"
   display: "block"
   )

  ("div.product p"
   margin-left: "10px"
   margin-right: "10px"
   font-size: "14px"
   )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ("div.k-slide-projector"
   ;; background: "blue"
   display: "inline-block"
   position: "relative"
   width: "760px"
   user-select: "none"
   -webkit-user-select: "none"
   )

  ("a.k-slide-button"
   top: "50%"
   width: "37px"
   position: "absolute"
   color: "#606164"
   cursor: "pointer"
   text-align: "center"
   user-select: "none"
   -webkit-user-select: "none"
   )
  (".k-expanded a.k-slide-button"
   display: "none"
   )
  (".k-collapsed a.k-slide-button"
   display: "inline"
   )
  ("a#k-slide-prev" 
   left: "0px"
   )
  ("a#k-slide-next" 
   right: "0px"
   )


  ("div.k-slide-carousel"
   width: "696px"
   margin-left: "37px"

   user-select: "none"
   -webkit-user-select: "none"

   

   )
  (".k-expanded div.k-slide-carousel"
   display: "inline-block"
   )
  (".k-collapsed div.k-slide-carousel"
   height: "222px"
   overflow: "hidden"
   )


  ("div.k-slide-gallery"
   width: "696px"
   margin-left: "37px"

   ;; user-select: "none"
   ;; -webkit-user-select: "none"

   display: "inline-block"
   

   )

  (".k-slide"

   float: "left"
   width: "220px"
   
   margin-right: "10px"
   margin-bottom: "10px"

   height: "220px"
   ;; border-radius: "5px"
   ;; border: "1px solid #CECECE"

   cursor: "pointer"


   )

  (".k-slide-title" 
   float: "left"
   margin-left: "12px"
   margin-top: "22px"
   display: "block"
   )
  (".k-slide-header"
   width: "218px"
   height: "63px"
   background: "#606164"

   border-top-left-radius: "5px"
   border-top-right-radius: "5px"
   border-left: "1px solid #606164"
   border-right: "1px solid #606164"
   border-top: "1px solid #606164"
   )
  ("div.k-slide-body p"
   margin: "12px"
   font-size: "14px"
   )
  ("a.k-slide-link" 
   text-decoration: "underline"
   font-size: "14px"
   color: "#333"
   )

  ("div.k-slide-spacer"

   float: "left"
   width: "220px"
   
   margin-right: "10px"
   margin-bottom: "10px"

   overflow: "hidden"

   height: "220px"
   )

  (".k-slide-caption"
   position: "absolute"
   right: "12px"
   top: "12px"
   )

  (".k-slide-body"
   width: "218px"
   height: "155px"

   position: "relative"
   overflow: "hidden"


   border-bottom-left-radius: "5px"
   border-bottom-right-radius: "5px"
   border-left: "1px solid #CECECE"
   border-right: "1px solid #CECECE"
   border-bottom: "1px solid #CECECE"
   )
  (".k-slide-body span"
   text-decoration: "underline"
   font-size: "14px"
   position: "absolute" 
   bottom: "12px" 
   left: "12px"
   )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  ("form.common"
   font-size: "14px" 
   line-height: "28px"
   clear: "both"
   float: "left"
   )
  ("form.common label"
   width: "157px" 
   margin-right: "10px"
   text-align: "right" 
   display: "inline-block"
   vertical-align: "middle"
   )
  ("form.common label.radio"
   width: "auto"
   margin-right: "10px"
   text-algin: "left"
   )

  ("form.common label.multiline"
   vertical-align: "top"
   margin-top: "1px"
   )
  ("form.common input[type=text]" "form.common input[type=password]"
   display: "inline-block"
   vertical-align: "middle"

   width: "162px"
   )
  ("form.common input[type=text]" "form.common input[type=password]" "form.common textarea" 

   -webkit-appearance: "none"
   border-radius: "0"  border-style: "solid"  border-color: "#a0a0a0" border-width: "1px" 

   font-size: "14px"

   padding-top: "1px"
   padding-bottom: "1px"
   padding-left: "3px"
   padding-right: "3px"

   )
  ("form.common textarea"
   margin-top: "5px"
   )

  ("form.common select"
   display: "inline-block"
   vertical-align: "middle"

   font-size: "14px"
   height: "24px"
   width: "170px"
   )

 

  ("form.common input[type=radio]"
  display: "inline-block"
   vertical-align: "middle"

   margin-top: "1px"
   margin-left: "0px"
   margin-right: "5px"
   )

  ("form.common input[type=image]"
   -moz-border-radius: "3px"
   -webkit-border-radius: "3px"
   border-radius: "3px"
   
   background-color: "#afafaf"
   border-color: "#afafaf"
   border-style: "solid"
   border-top-width: "5px"
   border-left-width: "10px"
   border-right-width: "10px"
   margin-top: "6px"
   margin-left: "167px"
   )


  
  ("form.common .foot-note" 
   font-size: "12px"
   margin-left: "167px"
   )

  ("form.common .link" 
   text-decoration: "underline"
   margin-left: "167px"
   )
  ("form.common span.field"
   display: "inline-block"
   vertical-align: "middle"
   margin-top: "1px"
   margin-left: "5px"
   )


  ("form#support-form input#subject-input" "form#support-form textarea"
   width: "296px"
   )
  ("form#support-form textarea"
   height: "200px"
   )

  ("form#purchase"
   clear: "none"
   )
  ("form#purchase input[type=text]" "form#purchase textarea"
   width: "275px"
   )
  ("form#purchase textarea"
   height: "60px"
   )

  










  ;; (".foot-note"
  ;;  font-size: "12px"
  ;;  )

  ("main li"
   font-size: "14px"
   margin-left: "57px"
   ;; /* font-weight: "bold"*/
   ;; /* color: "#6b6c6f"*/
   )
  ("main#k-sitemap"
   width: "686px"
   )
  ("h1"
   font-weight: "normal"
   font-size: "14px"
   line-height: "14px"
   )
  ("h2"
   font-weight: "bold"
   font-size: "14px"
   line-height: "14px"
   )
  ("h3"
   font-weight: "normal"
   font-size: "14px"
   line-height: "14px"
   )
  ("main h1" "main h2" "main h3"
   margin-left: "37px"
   )
  ("table.example"
   font-size: "12px"
   width: "500px"
   margin-left: "37px"
   )

  ("table.profile" 
   font-size: "12px"
   width: "400px"
   margin-left: "37px"
   border-collapse: "collapse"
   )

  ("table.checksums" "table.system-requirements" 
   font-size: "12px"
   width: "700px"
   margin-left: "37px"
   border-collapse: "collapse"
   )

  ("table.orders" 
   font-size: "14px"
   width: "687px"
   margin-left: "37px"
   border-collapse: "collapse"
   )
  ("table.orders td"
   border: "1px solid #bbb"
   padding-left: "5px"
   padding-right: "5px"
   padding-top: "2px"
   padding-bottom: "2px"
   )

  ("table.items" 
   font-size: "14px"
   width: "687px"
   margin-left: "37px"
   border-collapse: "collapse"

   clear: "both"
   )
  ("table.order-details" 
   font-size: "14px"
   width: "687px"
   margin-left: "37px"
   border-collapse: "collapse"

   clear: "both"
   )

  ("tr.item td" "td.item" "tr.order-details td"
   border: "1px solid #bbb"
   padding-left: "5px"
   padding-right: "5px"
   padding-top: "2px"
   padding-bottom: "2px"

   text-align: "left"
   )

  ("a:visited"
   color: "#5e5e5f" ;"#4b4b4c";6b6c6f"
   )  


  ("aside"
   width: "240px"
   float: "right"
   )
  ("aside p"
   font-size: "14px"
   margin-right: "35px"
   line-height: "1.5"
   )

 ("aside table" 
   font-size: "14px"
   width: "240px"
   border-collapse: "collapse"
   )

  (".k-name-jp"

   )

  ("main a" "aside a"
   text-decoration: "underline"
   )

  ("h2 a"
   text-decoration: "none"
   )



  ;; /*********************************************************/

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
   color: "#bdbdbd"
   font-weight: "bold"	
   )
  ("footer.k-site a" "footer.k-site .k-bar"
   text-decoration: "none"	
   color: "#CCC"
   )
  ("footer.k-site a:hover"
   color: "#FFF"
   )


  )
