# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hack-contrib
pkgname=haskell-hack-contrib
pkgver=2010.9.28
pkgrel=3
pkgdesc="Hack contrib"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-ansi-wl-pprint' 'haskell-bytestring=0.9.1.7' 'haskell-cgi=3001.1.7.3' 'haskell-containers=0.3.0.0' 'haskell-data-default>=0.2' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-hack>=2009.10.30' 'haskell-haskell98=1.0.1.1' 'haskell-mps>=2010.1.26' 'haskell-network=2.2.1.7' 'haskell-old-locale=1.0.0.2' 'haskell-old-time=1.0.0.5' 'haskell-time=1.1.4' 'haskell-utf8-string')
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
    install -D -m644 LICENSE ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
    rm -f ${pkgdir}/usr/share/doc/${pkgname}/LICENSE
}
md5sums=('2d3d4bc18ec637539b8e2823c496987f')
