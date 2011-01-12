# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=feed-cli
pkgname=feed-cli
pkgver=2009.7.5
pkgrel=3
pkgdesc="A simple command line interface for creating and updating feeds like RSS"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-directory=1.0.1.1' 'haskell-feed' 'haskell-old-locale=1.0.0.2' 'haskell-old-time=1.0.0.5' 'haskell-time=1.1.4' 'haskell-xml')
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
md5sums=('26929de666160fd68933af92bd672e98')
