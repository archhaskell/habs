# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=darcswatch
pkgname=darcswatch
pkgver=0.4.3
pkgrel=2
pkgdesc="Track application of Darcs patches"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-crypto' 'haskell-http=4000.0.9' 'haskell-bytestring=0.9.1.7' 'haskell-cgi=3001.1.7.3' 'haskell-concurrentoutput' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-mime-string' 'haskell-mtl' 'haskell-nano-md5' 'haskell-network=2.2.1.7' 'haskell-old-locale=1.0.0.2' 'haskell-old-time=1.0.0.5' 'haskell-parsec=2.1.0.1' 'haskell-process=1.0.1.3' 'haskell-regex-compat=0.93.1' 'haskell-time=1.1.4' 'haskell-unix=2.4.0.2' 'haskell-xhtml=3000.2.0.1' 'haskell-zlib=0.5.2.0')
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
md5sums=('caeec00bacbdf93ae3be65ad06c6ae63')
