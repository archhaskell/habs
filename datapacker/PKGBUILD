# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=datapacker
pkgname=datapacker
pkgver=1.0.1
pkgrel=3
pkgdesc="Tool to help pack files into the minimum number of CDs/DVDs/etc"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-missingh>=1.0.1' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-hslogger' 'haskell-mtl' 'haskell-process=1.0.1.3' 'haskell-unix=2.4.0.2')
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
md5sums=('5e5fcc35f9b7355e525f5112683c6149')
