# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=feed2lj
pkgname=feed2lj
pkgver=0.0.3
pkgrel=3
pkgdesc="Cross-post any RSS/Atom feed to LiveJournal"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-http=4000.0.9' 'haskell-curl' 'haskell-directory=1.0.1.1' 'haskell-feed' 'haskell-haskell98=1.0.1.1' 'haskell-old-locale=1.0.0.2' 'haskell-puremd5' 'haskell-regex-posix=0.94.2' 'haskell-tagsoup>=0.6' 'haskell-time=1.1.4' 'haskell-utf8-string')
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
md5sums=('aaf06885f5e59bd9868e3b63f523c3cc')
