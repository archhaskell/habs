# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=rbr
pkgname=haskell-rbr
pkgver=0.8.6
pkgrel=2
pkgdesc="Mask nucleotide (EST) sequences in Fasta format"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bio>=0.3.1' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0')
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
md5sums=('94eb6041f78bedada9fd779edbe12263')
