# Copyright 1999-2016 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

inherit git-r3

DESCRIPTION="NetLink MONitor - A lightweight udevadm monitor replacement."
HOMEPAGE="http://r-36.net/scm/nlmon"
EGIT_REPO_URI="git://r-36.net/nlmon"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

RDEPEND="sys-fs/mdevd"
DEPEND="
	${RDEPEND}
"

src_install() {
	emake DESTDIR="${D}" install
}
