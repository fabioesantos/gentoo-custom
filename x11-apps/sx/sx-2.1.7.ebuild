# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Start an Xorg Server"
HOMEPAGE="https://github.com/Earnestly/sx"
SRC_URI="https://github.com/Earnestly/sx/archive/refs/tags/2.1.7.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	x11-base/xorg-server
	x11-apps/xauth
"
RDEPEND="${DEPEND}"

src_prepare() {
	default
	sed Makefile \
		-e 's|/usr/local|/usr|g' \
		-i || die
	sed sx \
		-e 's|vt"$tty"|vt"$tty" -nolisten tcp|g' \
		-i || die
}

src_compile() {
	:
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" install

}
