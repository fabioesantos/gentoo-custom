# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 cmake

DESCRIPTION="Locale program for musl libc"
HOMEPAGE="https://gitlab.com/rilian-la-te/musl-locales"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

DEPEND="
	sys-libs/musl
	sys-devel/gettext
"
RDEPEND="${DEPEND}"
BDEPEND="
	dev-util/cmake
"


EGIT_REPO_URI="https://gitlab.com/rilian-la-te/musl-locales.git"

LICENSE="MIT"
SLOT="0"

src_install() {
	cmake_src_install
}
