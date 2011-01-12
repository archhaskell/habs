# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=HPong
pkgname=hpong
pkgver=0.1.2
pkgrel=3
pkgdesc="A simple OpenGL Pong game based on GLFW"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-glfw' 'haskell-opengl=2.2.3.0' 'haskell-data-accessor' 'haskell-data-accessor-template')
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
md5sums=('5dfdfd1844819bcda1c14c9708f14cd7')
