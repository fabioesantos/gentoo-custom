# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"
ETYPE="sources"
K_WANT_GENPATCHES="base extras"
K_GENPATCHES_VER="1"
K_SECURITY_UNSUPPORTED="1"
K_NOSETEXTRAVERSION="1"

inherit kernel-2
detect_version
detect_arch

KEYWORDS="~amd64 ~x86"
HOMEPAGE="https://liquorix.net/"
IUSE="+cjk"

DESCRIPTION="Liquorix kernel is best one for desktop, multimedia and gaming workloads"

ZEN_URI="https://github.com/zen-kernel/zen-kernel/releases/download/v${PV}-lqx1/v${PV}-lqx1.patch.xz"
CJK_URI="https://github.com/zhmars/cjktty-patches/raw/master/v${KV_MAJOR}.x/cjktty-${KV_MAJOR}.${KV_MINOR}.patch"
SRC_URI="${KERNEL_URI} ${GENPATCHES_URI} ${ARCH_URI} ${ZEN_URI} ${CJK_URI}"

src_unpack() {
	UNIPATCH_LIST_DEFAULT="${DISTDIR}/v${PV}-lqx1.patch.xz"
	UNIPATCH_LIST=""
	if use cjk; then
		UNIPATCH_LIST+="${DISTDIR}/cjktty-${KV_MAJOR}.${KV_MINOR}.patch"
	fi

	kernel-2_src_unpack
}
