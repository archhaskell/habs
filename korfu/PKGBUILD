# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=korfu
pkgname=korfu
pkgver=0.2
pkgrel=2
pkgdesc="The Korfu ORF Utility"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bio>=0.4' 'haskell-bytestring=0.9.1.7' 'haskell-haskell98=1.0.1.1' 'haskell-simpleargs')
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
md5sums=('ad85dd0a53ca95c6b92101e06b413ab4')
