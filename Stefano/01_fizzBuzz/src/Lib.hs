module Lib
    (
      mainFizz
    ) where

fizzBuzz:: Int -> String
fizzBuzz n
  | (n `mod` 5 == 0) && (n `mod` 3 == 0) = "FizzBuzz"
  | (n `mod` 5 == 0) = "Buzz"
  | (n `mod` 3 == 0) = "Fizz"
  | otherwise = show n

mainFizz :: Int -> [String] 
mainFizz n =
  fizzBuzz <$> take n [1 .. ]
    
    -- str = foldl (\x y -> shows (x, y, " ")) '' a
  -- let b = fold (\x -> x + " ") ""  (map fizzBuzz [1 .. 100])
  -- do
  --   x <- [1..].take 100
  --   putStrLn $ fizzBuzz x

