{-# LANGUAGE OverloadedStrings #-}

module Pkb.Web.Handler.Home where

import Lucid
import Web.Spock
import Web.Spock.Lucid (lucid)
import Pkb.Web.View.Home
import Pkb.Types

getHome :: PkbAction ctx a
getHome = lucid homeView

