pkgname="firejail-extra-profiles"
pkgrel=1
pkgver=1.0.r0.g09fb39f # placeholder
pkgdesc="Additional profiles for firejail"
arch=('any')
license=('GPL')
depends=('firejail')
makedepends=('git')
# idk whether I want to publish this to AUR
# Sourcing repository will be easier than maintaining list of files here, so..
source=("$pkgname::git+https://github.com/HeroBrine1st/firejail-extra-profiles.git")
sha256sums=("SKIP")

pkgver() {
  cd "$srcdir/$pkgname"
  git describe --long --tags | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
}

package() {
  profiles="$srcdir/$pkgname/profiles"
  install -Dm 644 -t "$pkgdir/etc/firejail" "$profiles"/*.profile
}
