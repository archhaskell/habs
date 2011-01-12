# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hark
pkgname=hark
pkgver=0.2
pkgrel=3
pkgdesc="A Gentoo package query tool."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bytestring=0.9.1.7' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-haskell98=1.0.1.1' 'haskell-mtl>=1.1' 'haskell-old-locale=1.0.0.2' 'haskell-old-time=1.0.0.5' 'haskell-regex-pcre')
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
md5sums=('dfd7dccf1b01b45ba4ee19cd3d15453b')
