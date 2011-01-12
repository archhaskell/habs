# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=xsact
pkgname=xsact
pkgver=1.7.3
pkgrel=2
pkgdesc="Cluster EST sequences"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-array=0.3.0.1' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-process=1.0.1.3' 'haskell-random=1.0.0.2' 'haskell-unix=2.4.0.2')
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
md5sums=('ed6cfe64da6d81c19349b26918eb7c06')
