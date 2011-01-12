# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=mahoro
pkgname=mahoro
pkgver=0.1.2
pkgrel=3
pkgdesc="ImageBoards to XMPP gate"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-configfile' 'haskell-missingh' 'haskell-xmpp>0.0.1' 'haskell-containers=0.3.0.0' 'haskell-curl' 'haskell-directory=1.0.1.1' 'haskell-happstack-state' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-old-time=1.0.0.5' 'haskell-regex-posix=0.94.2' 'haskell-tagsoup' 'haskell-utf8-string')
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
md5sums=('611f65e6e1311c26149171e3a829b34a')
