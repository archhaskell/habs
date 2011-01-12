# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=PTQ
pkgname=ptq
pkgver=0.0.5
pkgrel=3
pkgdesc="An implementation of Montague's PTQ."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('LGPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-containers=0.3.0.0' 'haskell-haskell98=1.0.1.1' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-utf8-string' 'haskell-xml')
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
md5sums=('bb558baaa495b1622dc4befbd90e4720')
