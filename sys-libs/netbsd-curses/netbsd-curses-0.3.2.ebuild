# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="libcurses and dependencies taken from netbsd and brought into a portable shape "
HOMEPAGE="https://github.com/sabotage-linux/netbsd-curses"
SRC_URI="https://github.com/sabotage-linux/netbsd-curses/archive/refs/tags/v${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~loong ~m68k ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86 ~amd64-linux ~x86-linux ~arm64-macos ~ppc-macos ~x64-macos ~x64-solaris"
IUSE=""

DEPEND=""

src_prepare() {
	default
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install
}
