# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=json2yaml
pkgname=json2yaml
pkgver=0.2.2
pkgrel=3
pkgdesc="Utility to convert a file from JSON to YAML format."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-attempt<0.3' 'haskell-bytestring=0.9.1.7' 'haskell-data-object-json<0.1' 'haskell-data-object-yaml<0.1')
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
md5sums=('27b9bd0d504ef972bb0875785d692821')
