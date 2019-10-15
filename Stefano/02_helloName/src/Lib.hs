module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = do
  _ <- putStrLn "Hello, what is your name?"
  name <- getLine
  putStrLn $ "Hello, " ++ name
