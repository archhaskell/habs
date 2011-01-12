# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=jarfind
pkgname=jarfind
pkgver=0.1.0.1
pkgrel=3
pkgdesc="Tool for searching java classes, members and fields in classfiles and JAR archives"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-array=0.3.0.1' 'haskell-binary' 'haskell-bytestring=0.9.1.7' 'haskell-regex-pcre>=0.94.1' 'haskell-zip-archive>=0.1.1.2')
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
md5sums=('bbe6b0ae4b79606f0e83d71c33b96de4')
