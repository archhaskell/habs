#! /bin/bash

# modify the relver of ghc, this saves on recompilations of cblrepo

for f in $*; do
  sed -e 's/ghc=7\.6\.3-1/ghc=7.8.0-0.2/' -i $f
  sed -e 's/--enable-split-objs//' -i $f
done
