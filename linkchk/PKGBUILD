# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=linkchk
pkgname=linkchk
pkgver=0.0.2
pkgrel=3
pkgdesc="linkchk is a network interface link ping monitor."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-gtk' 'haskell-haskell98=1.0.1.1' 'haskell-popenhs' 'haskell-regex-compat=0.93.1' 'haskell-unix=2.4.0.2')
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
md5sums=('5ca3fbaa5e1f69edd72fdd54540d36cc')
