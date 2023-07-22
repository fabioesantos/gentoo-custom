# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="dummy package for gettext-tiny"
HOMEPAGE="https://github.com/sabotage-linux/gettext-tiny"
S="${WORKDIR}"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="sys-devel/gettext-tiny"
