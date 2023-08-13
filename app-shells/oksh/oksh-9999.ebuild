# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Portable OpenBSD's ksh"
HOMEPAGE="https://github.com/ibara/oksh"

if [[ ${PV} == "9999" ]]; then
    inherit git-r3
    EGIT_REPO_URI="https://github.com/ibara/${PN}.git"
else
    SRC_URI="https://github.com/ibara/oksh/releases/download/oksh-${PV}/oksh-${PV}.tar.gz"
    KEYWORDS="~amd64 ~arm ~arm64 ~ppc64 ~riscv ~x86"
fi

LICENSE="public-domain"
SLOT="0"

DEPEND="sys-libs/ncurses"
RDEPEND="
	${DEPEND}
"

src_install() {
    dosym /usr/bin/oksh /bin/ksh
    dosym /usr/share/man/man1/oksh.1 /usr/share/man/man1/ksh.1
}
