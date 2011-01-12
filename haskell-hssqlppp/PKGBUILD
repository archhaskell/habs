# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hssqlppp
pkgname=haskell-hssqlppp
pkgver=0.2.0
pkgrel=4
pkgdesc="Sql parser and type checker"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-hdbc' 'haskell-hdbc-postgresql' 'haskell-hunit=1.2.2.1' 'haskell-pipe' 'haskell-cmdargs' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-haskell-src-exts' 'haskell-haskell98=1.0.1.1' 'haskell-mtl' 'haskell-parsec' 'haskell-pretty=1.0.1.1' 'haskell-pretty-show' 'haskell-process=1.0.1.3' 'haskell-regex-posix=0.94.2' 'haskell-syb=0.1.0.2' 'haskell-template-haskell=2.4.0.1' 'haskell-test-framework' 'haskell-test-framework-hunit' 'haskell-uniplate')
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
md5sums=('d152c7ce65a7ebe6f5cbc3159bd1e27e')
