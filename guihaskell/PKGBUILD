# Maintainer: Arch Haskell Team <arch-haskell@haskell.org>
_hkgname=GuiHaskell
pkgname=guihaskell
pkgver=0.1.1
pkgrel=3
pkgdesc="A graphical REPL and development environment for Haskell"
url="http://hackage.haskell.org/package/${_hkgname}"
license=('custom:BSD3')
arch=('i686' 'x86_64')
makedepends=('ghc' 'haskell-containers=0.3.0.0' 'haskell-directory=1.0.1.1' 'haskell-filepath=1.1.0.4' 'haskell-glade>=0.9.11' 'haskell-gtk>=0.9.11' 'haskell-parsec=2.1.0.1' 'haskell-process=1.0.1.3' 'haskell-proplang>=0.1')
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
    install -D -m644 LICENSE ${pkgdir}/usr/share/licenses/${pkgname}/LICENSE
    rm -f ${pkgdir}/usr/share/doc/${pkgname}/LICENSE
}
md5sums=('378b3b417971b000afb0a2dce8849cac')
