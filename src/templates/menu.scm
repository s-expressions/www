`(div ;; id: "k-simple-menu" 
class: "k-simple"
      ,(menu-button "organization")
      ,(menu-button "standards")
      ,(menu-button "projects" (project-page? path))
      ,(menu-button "contact")
      )

