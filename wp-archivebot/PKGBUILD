# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=wp-archivebot
pkgname=wp-archivebot
pkgver=0.1
pkgrel=3
pkgdesc="Subscribe to a wiki's RSS feed and archive external links"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-http=4000.0.9' 'haskell-feed' 'haskell-network=2.2.1.7' 'haskell-parallel=2.2.0.1' 'haskell-tagsoup')
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
md5sums=('93870e42e081c385c98d0d9ba11a50dc')
