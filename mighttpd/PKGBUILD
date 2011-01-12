# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=mighttpd
pkgname=mighttpd
pkgver=0.4.2
pkgrel=2
pkgdesc="Simple Web Server in Haskell"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bytestring=0.9.1.7' 'haskell-c10k' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-haskell98=1.0.1.1' 'haskell-hdaemonize' 'haskell-hslogger' 'haskell-network=2.2.1.7' 'haskell-parsec=2.1.0.1' 'haskell-time=1.1.4' 'haskell-unix=2.4.0.2' 'haskell-webserver')
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
md5sums=('3e87eb31111d75e24ede266950bac1fb')
