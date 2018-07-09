{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}

module Pkb.Types where

import Lucid
import Web.Spock
import Web.Spock.Config
import Data.Yaml
import GHC.Generics
import qualified Data.Text as T
import Control.Monad
import System.Directory.PathWalk
import Data.List
import System.FilePath.Posix

data PkbSession = EmptySession
data PkbState = PkbState

type PkbAction ctx a = SpockActionCtx ctx () PkbSession PkbState a


-- PageMetaData

data PageMetaData =
  PageMetaData {
                  title :: String
                , tags :: [String]
               } deriving (Show, Generic)

instance FromJSON PageMetaData

data Page =
  Page {
         relativePath :: T.Text
       , metadata :: PageMetaData
       , rawMarkdown :: T.Text
       , parsedHtml :: Html ()
       } deriving (Show)


pathWalkTest :: IO ()
pathWalkTest = do
  pathWalk "pages" $ \root dirs files -> do
    putStrLn $ show dirs
    forM_ files $ \file ->
      when (".md" `isSuffixOf` file) $ do
        putStrLn $ replaceDirectory file "pages"
        putStrLn $ joinPath [root, file]


