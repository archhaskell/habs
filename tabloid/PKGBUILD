# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=tabloid
pkgname=tabloid
pkgver=0.47
pkgrel=3
pkgdesc="View the output of shell commands in a table"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-gtk' 'haskell-hint' 'haskell-parallel=2.2.0.1' 'haskell-process=1.0.1.3' 'haskell-regex-base=0.93.2' 'haskell-regex-posix=0.94.2')
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
md5sums=('95ac8d5679a51727cffa8618ea1a1c13')
