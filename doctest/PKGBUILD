# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=DocTest
pkgname=doctest
pkgver=0.1.0
pkgrel=2
pkgdesc="Test interactive Haskell examples"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:MIT')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-hunit=1.2.2.1' 'haskell-containers=0.3.0.0' 'haskell-ghc-paths<0.2' 'haddock' 'haskell-process=1.0.1.3')
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
md5sums=('ed712e62bbe9f8d508d6640d3f0dba0f')
