# Syntax cheatsheet

## Functions

### Named functions

    addFive :: Int -> Int
    addFive x = x + 5

    -- Function literal
    addFive = (+) 5

### Anonymous functions

    (\x -> x) argToPass

## Arguments

### Destructuring Lists

    foo (x : xs) = ...
    
### Destructuring records

    data Card = Card
      { rank :: Rank
      , suit :: Suit
      }

    checkCard card@Card{rank = r} = "My card is rank " ++ r

## Guards

    addFiveIfPositive :: Int -> Int
    addFiveIfPositive x | x >= 0 = x + 5
                        | otherwise = x

## Data types

### List

    x = ["a", "b"]
    x = "a" : "b" : Nil


