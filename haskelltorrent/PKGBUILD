# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=HaskellTorrent
pkgname=haskelltorrent
pkgver=0.1.1
pkgrel=2
pkgdesc="A concurrent bittorrent client"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-http=4000.0.9' 'haskell-hunit=1.2.2.1' 'haskell-quickcheck=2.1.1.1' 'haskell-bytestring=0.9.1.7' 'haskell-cereal' 'haskell-cml' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-hopenssl' 'haskell-hslogger' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-parsec=2.1.0.1' 'haskell-pretty=1.0.1.1' 'haskell-random=1.0.0.2' 'haskell-random-shuffle' 'haskell-test-framework' 'haskell-test-framework-hunit' 'haskell-test-framework-quickcheck2' 'haskell-time=1.1.4')
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
md5sums=('9dd05f53d8f81de02513e2d6475bb73e')
