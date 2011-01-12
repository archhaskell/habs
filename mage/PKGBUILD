# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=mage
pkgname=mage
pkgver=1.1.0
pkgrel=3
pkgdesc="Rogue-like"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-array=0.3.0.1' 'haskell-containers=0.3.0.0' 'haskell-mtl' 'haskell-random=1.0.0.2' 'ncurses')
depends=('gmp' 'ncurses')
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
    install -D -m644 LICENSE ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
    rm -f ${pkgdir}/usr/share/doc/${pkgname}/LICENSE
}
md5sums=('1f8f5f45cba875b0486cc48c4ae55fde')
