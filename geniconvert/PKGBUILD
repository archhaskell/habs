# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=geniconvert
pkgname=geniconvert
pkgver=0.20
pkgrel=3
pkgdesc="Conversion utility for the GenI generator"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-geni<0.21' 'haskell-hunit=1.2.2.1' 'haskell-haxml>=1.16' 'haskell-quickcheck=2.1.1.1' 'haskell-binary' 'haskell-containers=0.3.0.0' 'haskell-haskell98=1.0.1.1' 'haskell-mtl' 'haskell-parsec=2.1.0.1' 'haskell-utf8-string<0.4')
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
md5sums=('08f1ce6d1af20f4c027669cef7d8e128')
