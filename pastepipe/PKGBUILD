# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=PastePipe
pkgname=pastepipe
pkgver=1.3
pkgrel=3
pkgdesc="CLI for pasting to hpaste.org"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-http=4000.0.9' 'haskell-cmdargs' 'haskell-network=2.2.1.7')
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
md5sums=('5a28120e305cf80f05385269f0866073')
