# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=haskeem
pkgname=haskeem
pkgver=0.7.16
pkgrel=2
pkgdesc="A small scheme interpreter"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-haskeline' 'haskell-haskell98=1.0.1.1' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-old-time=1.0.0.5' 'haskell-parsec=2.1.0.1' 'haskell-process=1.0.1.3' 'haskell-random=1.0.0.2' 'haskell-unix=2.4.0.2')
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
md5sums=('9c3f13a002f48457d068da3232f8219f')
