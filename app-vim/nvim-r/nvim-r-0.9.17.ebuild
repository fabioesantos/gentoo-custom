# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit vim-plugin

if [[ ${PV} != 9999* ]] ; then
	MY_P=Nvim-R-${PV}
	SRC_URI="https://github.com/jalvesaq/Nvim-R/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="amd64 x86"
	S=${WORKDIR}/${MY_P}
else
	inherit git-r3
	EGIT_REPO_URI="https://github.com/jalvesaq/Nvim-R.git"
fi

DESCRIPTION="Vim plugin to work with R"
HOMEPAGE="https://github.com/jalvesaq/Nvim-R"
LICENSE="MIT"
VIM_PLUGIN_HELPFILES="${PN}.txt"

DOCS=( README.md )

src_prepare() {
	default
}
