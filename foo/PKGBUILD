# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=foo
pkgname=foo
pkgver=1.0
pkgrel=3
pkgdesc="Paper soccer, an OpenGL game."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-glut=2.1.2.1' 'haskell-opengl=2.2.3.0' 'haskell-containers=0.3.0.0' 'haskell-haskell98=1.0.1.1')
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
md5sums=('1dbe5ca46dbdf78b375ef6034dfed7d1')
