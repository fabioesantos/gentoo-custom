# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

LUA_COMPAT=( lua5-{1..4} luajit )

inherit lua

DESCRIPTION="Writes input files to stdout with syntax highlighting"
HOMEPAGE="https://github.com/jpe90/clp"
SRC_URI="https://github.com/jpe90/clp/archive/refs/tags/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 ~hppa ~mips ppc ppc64 ~riscv sparc x86 ~x64-macos"
IUSE="test debug doc"
REQUIRED_USE="${LUA_REQUIRED_USE}"

RESTRICT="!test? ( test )"

RDEPEND="${LUA_DEPS}"
DEPEND="${RDEPEND}"
BDEPEND="
	virtual/pkgconfig
	dev-lua/lua-utf8[${LUA_USEDEP}]
	test? ( ${RDEPEND} )
"

src_prepare() {
	default
}

src_install() {
	emake DESTDIR="${D}" install
}
