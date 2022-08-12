# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit savedconfig toolchain-funcs

DESCRIPTION="Provides a scroll back buffer for a terminal like st(1)."
HOMEPAGE="https://tools.suckless.org/scroll"

SRC_URI="https://dl.suckless.org/tools/scroll-0.1.tar.gz"

LICENSE="MIT-with-advertising"

SLOT="0"
KEYWORDS="~amd64"

RDEPEND="x11-terms/st"
DEPEND="${RDEPEND}"

src_prepare() {
	default

	restore_config config.h
}

src_compile() {
	emake CC=$(tc-getCC)
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}"/usr install

	save_config config.h
}
