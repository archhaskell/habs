# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hbeat
pkgname=hbeat
pkgver=0.1.2
pkgrel=3
pkgdesc="A simple step sequencer GUI."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-opengl=2.2.3.0' 'haskell-sdl' 'haskell-sdl-mixer' 'haskell-containers=0.3.0.0' 'haskell-mtl' 'haskell-old-time=1.0.0.5' 'sdl' 'sdl_mixer')
depends=('gmp' 'sdl' 'sdl_mixer')
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
    install -D -m644 LICENSE ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
    rm -f ${pkgdir}/usr/share/doc/${pkgname}/LICENSE
}
md5sums=('9342da7202fcacc61ea51ea0ce08b19a')
