# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=mines
pkgname=mines
pkgver=0.1
pkgrel=3
pkgdesc="Minesweeper simulation using neural networks"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:OtherLicense')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-directory=1.0.1.1' 'haskell-mtl>=1.1.0.0' 'haskell-random=1.0.0.2')
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
md5sums=('78fd1506e2b75c3e800c785cf8465013')
