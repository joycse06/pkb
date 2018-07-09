{-# LANGUAGE OverloadedStrings #-}

module Pkb.Web.Handler.Page where

import Lucid
import Web.Spock
import Web.Spock.Lucid (lucid)
import Pkb.Web.View.Page
import Pkb.Lib.Markdown as M
import Control.Monad.Trans
import Pkb.Types
import System.FilePath.Posix
import Data.List
import Data.Maybe
import qualified Data.Text as T
import Data.Monoid ((<>))
import Pkb.Sandbox as S

getPage :: T.Text -> PkbAction ctx a
getPage pagePath = do
  -- liftIO $ putStrLn (T.unpack pagePath)
  let pageRelativePath = T.pack (joinPath ["pages", T.unpack pagePath])
  liftIO $ putStrLn ("Page relativePath from url: " ++ (T.unpack pageRelativePath))
  pages <- liftIO allPages'
  let foundPage = (findPage pageRelativePath pages)
  let pagePaths  = fmap relativePath pages
  liftIO $ putStrLn (show pagePaths)
  liftIO $ putStrLn (T.unpack ("Found page: " <> (maybe "Not Found" relativePath foundPage)))
  let page = fromMaybe (pages !! 1) foundPage
  liftIO $ putStrLn ("Page relativePath: " ++ (T.unpack (relativePath page)))
  lucid $ pageView (M.markdownToHtmlByCmark (rawMarkdown page))


findPage :: T.Text -> [Page] -> Maybe Page
findPage path pages = find (\page -> (relativePath page) == path) pages
