# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=xmms2-client-glib
pkgname=haskell-xmms2-client-glib
pkgver=0.0.6.0
pkgrel=3
pkgdesc="An XMMS2 client library — GLib integration."
url="http://hackage.haskell.org/package/${_hkgname}"
license=('LGPL-3')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-haskell98=1.0.1.1' 'haskell-xmms2-client=0.0.6.0' 'c2hs')
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
md5sums=('cd01709fee66a2c485bf0e7c79631b58')
