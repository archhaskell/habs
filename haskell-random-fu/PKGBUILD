# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=random-fu
pkgname=haskell-random-fu
pkgver=0.1.3
pkgrel=3
pkgdesc="Random number generation"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:PublicDomain')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-monadprompt' 'haskell-array=0.3.0.1' 'haskell-containers=0.3.0.0' 'haskell-erf' 'haskell-mersenne-random-pure64' 'haskell-monad-loops>=0.3.0.1' 'haskell-mtl<3' 'haskell-mwc-random' 'haskell-random=1.0.0.2' 'haskell-random-shuffle' 'haskell-stateref<0.4' 'haskell-syb=0.1.0.2' 'haskell-tagged' 'haskell-template-haskell=2.4.0.1' 'haskell-vector')
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
md5sums=('3496ba1d5fc90cbeeeaaea2586099cdf')
