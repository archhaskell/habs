# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=maid
pkgname=maid
pkgver=2010.9.29
pkgrel=2
pkgdesc="A simple static web server"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-data-default' 'haskell-directory=1.0.1.1' 'haskell-hack' 'haskell-hack-contrib>=2010.9.28' 'haskell-hack-handler-happstack' 'haskell-haskell98=1.0.1.1' 'haskell-moe>=2010.9.29.2' 'haskell-mps>=2010.1.26' 'haskell-process=1.0.1.3' 'haskell-unix=2.4.0.2')
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
md5sums=('b9673516c9fd3fceae1790085f355ec9')
