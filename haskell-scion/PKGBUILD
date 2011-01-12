# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=scion
pkgname=haskell-scion
pkgver=0.1.0.2
pkgrel=4
pkgdesc="Haskell IDE library"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-cabal' 'haskell-bytestring=0.9.1.7' 'haskell-containers' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-ghc-paths<0.2' 'haskell-ghc-syb<0.2' 'haskell-hslogger<1.1' 'haskell-json<0.5' 'haskell-multiset<0.2' 'haskell-network=2.2.1.7' 'haskell-network-bytestring<0.2' 'haskell-time=1.1.4' 'haskell-uniplate<1.3' 'haskell-utf8-string<0.4')
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
md5sums=('21e0787ea78b086a3efda2d93f754742')
