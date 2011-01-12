# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=nymphaea
pkgname=nymphaea
pkgver=0.3
pkgrel=3
pkgdesc="An interactive GUI for manipulating L-systems"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-cairo' 'haskell-containers=0.3.0.0' 'haskell-glade' 'haskell-glib' 'haskell-gtk>=0.10.0' 'haskell-mtl' 'haskell-parsec=2.1.0.1' 'haskell-random=1.0.0.2')
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
md5sums=('53a2ba1ff2e737f5761ecc1d84b41d03')
