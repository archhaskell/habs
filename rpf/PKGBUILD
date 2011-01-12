# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=rpf
pkgname=rpf
pkgver=0.2.2
pkgrel=2
pkgdesc="Receiver Policy Framework"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-appar' 'haskell-bytestring=0.9.1.7' 'haskell-c10k' 'haskell-containers=0.3.0.0' 'haskell-dns' 'haskell-domain-auth' 'haskell-hdaemonize' 'haskell-hslogger' 'haskell-iproute' 'haskell-parsec=2.1.0.1')
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
md5sums=('96f4927b0bfc3f6e9043415691879ef3')
