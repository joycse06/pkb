{-# LANGUAGE OverloadedStrings #-}
module Pkb.Web.View.Page where

-- import Web.Views.Site (SiteView(..))

import Control.Monad
import Lucid

pageView :: Html () -> Html ()
pageView pageContent = pageContent



