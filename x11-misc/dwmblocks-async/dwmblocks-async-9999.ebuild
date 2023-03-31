# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 savedconfig toolchain-funcs

DESCRIPTION="Modular status bar for dwm written in C wich load each module asynchronously."
HOMEPAGE="https://github.com/UtkarshVerma/dwmblocks-async"
EGIT_REPO_URI="https://github.com/UtkarshVerma/${PN}.git"

LICENSE="ISC"
SLOT="0"

DEPEND="x11-wm/dwm"
RDEPEND="${DEPEND}"

src_prepare() {
	default

	restore_config config.c
}

src_compile() {
	emake CC=$(tc-getCC)
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" install

	dodoc README.md

	save_config config.c
}
