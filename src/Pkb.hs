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
import qualified Network.Wai.Middleware.Static as S
import Network.Wai (Middleware)
import System.Directory
import Network.Wai.Middleware.RequestLogger
import Pkb.Web.View.Home
import Pkb.Lib.Markdown as M
import CMark as CM
import Pkb.Web.Handler.Home
import Pkb.Types
import qualified Pkb.Web.Routes as PR

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
    do
      -- liftIO $ putStrLn "Hello"
      -- currentDir <- liftIO System.Directory.getCurrentDirectory
      -- liftIO $ putStrLn currentDir

      middleware logStdoutDev
      middleware (S.staticPolicy (S.addBase "static"))
      PR.routes

      -- get root getHome
      --
      -- get ("pages" <//> wildcard) $ \path ->
      --    do
      --      rawMarkdown <- liftIO (M.rawMarkdownFromFile "pages/home.md")
      --      lucid $ M.markdownToHtmlByCmark (rawMarkdown)
