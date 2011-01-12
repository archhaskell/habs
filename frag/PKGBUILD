# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=frag
pkgname=frag
pkgver=1.1.2
pkgrel=3
pkgdesc="A 3-D First Person Shooter Game"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-glut=2.1.2.1' 'haskell-opengl=2.2.3.0' 'haskell-array=0.3.0.1' 'haskell-random=1.0.0.2')
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
md5sums=('379bc7f850e1a1177651a35af6f15b63')
