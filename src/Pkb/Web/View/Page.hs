{-# LANGUAGE OverloadedStrings #-}
module Pkb.Web.View.Page where

-- import Web.Views.Site (SiteView(..))

import Control.Monad
import Lucid
import Pkb.Web.View.Site (siteView)

pageView :: Html () -> Html ()
pageView pageContent = do
  siteView $ do
    pageContent
