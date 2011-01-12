# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=husky
pkgname=husky
pkgver=0.4
pkgrel=3
pkgdesc="A simple command line calculator."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-containers=0.3.0.0' 'haskell-mtl>=1.1.0.0' 'haskell-old-locale=1.0.0.2' 'haskell-parsec=2.1.0.1' 'haskell-readline>=1.0.1.0' 'haskell-time=1.1.4')
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
md5sums=('ccb7b05cc3e11d495f5b9fa26396f87e')
