# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_COMMIT_SHA="7eb7bf107e4aa8e084978676576d9cd9a6b29fba"

inherit vcs-snapshot

DESCRIPTION="Glsl shaders converted by hand from libretro's glsl-shaders repo"
HOMEPAGE="https://github.com/libretro/glsl-shaders"
SRC_URI="https://github.com/libretro/glsl-shaders/archive/${LIBRETRO_COMMIT_SHA}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
