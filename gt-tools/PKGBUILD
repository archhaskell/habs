# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=gt-tools
pkgname=gt-tools
pkgver=0.1.4.1
pkgrel=2
pkgdesc="Console and GUI interface for Google Translate service"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-http=4000.0.9' 'haskell-containers=0.3.0.0' 'haskell-haskeline' 'haskell-json' 'haskell-mtl' 'haskell-unix=2.4.0.2' 'haskell-url' 'haskell-utf8-string>=0.3.6')
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
md5sums=('c22c7a11b5ae1786448029e295085a26')
