Chapter goals:
* Understand the general idea of functional programming
* Define simple functions in Haskell
* Declare variables in Haskell
* Explain the benefits of functional programming

Functional programming liberates the computations from von Neumann's architecture constraints by describing the way to solve problems not how the computational steps.
Haskell is an implementation of the lambda calculus, which is a logic system developed by Church that represents everything as functions. 
Lambda calculus is a universal model of computation, equivalent to a Turing machine.

##### Function
```
function_name input_parameter1 input_parameter2 input_parameterN = result
```
Rules:
- function name needs to be lower case.
- all functions take at least one argument, but can take more if separated by space
- all functions **must** return something
- obeys **referential transparency**- anytime a function is called with teh same argument it needs to return the same value

Having **pure** functions with **no side effects** that obey the law of **referential transparency** means that Haskell is a safe programming language.

