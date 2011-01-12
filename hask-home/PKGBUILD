# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=hask-home
pkgname=hask-home
pkgver=2009.3.18
pkgrel=3
pkgdesc="Generate homepages for cabal packages"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-cabal=1.8.0.6' 'haskell-directory=1.0.1.1' 'haskell-hmarkup>=3000.0.1' 'haskell-hsemail' 'haskell-network=2.2.1.7' 'haskell-parsec=2.1.0.1' 'haskell-process=1.0.1.3' 'haskell-regex-compat=0.93.1' 'haskell-xhtml=3000.2.0.1')
depends=('gmp')
options=('strip')
source=(http://hackage.haskell.org/packages/archive/${_hkgname}/${pkgver}/${_hkgname}-${pkgver}.tar.gz)
build() {
    cd ${srcdir}/${_hkgname}-${pkgver}
    runhaskell Setup configure --prefix=/usr --docdir=/usr/share/doc/${pkgname} -O
    runhaskell Setup build
}
package() {
    cd ${srcdir}/${_hkgname}-${pkgver}
    runhaskell Setup copy --destdir=${pkgdir}
}
md5sums=('e8ba47abbe9de56510f7f90fb153698f')
