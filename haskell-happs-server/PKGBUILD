# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=HAppS-Server
pkgname=haskell-happs-server
pkgver=0.9.3.1
pkgrel=4
pkgdesc="Web related tools and services."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-happs-data>=0.9.2' 'haskell-happs-ixset>=0.9.2' 'haskell-happs-state>=0.9.2' 'haskell-happs-util>=0.9.2' 'haskell-http=4000.0.9' 'haskell-haxml<1.14' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-hslogger>=1.0.2' 'haskell-html=1.0.1.2' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-old-locale=1.0.0.2' 'haskell-old-time=1.0.0.5' 'haskell-parsec=2.1.0.1' 'haskell-process=1.0.1.3' 'haskell-random=1.0.0.2' 'haskell-syb=0.1.0.2' 'haskell-template-haskell=2.4.0.1' 'haskell-unix=2.4.0.2' 'haskell-xhtml=3000.2.0.1')
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
md5sums=('e188acc909e31ef318b91eca555e73e9')
