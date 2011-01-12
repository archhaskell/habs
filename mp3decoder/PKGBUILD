# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=mp3decoder
pkgname=mp3decoder
pkgver=0.0.1
pkgrel=3
pkgdesc="MP3 decoder for teaching."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:OtherLicense')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-binary-strict' 'haskell-bytestring=0.9.1.7' 'haskell-haskell98=1.0.1.1' 'haskell-mtl')
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
md5sums=('44fc3feb2ab8d7f4024edf184cc4bfc9')
