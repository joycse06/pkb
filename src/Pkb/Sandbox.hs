{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}

module Pkb.Sandbox
(
  allPages,
  allPages'
)
where

import qualified Shelly as S
import Data.List
import qualified Pkb.Lib.Frontmatter as FM
import qualified Pkb.Lib.Markdown as M
import Pkb.Web.View.Page
import Control.Monad.Trans
import Data.Attoparsec.ByteString
import Pkb.Types
import Control.Monad
import Lucid
import qualified System.FilePath.Posix as FP
import qualified Data.ByteString as BS
import qualified Data.Text.Encoding as E
import qualified Data.Text as T
default (T.Text)

allPages' :: IO [Page]
allPages' = do
  filePaths <- allPages
  pages <- traverse buildPageFromPath filePaths
  return pages


allPages :: IO [T.Text]
allPages = do
  files <- (S.shelly $ S.findWhen filterOutDirectories "pages")
  return (fmap fpToString files)


buildPageFromPath :: T.Text -> IO Page
buildPageFromPath path = do
  contents <- M.rawMarkdownFromFile (T.unpack path)
  let pageMetaData = parseMetadata contents
  let rawMarkdown = rawMarkDownFromContents contents
  let html = renderHtmlFromPageContent rawMarkdown
  return (Page path pageMetaData  rawMarkdown html)


parseMetadata :: T.Text -> PageMetaData
parseMetadata contents =
  case FM.parseYamlFrontmatter (E.encodeUtf8 contents) of
            Done i' ya -> (ya :: PageMetaData)
            -- Fail i' _ _ -> defaultMetadata
            _ -> defaultMetadata


  -- ((FM.parseYamlFrontmatter (E.encodeUtf8 contents)) :: (PageMetaData)) >>= (\result ->
  -- case result of
  --   Done ri fm -> fm
  --   _ -> defaultMetadata)
  -- maybe defaultMetadata (maybeResult result)


defaultMetadata :: PageMetaData
defaultMetadata =
  PageMetaData "Default Title" []

rawMarkDownFromContents :: T.Text -> T.Text
rawMarkDownFromContents contents = do
  let markdownList = T.splitOn ("---\n")  contents
  if length markdownList < 3
  then (contents)
  else markdownList !! 2

renderHtmlFromPageContent :: T.Text -> Html ()
renderHtmlFromPageContent rawMarkdown = do
  pageView (M.markdownToHtmlByCmark (rawMarkdown))

-- fmap (maybe ["Default Title"] tags) ((fmap parseYamlFrontmatterMaybe (Data.ByteString.readFile "pages/algorithm/sorting.md")) :: (IO (Maybe PageMetaData)))

filterOutDirectories :: S.FilePath -> S.Sh Bool
filterOutDirectories path = do
  return (FP.hasExtension (T.unpack (fpToString path)))

fpToString :: S.FilePath -> T.Text
fpToString fp = S.toTextIgnore fp



