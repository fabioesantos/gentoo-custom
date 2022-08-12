# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit desktop savedconfig toolchain-funcs git-r3

DESCRIPTION="Provides a scroll back buffer for a terminal like st(1)."
HOMEPAGE="https://tools.suckless.org/scroll"

EGIT_REPO_URI="https://git.suckless.org/${PN}"

LICENSE="MIT-with-advertising"

SLOT="0"

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
