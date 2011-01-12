# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=Flippi
pkgname=flippi
pkgver=0.0.5
pkgrel=3
pkgdesc="Wiki"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-cgi=3001.1.7.3' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-haskell98=1.0.1.1' 'haskell-old-time=1.0.0.5' 'haskell-parsec=2.1.0.1' 'haskell-xhtml=3000.2.0.1')
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
md5sums=('9e320453a6a9bd89053a09aa8cb9d0a2')
