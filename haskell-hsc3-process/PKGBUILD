# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hsc3-process
pkgname=haskell-hsc3-process
pkgver=0.3.1
pkgrel=3
pkgdesc="Create and control scsynth processes"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-configfile>=1' 'haskell-containers=0.3.0.0' 'haskell-data-accessor>=0.2' 'haskell-data-accessor-template>=0.2' 'haskell-hosc>=0.7' 'haskell-hsc3>=0.7' 'haskell-mtl>=1.1' 'haskell-process=1.0.1.3' 'haskell-template-haskell=2.4.0.1' 'haskell-transformers')
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
md5sums=('dd39ec1454c6035fdc312cc72ba56fcc')
