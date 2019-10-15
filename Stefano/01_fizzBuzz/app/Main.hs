module Main where

import Lib

main :: IO ()
-- main = someFunc
main =
  sequence_ $ putStrLn <$> mainFizz 50
