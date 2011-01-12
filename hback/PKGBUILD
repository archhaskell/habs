# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hback
pkgname=hback
pkgver=0.0.3
pkgrel=3
pkgdesc="N-back memory game"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-cairo' 'haskell-filepath=1.1.0.4' 'haskell-glade' 'haskell-gtk' 'haskell-haskell98=1.0.1.1' 'haskell-process=1.0.1.3' 'haskell-svgcairo' 'haskell-time=1.1.4' 'haskell-unix=2.4.0.2')
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
md5sums=('677073a2ede7e9fb69d93c5c95a41300')
