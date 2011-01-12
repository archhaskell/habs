# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=memscript
pkgname=memscript
pkgver=0.0.1.0
pkgrel=2
pkgdesc="Command line utility for memorizing scriptures or any other text"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-haskell98=1.0.1.1' 'haskell-readline' 'haskell-utf8-string')
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
md5sums=('38ee2ec266f4c70543891dc72ee3d0fb')
