# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=Barracuda
pkgname=haskell-barracuda
pkgver=1.0.2
pkgrel=4
pkgdesc="An ad-hoc P2P chat program"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-crypto' 'haskell-haxml>=1.17' 'haskell-adhoc-network>=1.0.2' 'haskell-array=0.3.0.1' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-dataenc' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-gtk' 'haskell-heap>=0.2' 'haskell-hsgnutls>=0.2.3' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-old-locale=1.0.0.2' 'haskell-parsec=2.1.0.1' 'haskell-pkcs1>=1.0.2' 'haskell-random=1.0.0.2' 'haskell-regex-compat=0.93.1' 'haskell-stm=2.1.2.1' 'haskell-time=1.1.4' 'haskell-unix=2.4.0.2' 'haskell-utf8-string' 'haskell-xml-parsec>=1.0.2')
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
md5sums=('ae39daf167541a4a590304d722e85afe')
