# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=HaRe
pkgname=hare
pkgver=0.6.0.1
pkgrel=2
pkgdesc="the Haskell Refactorer."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-haskell98=1.0.1.1' 'haskell-hint' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-pretty=1.0.1.1' 'haskell-process=1.0.1.3' 'haskell-syb=0.1.0.2')
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
md5sums=('b6b68a8f1b40cde3662bf39f00f4bb1a')
