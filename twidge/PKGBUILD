# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=twidge
pkgname=twidge
pkgver=1.0.6.1
pkgrel=2
pkgdesc="Unix Command-Line Twitter and Identica Client"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-configfile' 'haskell-hsh' 'haskell-haxml<1.19' 'haskell-missingh>=1.0.0' 'haskell-binary' 'haskell-bytestring=0.9.1.7' 'haskell-curl' 'haskell-directory=1.0.1.1' 'haskell-hoauth<0.2.4' 'haskell-hslogger' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-parsec=2.1.0.1' 'haskell-regex-posix=0.94.2' 'haskell-unix=2.4.0.2' 'haskell-utf8-string')
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
md5sums=('96cc4e52cf787f6de77cff66ae40ca41')
