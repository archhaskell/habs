# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=Haskelloids
pkgname=haskelloids
pkgver=0.1.1
pkgrel=2
pkgdesc="A reproduction of the Atari 1979 classic \"Asteroids\""
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-hgl<4' 'haskell-monadrandom<0.2' 'haskell-yampa<1' 'haskell-containers=0.3.0.0' 'haskell-hmatrix<1' 'haskell-random=1.0.0.2')
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
md5sums=('116c457a0559ad4b1ad7805400a53999')
