# Functional programming

Functional programming liberates the computations from von Neumann's architecture constraints by describing the way to
solve problems rather than describing the computational steps to do so. Haskell is an implementation of the lambda
calculus, which is a logic system developed by Church that represents everything as functions. Lambda calculus is a
universal model of computation, equivalent to a Turing machine.

# Functions

## Named functions

```
function_name input_parameter1 input_parameter2 input_parameterN = result
```

All functions must

- begin with a lowercase letter
- take at least one argument, but may take more if separated by space
- return something
- obey **referential transparency**, which means that anytime a function is called with same argument must always return
  the same value

Having **pure** functions with **no side effects** that obey the law of **referential transparency** means that Haskell
is a safe programming language.

## Lambda functions

A **lambda function** is a function with no name.

    x = 4
    add1 y = y + x                          -- add1 2 returns 6 because x = 4 is in scope
    add2 y = (\x -> y + x) 3                -- add2 1 returns 4
    add3 y = (\y -> (\x -> y + x) 1) 2      -- add3 6 returns 3

`add3` doesn't care about input parameters, because both `x` and `y` are in scope of the function.

## First-class functions

Functions in Haskell are first-class, which means that they can be passed around like any other value. They can be
used as arguments to, and returned as values from, other functions.

Note that in Haskell functions are always evaluated before operators. This can be confusing when compared to other
programming languages:

    inc n = n + 1
    inc 2 * 3      -- result is 9

# Closures

Calling a function with fewer arguments than it accepts is called partial application. It results in a function with
those arguments in a closure

# Types

All types must

- Begin with an uppercase letter

## Type annotations

Type annotations are entirely optional -- the compiler will infer the correct type based on how a symbol is being used.
However, it's best practice to add type annotations to help humans infer what the code does, and to state your
assumptions about the types in the code so the compiler can warn about situations where what you think the code does and
what it actually does differ.

    add :: Int -> Int -> Int                -- Type annotation for a function taking two Ints and returning an Int
    add a b = a + b                         -- Definition of the function

If a type is ambiguous then it's possible to clarify the type by post-fixing a type annotation. This is most often
useful in the REPL where there is no context for the compiler to infer the correct type
    
    GHCi> read "6" :: Int
    6
   
    GHCi> read "6" :: Double
    6.0

The types for parameters which are higher-order functions can be specified by using braces to group the types:


    addN :: Int -> (Int -> Int)
    addN n = (+) n
    
    addFive = addN 5
    addFive 10                              -- 15

## Type variables

Type variables are specified using a lowercase letter

    concat :: List a -> List a -> List a
    
The function `concat` takes two lists which may contain items of any type and returns a single list containing items of
that type. The types must all be the same -- the type variable `a` refers to the same type throughout the signature.

## Type synonyms

Type synonyms are simple aliases for existing types

    type Name = String
    type AccountNumber = Int
    
These are simple ways to attach semantics to your data.

## Union types

Union types are types which can refer to one or 

    data Sex = Male | Female
    
The type definition creates two constructors (`Male` and `Female`) for creating instances of the `Sex` type.

## Record types

Record types are structures composed of other types.

    data Person = Person { name :: Name
                         , sex :: Sex
                         , accountNumber: AccountNumber }

## Tuples

Tuples in Haskell have `fst` and `snd` functions for accessing first and second element respectively.

## Lists

A list consists of a head, a tail, and an end. 

- The head is the first element in the list
- The tail is everything except the head
- The tail of a single element list is the end, which is represented by []

The head can be accessed using `head`, while the tail can be accessed using `tail`

    head [1, 2, 3]   -- 1
    tail [1, 2, 3]   -- [2, 3]
    tail [3]         -- []

Lists can be constructed using cons (":")

    1 : []             -- [1]
    1 : 2 : []         -- [1, 2]
    
Useful functions

    !!                 -- Get nth element, usually used infix
    length             -- Get the length
    reverse            -- Reverse a list
    elem               -- True if a list contains an element, false otherwise
    take               -- A list containing the first n items from the list
    drop               -- A list without the first n items from the list
    zip                -- Interleave two lists into a list of tuple pairs
    cycle              -- An infinite list created by appending this list to itself infinitely


