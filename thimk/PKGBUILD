# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=thimk
pkgname=thimk
pkgver=0.3.1
pkgrel=2
pkgdesc="Command-line spelling word suggestion tool"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-edit-distance>=0.1' 'haskell-parseargs>=0.1.1' 'haskell-phonetic-code>=0.1' 'haskell-sqlite>=0.5.1')
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
    install -D -m644 COPYING ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
    rm -f ${pkgdir}/usr/share/doc/${pkgname}/LICENSE
}
md5sums=('a6bfd0bfb3bfae6dc810c7627591a0b5')
