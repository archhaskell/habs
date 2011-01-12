# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=miniplex
pkgname=haskell-miniplex
pkgver=0.3.4
pkgrel=4
pkgdesc="simple 1-to-N interprocess communication"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('LGPL')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-colock>=0.2.2' 'haskell-directory=1.0.1.1' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-stm=2.1.2.1' 'haskell-unix=2.4.0.2')
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
md5sums=('763fcb2fd04d7cccc9565b2bdb42c65b')
