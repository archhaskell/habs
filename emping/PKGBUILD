# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=Emping
pkgname=emping
pkgver=0.6
pkgrel=3
pkgdesc="derives heuristic rules from nominal data"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-array=0.3.0.1' 'haskell-containers=0.3.0.0' 'haskell-fgl=5.4.2.3' 'haskell-gtk' 'haskell-mtl' 'haskell-parsec=2.1.0.1')
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
md5sums=('10f1f45aa21c142e6e61dff37cdafbe0')
