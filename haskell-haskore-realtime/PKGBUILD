# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=haskore-realtime
pkgname=haskell-haskore-realtime
pkgver=0.1.1
pkgrel=3
pkgdesc="Routines for realtime playback of Haskore songs"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-bytestring=0.9.1.7' 'haskell-data-accessor<0.3' 'haskell-directory=1.0.1.1' 'haskell-event-list<0.2' 'haskell-haskore<0.3' 'haskell-midi<0.2' 'haskell-non-negative<0.2' 'haskell-old-time=1.0.0.5' 'haskell-process=1.0.1.3' 'haskell-transformers<0.3' 'haskell-unix=2.4.0.2')
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
md5sums=('a91fe1d57c71dfa7356261b8cca4e806')
