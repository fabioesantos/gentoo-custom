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
IUSE="sh static"

DEPEND="sys-libs/ncurses"
RDEPEND="
	${DEPEND}
	!app-shells/loksh
	!app-shells/ksh
"

src_configure() {
    econf --prefix=/ \
    --bindir=/bin \
    --mandir=/usr/share/man \
    --enable-ksh \
    $(use_enable sh) \
    $(use_enable static)
}

src_compile() {
    emake all
}

src_install() {
    default
}
