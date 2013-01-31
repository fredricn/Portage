# Copyright 1999-2010 Gentoo Foundation 
# Distributed under the terms of the GNU General Public License v2 
# $Header: $ 

EAPI="3"

DESCRIPTION="AeroFS - File Sync Without Servers"
HOMEPAGE="https://www.aerofs.com"

LICENSE="AeroFS"
SLOT="0"
KEYWORDS="~amd64 ~x86"

SRC_URI=" 
		https://dsy5cjk52fz4a.cloudfront.net/${PN}-installer.tgz
        "

RDEPEND=" 
        sys-process/procps
        app-arch/sharutils
        "

RESTRICT="mirror strip"

src_unpack() {
	unpack ${A}
}

src_install() {
	dobin "${WORKDIR}/${PN}/${PN}"
}
