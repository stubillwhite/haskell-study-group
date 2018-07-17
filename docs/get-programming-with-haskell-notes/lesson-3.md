Chapter goals:
* Write lambda functions in Haskell
* Use lambda functions for ad hoc function definitions
* Understand lexical scope
* Create scope with a lambda function

##### lambda function 
is a function with no name

```haskell
x = 4
add1 y = y + x                          -- add1 2 returns 6 because x = 4 is in scope
add2 y = (\x -> y + x) 3                -- add2 1 returns 4
add3 y = (\y -> (\x -> y + x) 1) 2      -- add3 6 returns 3
```

`add3` doesn't care about input parameters, because both `x` and `y` are in scope of the function.