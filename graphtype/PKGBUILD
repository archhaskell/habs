# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=graphtype
pkgname=graphtype
pkgver=0.2.0
pkgrel=2
pkgdesc="A simple tool to illustrate dependencies between Haskell types"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-containers=0.3.0.0' 'haskell-dotgen>=0.4.1' 'haskell-haskell-src-exts' 'haskell-haskell98=1.0.1.1' 'haskell-uniplate')
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
md5sums=('f833f3f9b495c5e52388369d133539cb')
