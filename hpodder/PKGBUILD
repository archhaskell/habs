# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hpodder
pkgname=hpodder
pkgver=1.1.5
pkgrel=3
pkgdesc="Podcast Aggregator (downloader)"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-configfile' 'haskell-hdbc>=1.1.0' 'haskell-hdbc-sqlite3>=1.1.0' 'haskell-haxml<1.19' 'haskell-missingh>=1.0.0' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-haskell98=1.0.1.1' 'haskell-hslogger' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-old-time=1.0.0.5' 'haskell-parsec=2.1.0.1' 'haskell-process=1.0.1.3' 'haskell-unix=2.4.0.2')
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
md5sums=('e2c02a82460aa41fa7bbe5abd218d810')
