# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=Mhailist
pkgname=mhailist
pkgver=0.0
pkgrel=2
pkgdesc="Haskell mailing list manager"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-binary' 'haskell-bytestring=0.9.1.7' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-haskell98=1.0.1.1' 'haskell-mtl' 'haskell-old-locale=1.0.0.2' 'haskell-process=1.0.1.3' 'haskell-time=1.1.4')
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
md5sums=('4e29bf611e3b55bd022c1f4e4ea4a830')
