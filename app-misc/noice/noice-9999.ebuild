# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit savedconfig git-r3

DESCRIPTION="small file browser"
HOMEPAGE="https://git://git.2f30.org/noice"
EGIT_REPO_URI="git://git.2f30.org/noice"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""

src_prepare() {
	sed -i'' \
		-e "s|MANPREFIX = \$(PREFIX)/man|MANPREFIX = \$(PREFIX)/share/man|" \
		Makefile
	default
}

src_configure() {
	restore_config noiceconf.h
}

src_compile() {
	emake DESTDIR="${D}" PREFIX=/usr all
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install
	save_config noiceconf.h
	dodoc README
}
