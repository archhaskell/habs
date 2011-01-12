# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=scons2dot
pkgname=scons2dot
pkgver=0.9
pkgrel=2
pkgdesc="Generates graphviz file of scons dependency information"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-process=1.0.1.3')
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
md5sums=('32f1c02af18f27700b112b3e3c562856')
