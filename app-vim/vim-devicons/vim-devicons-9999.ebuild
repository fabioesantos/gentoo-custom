# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit vim-plugin

if [[ ${PV} != 9999* ]] ; then
	MY_PN=vim-${PN}
	MY_P=${MY_PN}-${PV}
	SRC_URI="https://github.com/ryanoasis/vim-devicons/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="amd64 x86"
	S=${WORKDIR}/${MY_P}
else
	inherit git-r3
	EGIT_REPO_URI="https://github.com/ryanoasis/vim-devicons.git"
fi

DESCRIPTION="Adds file type icons to Vim plugins"
HOMEPAGE="https://github.com/ryanoasis/vim-devicons.git"
LICENSE="MIT"
VIM_PLUGIN_HELPFILES="${PN}.txt"

DOCS=( CHANGELOG.md README.md )

src_prepare() {
	default

	# remove test dir
	rm -r t || die
}
