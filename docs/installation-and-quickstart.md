# Installation and quickstart

# Installation on OSX

- `brew install stack`
- `brew install cabal-install`

# Running the REPL

- Start the REPL: `ghci`
- Exit the REPL: `:q`
- Load a file into the REPL: `:l hello.hs`
- Reload `:r` or `:reload`
- Enter multi-line mode `:set +m`

# Running the fp-course tests

We're currently working through the [fp-course](https://github.com/data61/fp-course) from Tony Morris. To get up and
running, clone the project, then:

- `cabal update`
- `cabal install --only-dependencies --enable-tests`
- `cabal configure --enable-tests`
- `cabal build`
- `cabal test`

## Running a single test suite or a single test

To run a single test suite, specify it as a pattern:

```cabal test tasty --show-detail=direct --test-option=--pattern="Tests.List."```

To run a single test, specify it as a pattern. Note that you should ensure that the pattern ends with a dot to avoid it being treated as a prefix and potentially matching other tests. For example, to run just the length test:

```cabal test tasty --show-detail=direct --test-option=--pattern="Tests.List.length."```
