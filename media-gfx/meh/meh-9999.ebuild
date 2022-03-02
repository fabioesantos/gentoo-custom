# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 eutils
EGIT_REPO_URI="https://github.com/jhawthorn/meh.git"

DESCRIPTION="A minimalist image viewer using raw XLib."
HOMEPAGE="http://www.johnhawthorn.com/meh"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
x11-libs/libXext
virtual/jpeg:*
media-libs/giflib
media-libs/libpng:*"
RDEPEND="${DEPEND}"

src_prepare() {
	default
	sed Makefile \
		-e 's|/usr/local|/usr|g' \
		-i || die
}
