# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit toolchain-funcs git-2

DESCRIPTION="a filename transformation tool"
HOMEPAGE="https://github.com/fredricn/Namet"
EGIT_REPO_URI="git://github.com/fredricn/Namet"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""


src_compile() {

	$(tc-getCC) ${LDFLAGS} ${CFLAGS} -o "${PN}" "${PN}.c" || die

}


src_install() {

	dodir "usr/bin"

	cp "${PN}" "${D}usr/bin/${PN}" || die "Install failed"

}






