# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hp2any-manager
pkgname=hp2any-manager
pkgver=0.4.3
pkgrel=2
pkgdesc="A utility to visualise and compare heap profiles."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-opengl=2.2.3.0' 'haskell-array=0.3.0.1' 'haskell-bytestring=0.9.1.7' 'haskell-cairo' 'haskell-containers=0.3.0.0' 'haskell-filepath=1.1.0.4' 'haskell-glade' 'haskell-glib' 'haskell-gtk' 'haskell-gtkglext' 'haskell-hp2any-core' 'hp2any-graph' 'haskell-time=1.1.4')
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
    install -D -m644 LICENSE ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
    rm -f ${pkgdir}/usr/share/doc/${pkgname}/LICENSE
}
md5sums=('b3366e37e5f9a33f7e822a2550cbb8e9')
