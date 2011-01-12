# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=ftshell
pkgname=ftshell
pkgver=0.3.0.1
pkgrel=2
pkgdesc="Shell interface to the FreeTheorems library."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:PublicDomain')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-shellac>=0.9' 'haskell-shellac-readline>=0.9' 'haskell-containers=0.3.0.0' 'haskell-free-theorems<0.4' 'haskell-mtl>=1.0' 'haskell-pretty=1.0.1.1')
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
md5sums=('6617f42647ec38ff92a9ce681fed71c4')
