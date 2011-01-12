# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=happs-tutorial
pkgname=happs-tutorial
pkgver=0.9.5
pkgrel=2
pkgdesc="A Happstack Tutorial that is its own web 2.0-type demo."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-debugtracehelpers<0.20' 'haskell-hstringtemplate>=0.6' 'haskell-hstringtemplatehelpers<1.0.0' 'haskell-http=4000.0.9' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-happstack>=0.5' 'haskell-happstack-data>=0.5' 'haskell-happstack-helpers>=0.50' 'haskell-happstack-ixset>=0.5' 'haskell-happstack-server>=0.5' 'haskell-happstack-state>=0.5' 'hscolour=1.13' 'haskell-mtl<2.0.0.0' 'haskell-old-time=1.0.0.5' 'haskell-parsec=2.1.0.1' 'haskell-pretty=1.0.1.1' 'haskell-puremd5<1.1.0.0' 'haskell-safe<0.3' 'haskell-syb=0.1.0.2')
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
md5sums=('14761fce5447034159388d082e1f1ae4')
