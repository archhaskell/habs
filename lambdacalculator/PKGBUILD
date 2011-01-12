# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=LambdaCalculator
pkgname=lambdacalculator
pkgver=0.0.2
pkgrel=2
pkgdesc="A basic lambda calculator with beta reduction and a REPL"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-binary<0.6.0' 'haskell-bytestring=0.9.1.7' 'haskell-haskeline<0.7' 'haskell-mtl<1.2.0.0' 'haskell-parsec=2.1.0.1' 'haskell-pretty=1.0.1.1')
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
md5sums=('5d294abe84d778e46f4ef03d43400bd2')
