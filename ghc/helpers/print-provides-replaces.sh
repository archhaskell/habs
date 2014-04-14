#!/bin/bash

top_pkg_dir=.
func="pkgbuild"

usage () {
    cat << EOF
Usage: $0 [options]

Run this script to generate provides/replaces defintions for PKGBUILD, or the
GhcPkg arguments for cblrepo.

Options:
-h          This help
-d          Dir of pkg (default is '.')
-f          Function, either 'pkgbuild' (default) or 'cblrepo'
EOF
}

while getopts hd:f: opt; do
    case "${opt}" in
        (h) usage; exit 0;;
        (d) top_pkg_dir=${OPTARG};;
        (f) func=${OPTARG} ;;
    esac
done
shift $((OPTIND - 1))

. ${top_pkg_dir}/PKGBUILD

if [[ ! -d ${top_pkg_dir}/src/ghc/libraries ]]; then
    echo "error: no directory ${top_pkg_dir}/src/ghc/libraries:" \
        "You must extract the source tarball under src/"
    exit 1
fi

declare -A exclude
# no Win32 cause we're not building on windows
exclude['Win32']=1
# no integer-simple because we use integer-gmp
exclude['integer-simple']=1
exclude['haskeline']=1
exclude['primitive']=1
exclude['random']=1
exclude['terminfo']=1
exclude['vector']=1
exclude['xhtml']=1
# extract excluded libraries from ghc.mk
for exclude_pkg in $(sed 's/PKGS_THAT_ARE_INTREE_ONLY := //p' \
        -n ${top_pkg_dir}/src/ghc/ghc.mk); do
    exclude[${exclude_pkg}]=1
done

cd ${top_pkg_dir}/src/ghc/libraries

# $1 is the name of the variable
# $2 is the string for the test, either '=' or '<'
print_var() {
    printf "    $1=("
    for pkg in $(ls ./*/*.cabal | awk -F '/' '{ print $2 }'); do
        [[ ${exclude[${pkg}]} ]] && continue
        version=$(awk 'tolower($0) ~ /^version:/ {print $2 }' $pkg/$pkg.cabal)
        printf "'haskell-$pkg$2$version'\n              "
    done
    # also add cabal
    version=$(awk 'tolower($0) ~ /^version:/ { print $2 }' Cabal/Cabal/Cabal.cabal)
    printf "'haskell-cabal$2$version')\n"
}

print_cbl() {
    for pkg in $(ls ./*/*.cabal | awk -F '/' '{ print $2 }'); do
        [[ ${exclude[${pkg}]} ]] && continue
        version=$(awk 'tolower($0) ~ /^version:/ {print $2 }' $pkg/$pkg.cabal)
        printf "%s,%s\n" $pkg $version
    done
    # also add Cabal
    version=$(awk 'tolower($0) ~ /^version:/ { print $2 }' Cabal/Cabal/Cabal.cabal)
    printf "Cabal,%s\n" $version
}

case ${func} in
    ("pkgbuild")
        print_var 'provides' '='
        print_var 'replaces' '<'
        ;;
    ("cblrepo")
        print_cbl
        ;;
    (*)
        echo "error: no function"
        exit 1
        ;;
esac
