# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hircules
pkgname=hircules
pkgver=0.4.1
pkgrel=2
pkgdesc="IRC client"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-gtk>=0.11.0' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-old-locale=1.0.0.2' 'haskell-old-time=1.0.0.5' 'haskell-time=1.1.4' 'haskell-utf8-string')
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
md5sums=('2f961b0c1f2abe1a080eba010cb17507')
