{-# LANGUAGE OverloadedStrings #-}
module Pkb.Web.View.Site where

import Control.Monad
import Lucid

siteView :: Html () -> Html ()
siteView body =
    -- doctype_
    html_ $ do
      head_ $ do
        meta_ [ charset_ "utf-8" ]
        meta_ [ name_ "viewport", content_ "width=device-width, initial-scale=1.0" ]
        meta_ [ httpEquiv_ "X-UA-Compatible", content_ "IE=edge" ]
        title_ "Personal Knowledge Base"
        link_ [ rel_ "stylesheet", href_ "/css/bootstrap-4.1.0.min.css" ]
        link_ [ rel_ "stylesheet", href_ "/css/pkb.css" ]
        link_ [ rel_ "stylesheet", type_ "text/css", href_ "https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" ]
        link_ [ href_ "/css/prism.css", rel_ "stylesheet" ]
        script_ [src_ "/js/fontawesome-solid.js" ] $ ("" :: String)
        script_ [src_ "/js/fontawesome.js" ] $ ("" :: String)
      body_ $ do
        div_ [ class_ "wrapper" ] $ do
          nav_ [ id_ "sidebar", class_ "active" ] $ do
            div_ [ class_ "sidebar-header" ] $ do
              h3_ "Personal Knowledge Base"
              strong_ "PKB"
            ul_ [ class_ "list-unstyled components" ] $ do
              li_ [ class_ "active" ] $ do
                a_ [ href_ "#homeSubmenu", data_ "toggle" "collapse"] $ do
                  i_ [ class_ "fas fa-home" ] $ ""
                  " Home"
              li_ $ do
                a_ [ href_ "/pages" ] $ do
                  i_ [ class_ "fas fa-briefcase" ] $ ""
                  " Pages"
              li_ $ do
                a_ [ href_ "#" ] $ do
                  i_ [ class_ "fas fa-question" ] $ ""
                  " FAQ"
              ul_ [ class_ "list-unstyled CTAs" ] $ do
                li_ $ do
                  a_ [ href_ "https://joycse06.github.io"] $ "My Blog"
          div_ [ id_ "content" ] $ do
            nav_ [ class_ "navbar navbar-expand-lg navbar-light bg-light" ] $ do
              div_ [ class_ "container-fluid" ] $ do
                button_ [ type_ "button", id_ "sidebarCollapse", class_ "btn btn-info" ] $ do
                  i_ [ class_ "fas fa-align-left" ] $ ""
                  span_ " Toggle Sidebar"
                button_ [ class_ "btn btn-dark d-inline-block d-lg-none ml-auto", type_ "button", data_ "toggle" "collapse", data_ "target" "#navbarSupportedContent"] $ do
                  i_ [ class_ "fas fa-align-justify" ] $ ""
                div_ [ class_ "collapse navbar-collapse", id_ "navbarSupportedContent" ] $ do
                  ul_ [ class_ "nav navbar-nav ml-auto" ] $ do
                    li_ [ class_ "nav-item active" ] $ do
                      a_ [ class_ "nav-link", href_ "/pages/haskell" ] $ "Haskell"
                    li_ [ class_ "nav-item" ] $ do
                      a_ [ class_ "nav-link", href_ "/pages/ruby" ] $ "Ruby"
            body

        script_ [ src_ "/js/jquery-3.3.1.slim.min.js" ] $ ("" :: String)
        script_ [ src_ "/js/bootstrap-popper.min.js" ] $ ("" :: String)
        script_ [ src_ "/js/bootstrap-4.1.0.min.js" ] $ ("" :: String)
        script_ [src_ "/js/prism-force-line-numbers.js"] ("" :: String)
        script_ [src_ "/js/prism.js"] ("" :: String)
        script_ [ src_ "/js/pkb.js" ] $ ("" :: String)


-- panelWithErrorView :: T.Text -> Maybe T.Text -> H.Html -> H.Html
-- panelWithErrorView title mError ct =
--     H.div ! A.class_ "panel panel-info" ! A.style "margin-top: 30px;" $
--      do H.div ! A.class_ "panel-heading" $
--          H.div ! A.class_ "panel-title" $ H.toHtml title
--         H.div ! A.class_ "panel-body" $
--          do case mError of
--               Just errMsg ->
--                   H.alertBox H.BootAlertDanger (H.toHtml errMsg)
--               Nothing -> mempty
--             H.div ct
