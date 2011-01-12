# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=bidirectionalization-combined
pkgname=bidirectionalization-combined
pkgver=0.1.0.1
pkgrel=2
pkgdesc="Prototype Implementation of Combining Syntactic and Semantic Bidirectionalization (ICFP'10)"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:PublicDomain')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bytestring=0.9.1.7' 'haskell-cgi=3001.1.7.3' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-hint>=0.3.2' 'haskell-mtl' 'haskell-parsec=2.1.0.1' 'haskell-pretty=1.0.1.1' 'haskell-template-haskell=2.4.0.1' 'haskell-unix=2.4.0.2' 'haskell-utf8-string' 'haskell-xhtml=3000.2.0.1')
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
md5sums=('b851ffde31ffb7821d43d682ff5c0878')
