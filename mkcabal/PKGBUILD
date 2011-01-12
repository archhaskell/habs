# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=mkcabal
pkgname=mkcabal
pkgver=1.0.0
pkgrel=2
pkgdesc="Generate cabal files for a Haskell project"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-directory=1.0.1.1' 'haskell-extensible-exceptions=0.1.1.1' 'haskell-mtl' 'haskell-old-locale=1.0.0.2' 'haskell-old-time=1.0.0.5' 'haskell-pcre-light>=0.3' 'haskell-pretty=1.0.1.1' 'haskell-readline')
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
md5sums=('a8029f842c688a8e666ba4cbabccfa5f')
