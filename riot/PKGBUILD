# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=riot
pkgname=riot
pkgver=1.20080618
pkgrel=3
pkgdesc="Riot is an Information Organisation Tool"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-haskell98=1.0.1.1' 'haskell-mtl' 'haskell-old-locale=1.0.0.2' 'haskell-packedstring' 'haskell-process=1.0.1.3' 'haskell-unix=2.4.0.2' 'ncurses')
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
}
md5sums=('b00d79c8990a8134bc2ffffe8c1b361f')
