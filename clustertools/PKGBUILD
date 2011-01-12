# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=clustertools
pkgname=clustertools
pkgver=0.1.2
pkgrel=3
pkgdesc="Tools for manipulating sequence clusters"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-quickcheck=2.1.1.1' 'haskell-bio>=0.3.3.4' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-haskell98=1.0.1.1' 'haskell-regex-compat=0.93.1' 'haskell-simpleargs>=0.1')
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
md5sums=('b4dfad3b01e74eeaf42825cc89975eaf')
