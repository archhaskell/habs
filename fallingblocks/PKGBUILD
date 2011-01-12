# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=fallingblocks
pkgname=fallingblocks
pkgver=0.1.4
pkgrel=3
pkgdesc="A fun falling blocks game."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-sdl=0.5.4' 'haskell-sdl-mixer>=0.5.5' 'haskell-sdl-ttf' 'haskell-containers=0.3.0.0' 'haskell-haskell98=1.0.1.1')
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
md5sums=('3c71afc9ea2c25e289dfa9c772d91e57')
