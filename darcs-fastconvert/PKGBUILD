# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=darcs-fastconvert
pkgname=darcs-fastconvert
pkgver=0.2
pkgrel=2
pkgdesc="Import/export git fast-import streams to/from darcs."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-attoparsec<0.9' 'haskell-bytestring=0.9.1.7' 'haskell-cmdlib<0.3' 'haskell-containers=0.3.0.0' 'darcs-beta<2.5' 'haskell-datetime' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-hashed-storage<0.6' 'haskell-mtl' 'haskell-old-time=1.0.0.5' 'haskell-utf8-string')
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
md5sums=('eced90a4db1cd8834b92ea0d79171ff3')
