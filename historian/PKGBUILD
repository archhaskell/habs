# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=historian
pkgname=historian
pkgver=0.0.1
pkgrel=3
pkgdesc="Extract the interesting bits from shell history"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-containers' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-process=1.0.1.3' 'haskell-regex-compat' 'haskell-regex-posix=0.94.2')
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
md5sums=('a985cca1e1931a35eac65321d11a5e1e')
