module Pkb.MainTest where

import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))


test_Main :: TestTree
test_Main =
  testGroup "Main" [
    simpleTest
                   ]

simpleTest :: TestTree
simpleTest =
  testGroup "Simple" [
    testCase "Simple 1 == 1" $ 1 @?= 1
                     ]

