# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=htar
pkgname=htar
pkgver=0.3.1
pkgrel=3
pkgdesc="Command-line tar archive utility."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bytestring=0.9.1.7' 'haskell-bzlib<0.6' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-old-locale=1.0.0.2' 'haskell-old-time=1.0.0.5' 'haskell-tar<0.4' 'haskell-zlib=0.5.2.0')
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
md5sums=('45f5d2761a79f6df6cf1da8f4415e773')
