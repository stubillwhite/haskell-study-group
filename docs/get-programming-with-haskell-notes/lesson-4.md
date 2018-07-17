Chapter goals:
* Understand the definition of first-class functions
* Use functions as arguments to other functions
* Abstract computation out of a function
* Return functions as values


**First-class functions** are functions that can be passed around like any other values.
First class functions can be used as arguments and returned as values from other functions.


In Haskell functions are always evaluated before operators, which can be confusing.
```haskell
inc n = n + 1
inc 2 * 3      -- result is 9
```


Tuples in Haskell have `fst` and `snd` functions for accessing first and second element respectively.


1. Use function as argument
```haskell
myFunc func param = undefined 
```

2. Function as result
```haskell
getLocationFunction location = case location of
  "ny" -> nyOffice
  "sf" -> sfOffice
  "reno" -> renoOffice
  _ -> (\name -> (fst name) ++ " " ++ (snd name))
```

__

How does this work?
```haskell
counter x = let x = x + 1
            in
             let x = x + 1
             in
              x
```