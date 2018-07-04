{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds #-}

module Pkb.Types where

import Web.Spock
import Web.Spock.Config

data PkbSession = EmptySession
data PkbState = PkbState

type PkbAction ctx a = SpockActionCtx ctx () PkbSession PkbState a
