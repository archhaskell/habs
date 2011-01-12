# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=panda
pkgname=haskell-panda
pkgver=2009.4.1
pkgrel=4
pkgdesc="A simple static blog engine"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('GPL')
arch=('i686' 'x86_64')
makedepends=()
depends=('ghc' 'haskell-missingh' 'haskell-cgi=3001.1.7.3' 'haskell-containers=0.3.0.0' 'haskell-data-default>=0.2' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-gravatar>=0.3' 'haskell-haskell98=1.0.1.1' 'haskell-hcheat>=2008.11.6' 'haskell-kibro>=0.4.2' 'haskell-mps>=2008.11.6' 'haskell-network=2.2.1.7' 'haskell-old-locale=1.0.0.2' 'haskell-old-time=1.0.0.5' 'haskell-pandoc' 'haskell-parsec=2.1.0.1' 'haskell-parsedate>=3000.0.0' 'haskell-process=1.0.1.3' 'haskell-rss>=3000.0.1' 'haskell-utf8-string>=0.3.3' 'haskell-xhtml=3000.2.0.1')
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
md5sums=('26c7cccf1f1a850fd3a90b275461b966')
