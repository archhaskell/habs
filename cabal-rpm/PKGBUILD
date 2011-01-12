# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=cabal-rpm
pkgname=cabal-rpm
pkgver=0.5.1
pkgrel=3
pkgdesc="RPM package builder for Haskell Cabal source packages."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-cabal' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-old-locale=1.0.0.2' 'haskell-process=1.0.1.3' 'haskell-time=1.1.4' 'haskell-unix=2.4.0.2')
depends=('gmp')
options=('strip')
source=(http://hackage.haskell.org/packages/archive/${_hkgname}/${pkgver}/${_hkgname}-${pkgver}.tar.gz)
build() {
    cd ${srcdir}/${_hkgname}-${pkgver}
    runhaskell Setup configure --prefix=/usr --docdir=/usr/share/doc/${pkgname} -O
    runhaskell Setup build
}
package() {
    cd ${srcdir}/${_hkgname}-${pkgver}
    runhaskell Setup copy --destdir=${pkgdir}
}
md5sums=('cc5444c235c2e3ba01aba0c981c7830e')
