# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=dephd
pkgname=dephd
pkgver=0.1.5
pkgrel=2
pkgdesc="Analyze quality of nucleotide sequences."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bio>0.4' 'haskell-bytestring=0.9.1.7' 'haskell-cmdargs<=0.1.1' 'haskell-directory=1.0.1.1' 'haskell-process=1.0.1.3' 'haskell-regex-compat=0.93.1')
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
md5sums=('9f97d44d60128d500f7c81499433e38b')
