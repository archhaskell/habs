# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=YACPong
pkgname=yacpong
pkgver=0.1
pkgrel=2
pkgdesc="Yet Another Pong Clone using SDL."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:MIT')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-sdl' 'haskell-sdl-image' 'haskell-sdl-mixer' 'haskell-sdl-ttf' 'haskell-data-accessor-transformers' 'haskell-fclabels' 'haskell-monads-fd' 'haskell-random=1.0.0.2' 'haskell-transformers')
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
    install -D -m644 LICENSE ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
    rm -f ${pkgdir}/usr/share/doc/${pkgname}/LICENSE
}
md5sums=('71e83be84c6cb4ba196c254d53349d2c')
