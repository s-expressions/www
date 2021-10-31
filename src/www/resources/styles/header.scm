;;  This file is part of the 'WWW' project.
;;  Copyright 2021 The S-expressions organization <contact@s-expressions.org> 
;;  SPDX-License-Identifier: ISC

`((@charset "UTF-8")

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

   box-shadow: "0px 1px 1px #999, inset 0px 0px 2px 0px #888"
   -webkit-box-shadow: "0px 1px 1px #999, inset 0px 0px 2px 0px #888"

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


  )