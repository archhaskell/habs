#! /bin/bash

# modify the relver of ghc, this saves on recompilations of cblrepo

for f in $*; do
  sed -e 's/\(.*\)ghc=7\.4\.1-1\(.*\)/\1ghc=7.4.1-6\2/' -i $f
done
