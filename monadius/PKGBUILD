# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=Monadius
pkgname=monadius
pkgver=0.93
pkgrel=3
pkgdesc="2-D arcade scroller"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-glut=2.1.2.1' 'haskell-opengl=2.2.3.0' 'haskell-array=0.3.0.1' 'haskell-directory=1.0.1.1')
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
md5sums=('6c2c86c9e2ed118a60147d08f0c17ada')
