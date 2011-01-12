# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=afv
pkgname=afv
pkgver=0.1.1
pkgrel=2
pkgdesc="Infinite state model checking of iterative C programs."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bytestring=0.9.1.7' 'haskell-directory=1.0.1.1' 'haskell-language-c>=0.3.1.1' 'haskell-mtl<1.2' 'haskell-process=1.0.1.3' 'haskell-yices>=0.0.0.6')
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
md5sums=('80b01cff2cfe996ccb19faba93ef5b92')
