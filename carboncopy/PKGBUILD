# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=carboncopy
pkgname=carboncopy
pkgver=0.1
pkgrel=2
pkgdesc="Drop emails from threads being watched into special CC folder."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-ifelse>=0.85' 'haskell-missingh>=1.1.0.1' 'haskell-bytestring=0.9.1.7' 'haskell-filepath=1.1.0.4' 'haskell-haskell98=1.0.1.1')
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
md5sums=('2c05b8ccdb8f98a3e63835533efefd19')
