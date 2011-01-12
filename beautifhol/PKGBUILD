# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=beautifHOL
pkgname=beautifhol
pkgver=0.11
pkgrel=3
pkgdesc="A pretty-printer for higher-order logic"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-array=0.3.0.1' 'haskell-haskell98=1.0.1.1' 'haskell-mtl')
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
md5sums=('f38b4dbb4fb3cb79ad1153b05d9b34f5')
