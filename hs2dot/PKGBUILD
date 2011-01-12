# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hs2dot
pkgname=hs2dot
pkgver=0.1.4
pkgrel=2
pkgdesc="Generate graphviz-code from Haskell-code."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:OtherLicense')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-directory=1.0.1.1' 'haskell-haskell-src=1.0.1.3' 'haskell-haskell-src-exts<2.0' 'haskell-haskell98=1.0.1.1' 'haskell-split>=0.1.2')
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
    install -D -m644 COPYING.txt ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
    rm -f ${pkgdir}/usr/share/doc/${pkgname}/LICENSE
}
md5sums=('040ec7562d59eb17f523a7d198122d3b')
