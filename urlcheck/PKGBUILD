# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=urlcheck
pkgname=urlcheck
pkgver=0.1.1
pkgrel=3
pkgdesc="Parallel link checker"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-old-time=1.0.0.5')
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
md5sums=('18fa3b4769303ba0c41adc3f0c3f96e2')
