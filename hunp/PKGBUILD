# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hunp
pkgname=hunp
pkgver=0.1
pkgrel=3
pkgdesc="Unpacker tool with DWIM"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bytestring=0.9.1.7' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-monads-fd<1' 'haskell-parsec' 'haskell-pcre-light<1' 'haskell-process=1.0.1.3' 'haskell-split<2')
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
md5sums=('a979c90249c87fed7dc43b88022eb882')
