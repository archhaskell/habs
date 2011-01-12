# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=haskoon
pkgname=haskell-haskoon
pkgver=0.3.1.1
pkgrel=3
pkgdesc="Web Application Abstraction"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('LGPL')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-maybet' 'haskell-missingh' 'haskell-bytestring=0.9.1.7' 'haskell-cgi=3001.1.7.3' 'haskell-directory=1.0.1.1' 'haskell-fastcgi' 'haskell-filepath=1.1.0.4' 'haskell-hslogger>=1.1.0' 'haskell-hsp' 'haskell-hsx' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-regex-posix=0.94.2' 'haskell-safe' 'haskell-utf8-string')
options=('strip')
source=(http://hackage.haskell.org/packages/archive/${_hkgname}/${pkgver}/${_hkgname}-${pkgver}.tar.gz)
install=${pkgname}.install
build() {
    cd ${srcdir}/${_hkgname}-${pkgver}
    runhaskell Setup configure -O --enable-split-objs --enable-shared \
       --prefix=/usr --docdir=/usr/share/doc/${pkgname} --libsubdir=\$compiler/site-local/\$pkgid
    runhaskell Setup build
    runhaskell Setup haddock
    runhaskell Setup register   --gen-script
    runhaskell Setup unregister --gen-script
    sed -i -r -e "s|ghc-pkg.*unregister[^ ]* |&'--force' |" unregister.sh
}
package() {
    cd ${srcdir}/${_hkgname}-${pkgver}
    install -D -m744 register.sh   ${pkgdir}/usr/share/haskell/${pkgname}/register.sh
    install    -m744 unregister.sh ${pkgdir}/usr/share/haskell/${pkgname}/unregister.sh
    install -d -m755 ${pkgdir}/usr/share/doc/ghc/html/libraries
    ln -s /usr/share/doc/${pkgname}/html ${pkgdir}/usr/share/doc/ghc/html/libraries/${_hkgname}
    runhaskell Setup copy --destdir=${pkgdir}
}
md5sums=('293186e5e6d0161b190c5467b8fac302')
