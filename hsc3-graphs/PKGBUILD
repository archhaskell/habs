# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hsc3-graphs
pkgname=hsc3-graphs
pkgver=0.8
pkgrel=2
pkgdesc="Haskell SuperCollider Graphs"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-array=0.3.0.1' 'haskell-hosc=0.8' 'haskell-hsc3=0.8' 'haskell-hsc3-sf=0.8' 'haskell-process=1.0.1.3' 'haskell-random=1.0.0.2')
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
md5sums=('22101e6ab5a0eb069816b3d9399369ed')
