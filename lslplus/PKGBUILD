# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=LslPlus
pkgname=lslplus
pkgver=0.4.3
pkgrel=3
pkgdesc="An execution and testing framework for the Linden Scripting Language (LSL)"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-haxml<1.20' 'haskell-array' 'haskell-bytestring=0.9.1.7' 'haskell-containers' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-haskell98=1.0.1.1' 'haskell-mtl<1.2' 'haskell-network=2.2.1.7' 'haskell-old-time=1.0.0.5' 'haskell-parsec=2.1.0.1' 'haskell-puremd5<3' 'haskell-random=1.0.0.2' 'haskell-syb=0.1.0.2' 'haskell-template-haskell' 'haskell-utf8-string<0.4')
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
md5sums=('98ad0aac7bba16f3f7f6632b984991fc')
