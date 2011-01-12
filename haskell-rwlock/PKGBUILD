# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=rwlock
pkgname=haskell-rwlock
pkgver=0.0.0.2
pkgrel=4
pkgdesc="Multiple-read / single-write locks"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:PublicDomain')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-monad-loops' 'haskell-stm=2.1.2.1' 'haskell-syb=0.1.0.2')
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
md5sums=('685a3bca057d37a900674075a73e55da')
