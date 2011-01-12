# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=yst
pkgname=yst
pkgver=0.2.3.2
pkgrel=2
pkgdesc="Builds a static website from templates and data in YAML or CSV files."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-hstringtemplate>=0.6.1' 'haskell-hssyck' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-csv' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-old-locale=1.0.0.2' 'haskell-old-time=1.0.0.5' 'haskell-pandoc' 'haskell-parsec=2.1.0.1' 'haskell-split' 'haskell-time=1.1.4' 'haskell-utf8-string' 'haskell-xhtml=3000.2.0.1')
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
md5sums=('4e0536f3207313280d0b01543c0f08b5')
