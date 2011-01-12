# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=babylon
pkgname=babylon
pkgver=0.2
pkgrel=2
pkgdesc="An implementation of a simple 2-player board game"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-array=0.3.0.1' 'haskell-containers=0.3.0.0' 'haskell-haskell98=1.0.1.1' 'haskell-wx>=0.11' 'haskell-wxcore>=0.11')
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
md5sums=('13a53821b1ebcc0d26afb0e9736f1179')
