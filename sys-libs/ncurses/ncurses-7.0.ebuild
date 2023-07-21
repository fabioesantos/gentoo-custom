# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit multilib multilib-minimal preserve-libs

DESCRIPTION="dummy package for sys-libs/netbsd-curses"
HOMEPAGE="https://github.com/sabotage-linux/netbsd-curses"

LICENSE="metapackage"
# The subslot reflects the SONAME.
SLOT="0/6"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~loong ~m68k ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86 ~amd64-linux ~x86-linux ~arm64-macos ~ppc-macos ~x64-macos ~x64-solaris"
IUSE="ada +cxx debug doc gpm minimal profile split-usr +stack-realign static-libs test tinfo trace"
RESTRICT="!test? ( test )"

DEPEND="sys-libs/netbsd-curses[${MULTILIB_USEDEP}]"
RDEPEND="${DEPEND}"

S="${WORKDIR}"
