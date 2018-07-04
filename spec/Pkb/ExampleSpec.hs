{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}

module Pkb.ExampleSpec where

import           Test.Tasty
import           Test.Hspec
import           Test.Tasty.HUnit
import           Test.Tasty.QuickCheck

unit_listCompare :: IO ()
unit_listCompare = [1 :: Int, 2, 3] `compare` [1,2] @?= GT

prop_additionCommutative :: Int -> Int -> Bool
prop_additionCommutative a b = a + b == b + a

spec_prelude :: Spec
spec_prelude =
  describe "Prelude.head" $
  it "returns the first element of a list" $
  head [23 ..] `shouldBe` (23 :: Int)

test_addition :: TestTree
test_addition = testProperty "Addition commutes" $ \(a :: Int) (b :: Int) -> a + b == b + a

test_multiplication :: [TestTree]
test_multiplication =
  [ testProperty "Multiplication commutes" $ \(a :: Int) (b :: Int) -> a * b == b * a
  , testProperty "One is identity" $ \(a :: Int) -> a == a
  ]

test_generateTree :: IO TestTree
test_generateTree = do
  let input = "Some input"
  pure $ testCase input $ pure ()

test_generateTrees :: IO [TestTree]
test_generateTrees = map (\ s -> testCase s $ pure ()) <$> pure ["First input", "Second input"]
