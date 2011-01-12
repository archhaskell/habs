# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=iyql
pkgname=iyql
pkgver=0.0.7
pkgrel=2
pkgdesc="CLI (command line interface) to YQL"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL-3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-binary>=0.5.0.2' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-haskeline>=0.6.2.2' 'haskell-haskell98=1.0.1.1' 'haskell-hoauth>=0.3.1' 'haskell-mtl>=1.1.0.2' 'haskell-old-locale=1.0.0.2' 'haskell-parsec=2.1.0.1' 'haskell-time=1.1.4' 'haskell-utf8-string>=0.3.6' 'haskell-xml>=1.3.7')
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
md5sums=('29447a39dfcd0456c5ea3c09c7dc7a1f')
