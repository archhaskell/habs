# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=lhc
pkgname=lhc
pkgver=0.10
pkgrel=2
pkgdesc="LHC Haskell Compiler"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:PublicDomain')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-cabal=1.8.0.6' 'haskell-hunit=1.2.2.1' 'haskell-quickcheck=2.1.1.1' 'haskell-ansi-wl-pprint' 'haskell-binary' 'haskell-bytestring=0.9.1.7' 'haskell-bytestring-trie' 'haskell-containers=0.3.0.0' 'haskell-core>=0.5' 'derive' 'haskell-digest' 'haskell-directory=1.0.1.1' 'haskell-extensible-exceptions=0.1.1.1' 'haskell-filepath=1.1.0.4' 'haskell-haskell98=1.0.1.1' 'haskell-mtl' 'haskell-parallel=2.2.0.1' 'haskell-pretty=1.0.1.1' 'haskell-process=1.0.1.3' 'haskell-test-framework' 'haskell-test-framework-hunit' 'haskell-test-framework-quickcheck' 'haskell-time=1.1.4' 'haskell-unix=2.4.0.2' 'haskell-xhtml=3000.2.0.1')
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
md5sums=('a3018a9c38a7a61cf39859cf5cb05833')
