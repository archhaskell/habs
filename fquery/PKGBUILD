# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=fquery
pkgname=fquery
pkgver=0.2.1.1
pkgrel=3
pkgdesc="Installed package query tool for Gentoo Linux"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:OtherLicense')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-directory=1.0.1.1' 'haskell-haskell98=1.0.1.1' 'haskell-parsec=2.1.0.1' 'haskell-process=1.0.1.3' 'haskell-regex-compat=0.93.1' 'haskell-unix=2.4.0.2')
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
    install -D -m644 LICENCE.txt ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
    rm -f ${pkgdir}/usr/share/doc/${pkgname}/LICENSE
}
md5sums=('47cc31e374a13d71d26961e3bc3bc3d6')
