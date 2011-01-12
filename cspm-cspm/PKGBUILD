# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=CSPM-cspm
pkgname=cspm-cspm
pkgver=0.4.0.0
pkgrel=2
pkgdesc="cspm command line tool for analyzing CSPM specifications."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-cspm-corelanguage<0.2' 'haskell-cspm-firingrules<0.2' 'haskell-cspm-frontend<0.5' 'haskell-cspm-interpreter<0.5' 'haskell-cmdargs<0.4' 'haskell-containers=0.3.0.0' 'haskell-parallel=2.2.0.1')
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
md5sums=('9f18472cda2adee98a8722eca3b8011d')
