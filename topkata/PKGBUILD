# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=topkata
pkgname=topkata
pkgver=0.2.3
pkgrel=3
pkgdesc="OpenGL Arcade Game"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-alut' 'haskell-glut=2.1.2.1' 'haskell-openal' 'haskell-opengl=2.2.3.0' 'haskell-array=0.3.0.1' 'haskell-filepath=1.1.0.4' 'haskell-random=1.0.0.2')
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
md5sums=('37d25f677f70c875d4d2dabf2b6ab6c5')
