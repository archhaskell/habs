#! /bin/bash

# modify the relver of ghc, this saves on recompilations of cblrepo

for f in $*; do
  sed -e 's/ghc=8\.0\.1-1/ghc=8.0.2-1/' -i $f
done
