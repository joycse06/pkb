{-# LANGUAGE OverloadedStrings #-}
module Pkb.Web.View.Home where

-- import Web.Views.Site (SiteView(..))

import Control.Monad
import Lucid
import Pkb.Web.View.Site (siteView)

homeView :: Html ()
homeView = do
  siteView $ do
      h2_ "This is my Personal Knowledge Base"
      p_ "I will be storing all sorts of things here."
      div_ [ class_ "line" ] $ ""
      div_ [ class_ "line" ] $ ""
      h2_ "Lorem Ipsum Dolor"
      p_ "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
      div_ [ class_ "line" ] $ ""
      h3_ "Lorem Ipsum Dolor"
      p_ "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

