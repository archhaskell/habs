# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=cabal2spec
pkgname=cabal2spec
pkgver=1.0
pkgrel=3
pkgdesc="Generates RPM Spec files from cabal files"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-cabal=1.8.0.6' 'haskell-unixutils' 'haskell-bytestring=0.9.1.7' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-haskell98=1.0.1.1' 'haskell-old-locale=1.0.0.2' 'haskell-process=1.0.1.3' 'haskell-tar' 'haskell-time=1.1.4' 'haskell-unix=2.4.0.2' 'haskell-zlib=0.5.2.0')
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
md5sums=('b1a7cae633a05b092f77a56845a5a348')
