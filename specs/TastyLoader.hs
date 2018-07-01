import Test.Tasty
import Pkb.MainTest

main :: IO ()
main = defaultMain specs


specs :: TestTree
specs =
  testGroup "Specs" [
    test_Main
                    ]
