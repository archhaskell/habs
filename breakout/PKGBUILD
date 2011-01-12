# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=breakout
pkgname=breakout
pkgver=0.0.2
pkgrel=3
pkgdesc="A simple Breakout game implementation."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-sdl' 'haskell-haskgame>=0.0.6' 'haskell-mtl')
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
md5sums=('b677a8c24775aab3f952d75c7d2b7f2d')
