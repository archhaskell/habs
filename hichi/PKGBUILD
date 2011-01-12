# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hichi
pkgname=hichi
pkgver=0.0.1
pkgrel=3
pkgdesc="haskell robot for IChat protocol"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-array=0.3.0.1' 'haskell-bytestring=0.9.1.7' 'haskell-mtl' 'haskell-network=2.2.1.7')
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
md5sums=('ecfa42104adaf7b279127b495d952958')
