# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=HTF
pkgname=haskell-htf
pkgver=0.5.0.1
pkgrel=3
pkgdesc="The Haskell Test Framework"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('LGPL')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-hunit=1.2.2.1' 'haskell-quickcheck=2.1.1.1' 'haskell-containers=0.3.0.0' 'cpphs<1.12' 'haskell-directory=1.0.1.1' 'haskell-haskell-src-exts<1.10' 'haskell-mtl<1.2' 'haskell-pretty=1.0.1.1' 'haskell-process=1.0.1.3' 'haskell-random=1.0.0.2')
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
md5sums=('b3a9ce364436faf4c063dabc44d4072e')
