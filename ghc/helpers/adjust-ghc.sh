#! /bin/bash

# modify the relver of ghc, this saves on recompilations of cblrepo

for f in $*; do
  sed -e 's/ghc=7\.10\.3-1/ghc=7.10.3-2/' -i $f
done
