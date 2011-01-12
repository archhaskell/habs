# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=Hashell
pkgname=hashell
pkgver=1.0
pkgrel=3
pkgdesc="Simple shell written in Haskell"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-directory=1.0.1.1' 'haskell-haskell98=1.0.1.1' 'haskell-parsec=2.1.0.1' 'haskell-process=1.0.1.3' 'haskell-readline' 'haskell-regex-compat=0.93.1' 'haskell-unix=2.4.0.2')
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
md5sums=('cc5564dc11f2343e54eb52e209dcb470')
