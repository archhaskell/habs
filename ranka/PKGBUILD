# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=Ranka
pkgname=ranka
pkgver=0.1
pkgrel=3
pkgdesc="HTTP to XMPP omegle chats gate."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-http=4000.0.9' 'haskell-xmpp>0.0.1' 'haskell-json' 'haskell-network=2.2.1.7' 'haskell-utf8-string')
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
md5sums=('34008c9fee35b7eaa4525bf2f13f8845')
