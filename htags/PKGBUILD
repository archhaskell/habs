# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=htags
pkgname=htags
pkgver=1.0.1
pkgrel=3
pkgdesc="A Haskell98 parsing tags program similar to ctags."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-haskell-src=1.0.1.3' 'haskell-mtl')
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
md5sums=('e93f3339d3c062ca5a572dffdd4ab531')
