# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=flower
pkgname=flower
pkgver=0.6.3
pkgrel=2
pkgdesc="Analyze 454 flowgrams  (.SFF files)"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-array=0.3.0.1' 'haskell-binary<0.5' 'haskell-bio>=0.4.8' 'haskell-bytestring=0.9.1.7' 'haskell-cmdargs>=0.5' 'haskell-containers=0.3.0.0' 'haskell-mtl' 'haskell-random=1.0.0.2')
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
md5sums=('84641751f74ff534911d2ab70170323b')
