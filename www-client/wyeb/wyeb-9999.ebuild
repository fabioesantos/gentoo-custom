# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="A vim-like webkit2gtk web browser"
HOMEPAGE="https://github.com/jun7/wyeb"
EGIT_REPO_URI="https://github.com/jun7/wyeb.git"
SRC_URI=""

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS=""

DEPEND="
	net-libs/webkit-gtk:4=
	x11-libs/gtk+:3
"
RDEPEND="${DEPEND}"
BDEPEND=""
