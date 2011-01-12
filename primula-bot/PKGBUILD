# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=primula-bot
pkgname=primula-bot
pkgver=0.0.2
pkgrel=3
pkgdesc="Jabber-bot for primula-board ImageBoard"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-configfile' 'haskell-http=4000.0.9' 'haskell-xmpp>0.0.1' 'haskell-directory=1.0.1.1' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-parsec=2.1.0.1' 'haskell-utf8-string')
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
md5sums=('faee9b76c96fe5ec409795004fab6701')
