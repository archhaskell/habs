# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=Pugs
pkgname=pugs
pkgver=6.2.13.16
pkgrel=2
pkgdesc="A Perl 6 Implementation"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-findbin' 'haskell-hsparrot>=0.0.2' 'haskell-hssyck>=0.44' 'haskell-metaobject>=0.0.4' 'haskell-array=0.3.0.1' 'haskell-binary' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-control-timeout>=0.1.2' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-haskeline>=0.2.1' 'haskell-haskell98=1.0.1.1' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-parsec=2.1.0.1' 'haskell-pretty=1.0.1.1' 'haskell-process=1.0.1.3' 'haskell-pugs-drift>=2.2.3.0' 'haskell-pugs-compat>=0.0.5' 'haskell-random=1.0.0.2' 'haskell-stm=2.1.2.1' 'haskell-stringtable-atom>=0.0.4' 'haskell-time=1.1.4' 'haskell-utf8-string')
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
md5sums=('a90de9afdb2bf17ace8d82c2c3561665')
