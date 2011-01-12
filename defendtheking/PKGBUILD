# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=DefendTheKing
pkgname=defendtheking
pkgver=0.2.1
pkgrel=3
pkgdesc="A simple RTS game"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-glut=2.1.2.1' 'haskell-http=4000.0.9' 'haskell-maybet' 'haskell-binary' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-haskell98=1.0.1.1' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-peakachu>=0.2' 'haskell-random=1.0.0.2' 'haskell-time=1.1.4' 'haskell-utility-ht' 'haskell-zlib=0.5.2.0')
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
md5sums=('7054593531a3c5029541814e104ae712')
