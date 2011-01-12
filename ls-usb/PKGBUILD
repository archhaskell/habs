# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=ls-usb
pkgname=ls-usb
pkgver=0.1.0.7
pkgrel=2
pkgdesc="List USB devices"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-ansi-wl-pprint<0.6' 'haskell-base-unicode-symbols<0.3' 'haskell-bytestring=0.9.1.7' 'haskell-cmdargs<0.4' 'haskell-usb<0.7' 'haskell-usb-id-database<0.5' 'haskell-usb-safe<0.12')
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
md5sums=('c4250acedb2f4b75c46a2024982f52cc')
