# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Linux port of OpenBSD's ksh"
HOMEPAGE="https://github.com/ibara/oksh"
SRC_URI="https://github.com/ibara/oksh/releases/download/oksh-${PV}/oksh-${PV}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc64 ~riscv ~x86"

DEPEND="sys-libs/ncurses"
RDEPEND="
	${DEPEND}
	!app-shells/ksh
"
