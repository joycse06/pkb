{-# LANGUAGE OverloadedStrings #-}
module Pkb.Web.View.Page where

-- import Web.Views.Site (SiteView(..))

import Control.Monad
import Lucid

pageView :: Html () -> Html ()
pageView pageContent = do
  doctype_
  html_ [ lang_ "en" ] $ do
    head_ $ do
      meta_ [ charset_ "utf-8" ]
      link_ [ rel_ "apple-touch-icon", sizes_ "76x76", href_ "/img/apple-icon.png" ]
      link_ [ rel_ "icon", type_ "image/png", href_ "/img/favicon.png" ]
      meta_ [ httpEquiv_ "X-UA-Compatible", content_ "IE=edge,chrome=1" ]
      title_ "Material Dashboard by Creative Tim"
      meta_ [ content_ "width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no", name_ "viewport" ]
      link_ [ rel_ "stylesheet", type_ "text/css", href_ "https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" ]
      link_ [ rel_ "stylesheet", href_ "https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" ]
      link_ [ href_ "/css/material-dashboard.css?v=2.1.0", rel_ "stylesheet" ]
      link_ [ href_ "/css/prism.css", rel_ "stylesheet" ]

      -- link_ [ href_ "/demo/demo.css", rel_ "stylesheet" ]
      -- script_ [ src_ "/js/core/jquery.min.js", type_ "text/javascript" ]
    body_ [ class_ "" ] $ do
      div_ [ class_ "wrapper " ] $ do
        pageContent

      footer_ [ class_ "footer" ] $ do
        script_ [src_ "//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"] ("" :: String)
        script_ [src_ "/js/prism-force-line-numbers.js"] ("" :: String)
        script_ [src_ "/js/prism.js"] ("" :: String)




