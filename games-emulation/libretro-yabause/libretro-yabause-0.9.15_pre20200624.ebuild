# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

LIBRETRO_REPO_NAME="libretro/yabause"
LIBRETRO_COMMIT_SHA="f515e5a49336195c61b751e539aadae72fbe0aa7"

inherit libretro-core

DESCRIPTION="Yabause/YabaSanshiro/Kronos libretro ports (Sega Saturn emulators)"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${S}/yabause/src/libretro"
