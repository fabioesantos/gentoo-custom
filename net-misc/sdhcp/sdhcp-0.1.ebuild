# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Simple dhcp client"
HOMEPAGE="https://git.2f30.org/sdhcp/"
SRC_URI="https://dl.2f30.org/releases/sdhcp-${PV}.tar.gz"
#S="${WORKDIR}"

LICENSE="MIT"
SLOT="0"

KEYWORDS="~amd64"

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install
	newinitd "${FILESDIR}/sdhcp-openrc" sdhcp
}
