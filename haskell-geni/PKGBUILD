# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=GenI
pkgname=haskell-geni
pkgver=0.20.2
pkgrel=4
pkgdesc="A natural language generator (specifically, an FB-LTAG surface realiser)"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-hunit=1.2.2.1' 'haskell-quickcheck' 'haskell-binary<0.6' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-json<0.5' 'haskell-mtl<1.2' 'haskell-parallel' 'haskell-parsec=2.1.0.1' 'haskell-process=1.0.1.3' 'haskell-split<0.2' 'haskell-test-framework<0.3' 'haskell-test-framework-hunit<0.3' 'haskell-test-framework-quickcheck<0.3' 'haskell-uniplate<1.3' 'haskell-utf8-string<0.4')
options=('strip')
source=(http://hackage.haskell.org/packages/archive/${_hkgname}/${pkgver}/${_hkgname}-${pkgver}.tar.gz)
install=${pkgname}.install
build() {
    cd ${srcdir}/${_hkgname}-${pkgver}
    runhaskell Setup configure -O --enable-split-objs --enable-shared \
       --prefix=/usr --docdir=/usr/share/doc/${pkgname} --libsubdir=\$compiler/site-local/\$pkgid
    runhaskell Setup build
    runhaskell Setup haddock
    runhaskell Setup register   --gen-script
    runhaskell Setup unregister --gen-script
    sed -i -r -e "s|ghc-pkg.*unregister[^ ]* |&'--force' |" unregister.sh
}
package() {
    cd ${srcdir}/${_hkgname}-${pkgver}
    install -D -m744 register.sh   ${pkgdir}/usr/share/haskell/${pkgname}/register.sh
    install    -m744 unregister.sh ${pkgdir}/usr/share/haskell/${pkgname}/unregister.sh
    install -d -m755 ${pkgdir}/usr/share/doc/ghc/html/libraries
    ln -s /usr/share/doc/${pkgname}/html ${pkgdir}/usr/share/doc/ghc/html/libraries/${_hkgname}
    runhaskell Setup copy --destdir=${pkgdir}
}
md5sums=('0cc5bfde0a2dd1e0326820e3c7ff8529')
