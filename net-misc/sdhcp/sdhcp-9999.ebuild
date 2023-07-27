# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Simple dhcp client"
HOMEPAGE="https://git.2f30.org/sdhcp/"
EGIT_REPO_URI="git.2f30.org/sdhcp.git"

LICENSE="MIT"
SLOT="0"

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install
	newinitd "${FILESDIR}/sdhcp-openrc" sdhcp
}
