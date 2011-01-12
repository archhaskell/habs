# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=lhae
pkgname=lhae
pkgver=0.0.3
pkgrel=2
pkgdesc="Simple spreadsheet program"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-array=0.3.0.1' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-hgettext<1.0' 'haskell-mtl<2.0' 'haskell-parsec=2.1.0.1' 'haskell-process=1.0.1.3' 'haskell-setlocale<1.0' 'haskell-utf8-string<1.0' 'haskell-wx<1.0' 'haskell-wxcore<1.0')
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
}
md5sums=('4f2e1c2e26241bb0fb5afc09c61d83e3')
