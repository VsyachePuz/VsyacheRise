# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id: $

EAPI="6"
SLOT="2"

inherit cmake-utils flag-o-matic

DESCRIPTION="Kumir is a simple programming language and IDE"
HOMEPAGE="http://lpm.org.ru/kumir/"
SRC_URI="https://www.niisi.ru/kumir/${PN}2-${PV}.src.zip -> ${PN}-${PV}.zip"
RESTRICT="mirror"

LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"

CDEPEND="dev-qt/qtgui:*"
DEPEND="${CDEPEND}
	sys-devel/llvm[clang]
	sys-devel/clang
"
RDEPEND="${CDEPEND}
	dev-util/cmake
"

pkg_setup() {
	append-ldflags $(no-as-needed)
}

src_compile () {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install
}
