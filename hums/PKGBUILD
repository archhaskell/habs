# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hums
pkgname=hums
pkgver=0.3.1
pkgrel=2
pkgdesc="Haskell UPnP Media Server"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-configfile>=1.0.5' 'haskell-http=4000.0.9' 'haskell-missingh>=1.0.1' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-haskell98=1.0.1.1' 'haskell-hxt<10' 'haskell-mtl>=1.1.0.2' 'haskell-network=2.2.1.7' 'haskell-network-bytestring<0.2' 'haskell-parsec=2.1.0.1' 'haskell-regex-compat=0.93.1' 'haskell-transformers<0.3' 'haskell-unix=2.4.0.2' 'haskell-utf8-string<0.4' 'haskell-uuid>=1.0.0')
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
md5sums=('6c2db71e971788da8e8d00acd4910ed6')
