# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=vintage-basic
pkgname=vintage-basic
pkgver=1.0.1
pkgrel=3
pkgdesc="Interpreter for microcomputer-era BASIC"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-hunit=1.2.2.1' 'haskell-array=0.3.0.1' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-mtl>=1.1' 'haskell-parsec=2.1.0.1' 'haskell-process=1.0.1.3' 'haskell-random=1.0.0.2' 'haskell-regex-base=0.93.2' 'haskell-regex-posix=0.94.2' 'haskell-time=1.1.4')
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
    install -D -m644 LICENSE.txt ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
    rm -f ${pkgdir}/usr/share/doc/${pkgname}/LICENSE
}
md5sums=('1f357810e193401607b4f387db1a1e46')
