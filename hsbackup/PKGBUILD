# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hsbackup
pkgname=hsbackup
pkgver=0.1.1
pkgrel=2
pkgdesc="simple utility for rolling filesystem backups"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bytestring=0.9.1.7' 'haskell-cmdargs' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-hashed-storage' 'haskell-old-locale=1.0.0.2' 'haskell-strict' 'haskell-time=1.1.4')
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
md5sums=('d1b2954c48cc477a02daebb3e03747f4')
