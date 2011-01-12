# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=only
pkgname=only
pkgver=0.0.6.0
pkgrel=3
pkgdesc="A grep-like tool for filtering on words or lines."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-parsec=2.1.0.1' 'haskell-regex-compat=0.93.1')
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
md5sums=('2c866a962edfa1267c9dc85c47cd45f3')
