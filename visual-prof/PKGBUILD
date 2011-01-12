# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=visual-prof
pkgname=visual-prof
pkgver=0.1
pkgrel=2
pkgdesc="Create a visual profile of a program's source code"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-haskell-src-exts' 'haskell-mtl' 'haskell-parsec=2.1.0.1' 'haskell-pretty=1.0.1.1' 'haskell-process=1.0.1.3' 'haskell-regexpr' 'haskell-uniplate')
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
md5sums=('01d03f769fa232e460eca288774f00fd')
