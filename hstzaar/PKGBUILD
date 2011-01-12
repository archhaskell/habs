# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hstzaar
pkgname=hstzaar
pkgver=0.4
pkgrel=2
pkgdesc="A two player abstract strategy game."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-quickcheck=2.1.1.1' 'haskell-cairo>=0.11' 'haskell-containers=0.3.0.0' 'haskell-glade>=0.11' 'haskell-gtk>=0.11' 'haskell-haskell98=1.0.1.1' 'haskell-random=1.0.0.2')
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
md5sums=('1f23b28dad1827f812ecb12171cc9ac6')
