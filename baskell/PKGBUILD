# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=baskell
pkgname=baskell
pkgver=0.1.1
pkgrel=3
pkgdesc="An interpreter for a small functional language"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-containers=0.3.0.0' 'haskell-mtl' 'haskell-parsec=2.1.0.1' 'haskell-pretty=1.0.1.1' 'haskell-unix=2.4.0.2')
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
md5sums=('097810cbcf5d2900ef5513e764ec7b93')
