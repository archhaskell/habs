# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hslackbuilder
pkgname=hslackbuilder
pkgver=0.0.2
pkgrel=2
pkgdesc="HSlackBuilder automatically generates slackBuild scripts from a cabal package"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-cabal=1.8.0.6' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-process=1.0.1.3' 'haskell-unix=2.4.0.2')
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
md5sums=('0ed2e84513eca1696836e1889bb18d4d')
