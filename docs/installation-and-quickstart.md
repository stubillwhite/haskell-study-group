# Installation and quickstart

# Installation on OSX

- `brew install stack`
- `brew install cabal-install`

# Running the fp-course tests

We're currently working through the [fp-course](https://github.com/data61/fp-course) from Tony Morris. To get up and
running, clone the project, then:

- `cabal update`
- `cabal install --only-dependencies --enable-tests`
- `cabal configure --enable-tests`
- `cabal build`
- `cabal test`
