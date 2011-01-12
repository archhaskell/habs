# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=haltavista
pkgname=haltavista
pkgver=0.1.0.1
pkgrel=2
pkgdesc="looks for functions given a set of example input/outputs"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL-2')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-hint>=0.3.2.3' 'haskell-process=1.0.1.3')
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
md5sums=('cc4f5af27d9db08f0aab4e8a4725dd38')
