# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hevolisa-dph
pkgname=hevolisa-dph
pkgver=0.0.1
pkgrel=3
pkgdesc="Genetic Mona Lisa problem in Haskell - using Data Parallel Haskell"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bytestring=0.9.1.7' 'haskell-cairo>=0.9.13' 'haskell-filepath=1.1.0.4' 'haskell-haskell98=1.0.1.1')
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
md5sums=('0e98df7dbaf820423e678424d4a4c5e6')
