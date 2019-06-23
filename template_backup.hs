template1 :: Html ()
template1 = do
  ""
  doctype_
  ""
  html_ $ do
    ""
    head_ $ do
      ""
      meta_ [ charset_ "utf-8" ]
      ""
      meta_ [ name_ "viewport", content_ "width=device-width, initial-scale=1.0" ]
      ""
      meta_ [ httpEquiv_ "X-UA-Compatible", content_ "IE=edge" ]
      ""
      title_ "Collapsible sidebar using Bootstrap 4"
      ""
      toHtmlRaw  "<!-- Bootstrap CSS CDN -->"
      ""
      link_ [ rel_ "stylesheet", href_ "https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" ]
      ""
      toHtmlRaw  "<!-- Our Custom CSS -->"
      ""
      link_ [ rel_ "stylesheet", href_ "style4.css" ]
      ""
      toHtmlRaw  "<!-- Font Awesome JS -->"
      ""
      script_ [ defer_ "", src_ "https://use.fontawesome.com/releases/v5.0.13/js/solid.js" ] $ ""
      ""
      script_ [ defer_ "", src_ "https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" ] $ ""
      ""
    ""
    body_ $ do
      ""
      div_ [ class_ "wrapper" ] $ do
        ""
        toHtmlRaw  "<!-- Sidebar  -->"
        ""
        nav_ [ id_ "sidebar" ] $ do
          ""
          div_ [ class_ "sidebar-header" ] $ do
            ""
            h3_ "Bootstrap Sidebar"
            ""
            strong_ "BS"
            ""
          ""
          ul_ [ class_ "list-unstyled components" ] $ do
            ""
            li_ [ class_ "active" ] $ do
              ""
              a_ [ href_ "#homeSubmenu", data_ "toggle" "collapse", ariaExpanded_ "false", class_ "dropdown-toggle" ] $ do
                ""
                i_ [ class_ "fas fa-home" ] $ ""
                "Home"
              ""
              ul_ [ class_ "collapse list-unstyled", id_ "homeSubmenu" ] $ do
                ""
                li_ $ do
                  ""
                  a_ [ href_ "#" ] $ "Home 1"
                  ""
                ""
                li_ $ do
                  ""
                  a_ [ href_ "#" ] $ "Home 2"
                  ""
                ""
                li_ $ do
                  ""
                  a_ [ href_ "#" ] $ "Home 3"
                  ""
                ""
              ""
            ""
            li_ $ do
              ""
              a_ [ href_ "#" ] $ do
                ""
                i_ [ class_ "fas fa-briefcase" ] $ ""
                "About"
              ""
              a_ [ href_ "#pageSubmenu", data_ "toggle" "collapse", ariaExpanded_ "false", class_ "dropdown-toggle" ] $ do
                ""
                i_ [ class_ "fas fa-copy" ] $ ""
                "Pages"
              ""
              ul_ [ class_ "collapse list-unstyled", id_ "pageSubmenu" ] $ do
                ""
                li_ $ do
                  ""
                  a_ [ href_ "#" ] $ "Page 1"
                  ""
                ""
                li_ $ do
                  ""
                  a_ [ href_ "#" ] $ "Page 2"
                  ""
                ""
                li_ $ do
                  ""
                  a_ [ href_ "#" ] $ "Page 3"
                  ""
                ""
              ""
            ""
            li_ $ do
              ""
              a_ [ href_ "#" ] $ do
                ""
                i_ [ class_ "fas fa-image" ] $ ""
                "Portfolio"
              ""
            ""
            li_ $ do
              ""
              a_ [ href_ "#" ] $ do
                ""
                i_ [ class_ "fas fa-question" ] $ ""
                "FAQ"
              ""
            ""
            li_ $ do
              ""
              a_ [ href_ "#" ] $ do
                ""
                i_ [ class_ "fas fa-paper-plane" ] $ ""
                "Contact"
              ""
            ""
          ""
          ul_ [ class_ "list-unstyled CTAs" ] $ do
            ""
            li_ $ do
              ""
              a_ [ href_ "https://bootstrapious.com/tutorial/files/sidebar.zip", class_ "download" ] $ "Download source"
              ""
            ""
            li_ $ do
              ""
              a_ [ href_ "https://bootstrapious.com/p/bootstrap-sidebar", class_ "article" ] $ "Back to article"
              ""
            ""
          ""
        ""
        toHtmlRaw  "<!-- Page Content  -->"
        ""
        div_ [ id_ "content" ] $ do
          ""
          nav_ [ class_ "navbar navbar-expand-lg navbar-light bg-light" ] $ do
            ""
            div_ [ class_ "container-fluid" ] $ do
              ""
              button_ [ type_ "button", id_ "sidebarCollapse", class_ "btn btn-info" ] $ do
                ""
                i_ [ class_ "fas fa-align-left" ] $ ""
                ""
                span_ "Toggle Sidebar"
                ""
              ""
              button_ [ class_ "btn btn-dark d-inline-block d-lg-none ml-auto", type_ "button", data_ "toggle" "collapse", data_ "target" "#navbarSupportedContent", ariaExpanded_ "false", ariaLabel_ "Toggle navigation" ] $ do
                ""
                i_ [ class_ "fas fa-align-justify" ] $ ""
                ""
              ""
              div_ [ class_ "collapse navbar-collapse", id_ "navbarSupportedContent" ] $ do
                ""
                ul_ [ class_ "nav navbar-nav ml-auto" ] $ do
                  ""
                  li_ [ class_ "nav-item active" ] $ do
                    ""
                    a_ [ class_ "nav-link", href_ "#" ] $ "Page"
                    ""
                  ""
                  li_ [ class_ "nav-item" ] $ do
                    ""
                    a_ [ class_ "nav-link", href_ "#" ] $ "Page"
                    ""
                  ""
                  li_ [ class_ "nav-item" ] $ do
                    ""
                    a_ [ class_ "nav-link", href_ "#" ] $ "Page"
                    ""
                  ""
                  li_ [ class_ "nav-item" ] $ do
                    ""
                    a_ [ class_ "nav-link", href_ "#" ] $ "Page"
                    ""
                  ""
                ""
              ""
            ""
          ""
          h2_ "Collapsible Sidebar Using Bootstrap 4"
          ""
          p_ "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
          ""
          p_ "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
          ""
          div_ [ class_ "line" ] $ ""
          ""
          h2_ "Lorem Ipsum Dolor"
          ""
          p_ "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
          ""
          div_ [ class_ "line" ] $ ""
          ""
          h2_ "Lorem Ipsum Dolor"
          ""
          p_ "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
          ""
          div_ [ class_ "line" ] $ ""
          ""
          h3_ "Lorem Ipsum Dolor"
          ""
          p_ "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
          ""
        ""
      ""
      toHtmlRaw  "<!-- jQuery CDN - Slim version (=without AJAX) -->"
      ""
      script_ [ src_ "https://code.jquery.com/jquery-3.3.1.slim.min.js" ] $ ""
      ""
      toHtmlRaw  "<!-- Popper.JS -->"
      ""
      script_ [ src_ "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" ] $ ""
      ""
      toHtmlRaw  "<!-- Bootstrap JS -->"
      ""
      script_ [ src_ "https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" ] $ ""
      ""
      script_ [ type_ "text/javascript" ] $ "$(document).ready(function () {\n            $('#sidebarCollapse').on('click', function () {\n                $('#sidebar').toggleClass('active');\n            });\n        });"
      ""
    ""
  ""
