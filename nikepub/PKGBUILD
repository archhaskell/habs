# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=nikepub
pkgname=nikepub
pkgver=1.1.2
pkgrel=3
pkgdesc="Command line utility publishes Nike+ runs on blogs and Twitter"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('LGPL')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-googlechart>=0.2' 'haskell-hstringtemplate>=0.5.1.2' 'haskell-http=4000.0.9' 'haskell-containers=0.3.0.0' 'haskell-filepath=1.1.0.4' 'haskell-haskell98=1.0.1.1' 'haskell-haxr>=3000.2.1' 'haskell-hs-twitter>=0.2.8' 'haskell-hxt>=8.3.0' 'haskell-json>=0.4.3' 'haskell-network=2.2.1.7' 'haskell-old-locale=1.0.0.2' 'haskell-old-time=1.0.0.5' 'haskell-regex-compat=0.93.1' 'haskell-regex-posix=0.94.2' 'haskell-syb=0.1.0.2' 'haskell-time=1.1.4')
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
}
md5sums=('b0250724a3e62441704ee146c5bb7f50')
