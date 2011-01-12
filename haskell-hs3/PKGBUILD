# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hS3
pkgname=haskell-hs3
pkgver=0.5.3
pkgrel=3
pkgdesc="Interface to Amazon's Simple Storage Service (S3)"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-crypto>=4.1.0' 'haskell-http=4000.0.9' 'haskell-missingh>=0.18.6' 'haskell-bytestring=0.9.1.7' 'haskell-dataenc' 'haskell-hxt' 'haskell-network=2.2.1.7' 'haskell-old-locale=1.0.0.2' 'haskell-old-time=1.0.0.5' 'haskell-random=1.0.0.2' 'haskell-regex-compat=0.93.1' 'haskell-utf8-string')
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
md5sums=('2d08423b4d4c5ac3ae27e160793f81ef')
