#! /bin/bash

# modify the relver of ghc, this saves on recompilations of cblrepo

for f in $*; do
  sed -e 's/ghc=7\.10\.3-2/ghc=7.10.3-3/' -i $f
done
