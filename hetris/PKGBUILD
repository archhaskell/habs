# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hetris
pkgname=hetris
pkgver=0.2
pkgrel=3
pkgdesc="Text Tetris"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-array=0.3.0.1' 'haskell-hscurses>=1.3' 'haskell-old-time=1.0.0.5' 'haskell-random=1.0.0.2' 'ncurses')
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
md5sums=('c587e7b43d7936433e8bb7b1b543428c')
