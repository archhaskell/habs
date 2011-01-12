# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=darcs-benchmark
pkgname=darcs-benchmark
pkgver=0.1.9
pkgrel=2
pkgdesc="Comparative benchmark suite for darcs."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-http=4000.0.9' 'haskell-sha' 'haskell-bytestring=0.9.1.7' 'haskell-cmdargs' 'haskell-containers=0.3.0.0' 'haskell-datetime' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-hs-gchart' 'haskell-html=1.0.1.2' 'haskell-json<0.5' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-old-locale=1.0.0.2' 'haskell-process=1.0.1.3' 'haskell-regex-posix=0.94.2' 'haskell-split<0.2' 'haskell-statistics<0.5' 'haskell-strict' 'haskell-tabular>=0.2.2.1' 'haskell-tar' 'haskell-time=1.1.4' 'haskell-utf8-string<0.4' 'haskell-uvector<0.2' 'haskell-zlib=0.5.2.0')
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
md5sums=('cf365a119aef8cd96a3b7f81fbea131d')
