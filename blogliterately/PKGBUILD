# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=BlogLiterately
pkgname=blogliterately
pkgver=0.3
pkgrel=2
pkgdesc="A tool for posting Haskelly articles to blogs"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-haxml<1.21' 'haskell-cmdargs<0.2' 'haskell-haskell98=1.0.1.1' 'haskell-haxr<3000.6' 'hscolour<1.17' 'haskell-pandoc<1.6' 'haskell-parsec=2.1.0.1' 'haskell-utf8-string<0.4' 'haskell-xhtml=3000.2.0.1')
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
md5sums=('bcb77e8d5ba55b9e2523d4b0253b66ff')
