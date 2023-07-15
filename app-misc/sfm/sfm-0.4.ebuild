# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit savedconfig

DESCRIPTION="Simple file manager."
HOMEPAGE="https://github.com/afify/sfm"
SRC_URI="https://github.com/afify/sfm/archive/refs/tags/v${PV}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	default
	sed config.mk \
		-e 's|/usr/local|/usr|g' \
		-i || die

	restore_config config.h
}

src_install() {
	emake DESTDIR="${D}" install
	save_config config.h
}
