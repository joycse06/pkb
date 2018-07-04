{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}

module Pkb.Web.Routes (routes) where

import           Web.Routing.Combinators (PathState(..))
import           Web.Spock -- (SpockM, (<//>), Path, var, HasSpock, get)
import           Pkb.Web.Handler.Home
import           Pkb.Web.Handler.Page
import Pkb.Types


routes :: SpockM () PkbSession PkbState ()
routes = do
  get root getHome

  get pageRoute $ \path -> getPage path

-- pageRoute :: Path '[String] Closed
pageRoute = "pages" <//> wildcard

-- taxRateRoute :: Path '[CountryCode, StateCode] Open
-- taxRateRoute = "tax_rates" <//> var <//> var
--
--
-- taxRateRouteResponse :: (Monad m, HasSpock m, SpockConn m ~ SqlBackend)
--                      => CountryCode -> StateCode -> m TaxRule
-- taxRateRouteResponse cCode sCode = do
--   rules <- allTaxRules
--   let matchCriteria = (cCode, sCode)
--   pure $ taxRuleOrDefault matchCriteria rules

