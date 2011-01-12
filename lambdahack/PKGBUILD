# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=LambdaHack
pkgname=lambdahack
pkgver=0.1.20090606
pkgrel=3
pkgdesc="a small roguelike game"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-binary<1' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-gtk<0.11' 'haskell-mtl<2' 'haskell-random=1.0.0.2' 'haskell-zlib=0.5.2.0')
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
md5sums=('aca1560fe10f46dc7af5865018be2428')
