# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=Hermes
pkgname=haskell-hermes
pkgver=0.0.4
pkgrel=3
pkgdesc="Message-based middleware layer"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-aes>=0.2.4' 'haskell-rsa>=1.0.2' 'haskell-sha2>=0.1.1' 'haskell-bytestring=0.9.1.7' 'haskell-cereal>=0.2' 'haskell-containers=0.3.0.0' 'haskell-hslogger>=1.0.7' 'haskell-monads-tf<0.2' 'haskell-network=2.2.1.7' 'haskell-old-time=1.0.0.5' 'haskell-random=1.0.0.2' 'haskell-random-shuffle' 'haskell-stm=2.1.2.1' 'haskell-syb=0.1.0.2' 'haskell-time=1.1.4' 'haskell-transformers>=0.1.4.0' 'haskell-unamb>=0.2.2' 'haskell-yjtools>=0.9.7')
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
    install -D -m644 COPYING ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
    rm -f ${pkgdir}/usr/share/doc/${pkgname}/LICENSE
}
md5sums=('8cb97c60441cac5d604323201edb5673')
