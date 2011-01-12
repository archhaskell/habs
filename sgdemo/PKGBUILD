# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=SGdemo
pkgname=sgdemo
pkgver=1.1
pkgrel=3
pkgdesc="An example of using the SG and OpenGL libraries"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-glut' 'haskell-opengl' 'haskell-sg')
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
md5sums=('a009f7e1d50774164e7171727f16585b')
