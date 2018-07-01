{-# LANGUAGE OverloadedStrings #-}
module Pkb where

import Web.Spock
import Web.Spock.Config
import Web.Spock.Lucid (lucid)
import Lucid
import Control.Monad.Trans
import Data.Monoid
import Data.IORef
import qualified Data.Text as T
import Data.Text.Lazy as TL
import Cheapskate
import qualified Text.Blaze.Html as BL
import Text.Blaze.Html.Renderer.Text
import Network.Wai (Middleware)

data PkbSession = EmptySession
data PkbState = PkbState

rawMarkdownFile :: IO T.Text
rawMarkdownFile = do
  contents <- readFile "pages/home.md"
  let sText = T.pack contents
  return sText

toMarkdown :: Text -> BL.Html
toMarkdown sText = BL.toHtml . markdown def $ TL.toStrict sText

convertToHtml :: BL.Html -> T.Text
convertToHtml rawHtml = TL.toStrict $ renderHtml rawHtml

runApp :: IO ()
runApp =
    do ref <- newIORef 0
       runSpock 8080 pkbApp

pkbApp :: IO Middleware
pkbApp =
  do
    spockCfg <- defaultSpockCfg EmptySession PCNoDatabase PkbState
    spock spockCfg routes


routes :: SpockM () PkbSession PkbState ()
routes =
    do get root $
           text "Hello World!"
       get ("pages" <//> wildcard) $ \path ->
         do
           rawMarkdown <- liftIO rawMarkdownFile
           html $ convertToHtml $ toMarkdown ( TL.fromStrict rawMarkdown)

