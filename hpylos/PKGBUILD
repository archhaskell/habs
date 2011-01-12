# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hpylos
pkgname=hpylos
pkgver=1.0
pkgrel=3
pkgdesc="AI of Pylos game with GLUT interface."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-eeconfig' 'haskell-glut=2.1.2.1' 'haskell-opengl=2.2.3.0' 'haskell-array=0.3.0.1' 'haskell-containers=0.3.0.0')
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
md5sums=('3542b6469651849e95b88ef38dae3153')
