# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=mute-unmute
pkgname=mute-unmute
pkgver=0.2.0.0
pkgrel=2
pkgdesc="Watches your screensaver and (un)mutes music when you (un)lock the screen."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL-3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-hslogger=1.1.0' 'haskell-hslogger-template=1.1.0' 'haskell-mtl<1.1.1' 'haskell-network-dbus=0.0' 'haskell-process=1.0.1.3')
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
md5sums=('7a73f3d15795f966fd04023a82ab1e88')
