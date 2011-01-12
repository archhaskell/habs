# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=darcs-graph
pkgname=darcs-graph
pkgver=1.0
pkgrel=3
pkgdesc="Generate graphs of darcs repository activity"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-old-locale=1.0.0.2' 'haskell-old-time=1.0.0.5' 'haskell-process=1.0.1.3' 'haskell-time=1.1.4')
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
md5sums=('86008649edef15f1014d3b0c67164d40')
