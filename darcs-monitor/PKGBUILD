# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=darcs-monitor
pkgname=darcs-monitor
pkgver=0.4.0
pkgrel=2
pkgdesc="Darcs repository monitor (sends email)"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-haxml<1.14' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-mtl' 'haskell-process=1.0.1.3')
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
md5sums=('898412ceb85ab409d6edd15e9fe967c9')
