# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hfractal
pkgname=hfractal
pkgver=0.4.2.2
pkgrel=2
pkgdesc="OpenGL fractal renderer"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-glut' 'haskell-opengl' 'haskell-openglraw<1.1.0.0' 'haskell-array=0.3.0.1' 'haskell-colour>=2.3.1' 'haskell-containers=0.3.0.0' 'haskell-data-accessor>=0.2' 'haskell-data-accessor-template>=0.2' 'haskell-gd<3000.3.0')
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
md5sums=('22049a7f31c5c1756c252c514c8720a3')
