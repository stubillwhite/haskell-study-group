module Lib
    ( someFunc,
      someFunc2,
      mainFizz
    ) where

import Prelude 

someFunc :: IO ()
someFunc = putStrLn "someFunc"

someFunc2 :: IO ()
someFunc2 = putStrLn "HelloWorld"


join :: String -> [String] -> String
join _ [] = ""
join a xs = foldr1 (concat) xs
  where
    concat b c = b ++ a ++ c

fizzBuzz:: Int -> String
fizzBuzz n
  | (n `mod` 5 == 0) && (n `mod` 3 == 0) = "FizzBuzz"
  | (n `mod` 5 == 0) = "Buzz"
  | (n `mod` 3 == 0) = "Fizz"
  | otherwise = show n

mainFizz :: String 
mainFizz =
  join " " a
  where
    a = map fizzBuzz [1 .. 100]
    -- str = foldl (\x y -> shows (x, y, " ")) '' a
  -- let b = fold (\x -> x + " ") ""  (map fizzBuzz [1 .. 100])
  -- do
  --   x <- [1..].take 100
  --   putStrLn $ fizzBuzz x

