# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=supercollider-midi
pkgname=haskell-supercollider-midi
pkgver=0.1.1
pkgrel=2
pkgdesc="Demonstrate how to control SuperCollider via ALSA-MIDI"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-alsa-midi<0.5' 'haskell-array' 'haskell-containers' 'haskell-data-accessor<0.2' 'haskell-event-list<0.1' 'haskell-hosc<0.2' 'haskell-hsc3<0.2' 'haskell-midi<0.2' 'haskell-mtl<2' 'haskell-non-negative<0.1' 'haskell-random=1.0.0.2' 'haskell-supercollider-ht<0.1')
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
md5sums=('40a0ed2677e11ed796e8b382464f133f')
