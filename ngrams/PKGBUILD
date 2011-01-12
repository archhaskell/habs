# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=NGrams
pkgname=ngrams
pkgver=1.1
pkgrel=3
pkgdesc="Simple application for calculating n-grams using Google."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-hcl>=1.2' 'haskell-http=4000.0.9' 'haskell-network=2.2.1.7' 'haskell-regex-compat=0.93.1')
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
md5sums=('387bb4e17ce8df01baa85e24f4576b06')
