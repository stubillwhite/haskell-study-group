### Getting started with tools

To get started download and install the Haskell Platform from www.haskell.org/downloads#platform. 

The Haskell Platform includes the following:

* The Glasgow Haskell Compiler (GHC)
* Interactive interpreter (GHCi)
* The stack tool for managing Haskell projects
* A bunch of useful Haskell packages


##### The Glasgow Haskell Compiler (GHC)
To compile a file type:
```ghc hello.hs```

The output is:
* hello
* hello.hi
* hello.o

// TODO: find out what those files are.

To Execute a file, run:
```./hello```


##### Interactive interpreter (GHCi)
To start the REPL, type:
```ghci```

`:q` to quit

`:l hello.hs` to load file into the REPL

`:r` or `:reload` to reload

`:set +m` multiline