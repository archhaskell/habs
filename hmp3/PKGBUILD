# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hmp3
pkgname=hmp3
pkgver=1.5.2.1
pkgrel=3
pkgdesc="An ncurses mp3 player written in Haskell"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-array=0.3.0.1' 'haskell-binary>=0.4' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-mersenne-random>=0.1' 'haskell-old-time=1.0.0.5' 'haskell-pcre-light>=0.3' 'haskell-process=1.0.1.3' 'haskell-unix=2.4.0.2' 'haskell-zlib=0.5.2.0' 'ncurses')
depends=('gmp' 'ncurses')
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
md5sums=('4f72ab118929a9137ae1339c740b4581')
