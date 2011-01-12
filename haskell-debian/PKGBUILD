# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=debian
pkgname=haskell-debian
pkgver=3.47
pkgrel=3
pkgdesc="Modules for working with the Debian package system"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-cabal' 'haskell-hunit=1.2.2.1' 'haskell-haxml<1.14' 'haskell-unixutils' 'haskell-bytestring=0.9.1.7' 'haskell-bzlib' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-mtl' 'haskell-network=2.2.1.7' 'haskell-old-locale=1.0.0.2' 'haskell-parsec=2.1.0.1' 'haskell-pretty=1.0.1.1' 'haskell-process=1.0.1.3' 'haskell-regex-compat=0.93.1' 'haskell-regex-tdfa' 'haskell-time=1.1.4' 'haskell-unix=2.4.0.2' 'haskell-zlib=0.5.2.0')
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
    install -D -m644 debian/copyright ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
    rm -f ${pkgdir}/usr/share/doc/${pkgname}/LICENSE
}
md5sums=('b096adf4b4946bc10b17ea7cd16091e9')
