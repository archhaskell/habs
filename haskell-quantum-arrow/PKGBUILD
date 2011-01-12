# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=quantum-arrow
pkgname=haskell-quantum-arrow
pkgver=0.0.5
pkgrel=4
pkgdesc="An embedding of quantum computation as a Haskell arrow"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('LGPL')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-monadrandom' 'haskell-quickcheck' 'haskell-mtl' 'haskell-random=1.0.0.2')
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
md5sums=('8dc007ba0e3154926fd2dee2a859f5dd')
