# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=PageIO
pkgname=haskell-pageio
pkgver=0.0.3
pkgrel=4
pkgdesc="Page-oriented extraction and composition library"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-array=0.3.0.1' 'haskell-attoparsec>=0.4' 'haskell-base64-string' 'haskell-bytestring=0.9.1.7' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-iconv' 'haskell-network=2.2.1.7' 'haskell-old-time=1.0.0.5' 'haskell-regex-base=0.93.2' 'haskell-regex-compat=0.93.1' 'haskell-regex-tdfa' 'haskell-sqlite' 'haskell-stringtable-atom' 'haskell-utf8-string' 'haskell-uuid')
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
    install -D -m644 LICENSE ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
    rm -f ${pkgdir}/usr/share/doc/${pkgname}/LICENSE
}
md5sums=('aa143b3478784af33af2fd96cf3b0779')
