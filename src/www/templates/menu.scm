`(div id: "k-simple-menu" 
      class: "k-simple"
      ,(menu-button "organization")
      ,(menu-button "standards")
      ,(menu-button "projects" (project-page? (current-path)))
      ,(menu-button "contact")
      )

