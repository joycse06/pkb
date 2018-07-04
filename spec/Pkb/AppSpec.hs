{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
module Pkb.AppSpec where

import           Pkb (pkbApp)
import           Test.Tasty
import           Test.Hspec
import           Test.Hspec.Wai
import           Web.Spock (spockAsApp)
import           Test.Tasty.HUnit
import           Test.Tasty.QuickCheck


spec_integration_home_page :: Spec
spec_integration_home_page =
  with (spockAsApp pkbApp) $
    do describe "GET /" $
        do it "Serves the home page" $
            get "/" `shouldRespondWith` "Hello World!" { matchStatus = 200 }
