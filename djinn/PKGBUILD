# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=djinn
pkgname=djinn
pkgver=2009.9.3
pkgrel=3
pkgdesc="Generate Haskell code from a type"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-array=0.3.0.1' 'haskell-containers=0.3.0.0' 'haskell-editline' 'haskell-mtl' 'haskell-pretty=1.0.1.1')
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
md5sums=('0ee92a78d3829e728ffd9067c82c79ed')
