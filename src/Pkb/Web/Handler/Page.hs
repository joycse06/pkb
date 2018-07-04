{-# LANGUAGE OverloadedStrings #-}

module Pkb.Web.Handler.Page where

import Lucid
import Web.Spock
import Web.Spock.Lucid (lucid)
import Pkb.Web.View.Page
import Pkb.Lib.Markdown as M
import Control.Monad.Trans
import Pkb.Types
import qualified Data.Text as T

getPage :: T.Text -> PkbAction ctx a
getPage pagePath = do
  rawMarkdown <- liftIO (M.rawMarkdownFromFile "pages/home.md")
  lucid $ pageView (M.markdownToHtmlByCmark (rawMarkdown))
