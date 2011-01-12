# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=nehe-tuts
pkgname=nehe-tuts
pkgver=0.1.1
pkgrel=3
pkgdesc="Port of the NeHe OpenGL tutorials to Haskell."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-glut=2.1.2.1' 'haskell-opengl=2.2.3.0' 'haskell-array=0.3.0.1' 'haskell-haskell98=1.0.1.1')
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
    install -D -m644 LICENSE ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
    rm -f ${pkgdir}/usr/share/doc/${pkgname}/LICENSE
}
md5sums=('6ef6a45d07cbd11b4418635c458fb165')
