# Copyright 1999-2010 Gentoo Foundation 
# Distributed under the terms of the GNU General Public License v2 
# $Header: $ 

EAPI="2" 

DESCRIPTION="Spotify desktop client" 
HOMEPAGE="http://www.spotify.com/" 

LICENSE="Spotify" 
SLOT="0" 
KEYWORDS="~amd64 ~x86" 
IUSE="gnome qt"
USE="gnome qt"

MY_PV="_${PV}.g21c7566.632-1" 
MY_P="${PN}-client" 

SRC_BASE="http://repository.spotify.com/pool/non-free/${PN:0:1}/${PN}/" 
SRC_URI=" 
        x86?   ( ${SRC_BASE}${MY_P}${MY_PV}_i386.deb ) 
        amd64? ( ${SRC_BASE}${MY_P}${MY_PV}_amd64.deb ) 
		gnome? ( ${SRC_BASE}${MY_P}-gnome-support${MY_PV}_all.deb )
		qt?    ( ${SRC_BASE}${MY_P}-qt${MY_PV}_all.deb )
        " 

RDEPEND=" 
        dev-libs/openssl:0.9.8 
        >=media-libs/alsa-lib-1.0.14 
        >=sys-devel/gcc-4.0 
        >=sys-libs/glibc-2.6 
        >=x11-libs/qt-core-4.5 
        >=x11-libs/qt-dbus-4.5 
        >=x11-libs/qt-gui-4.5 
        >=x11-libs/qt-webkit-4.5 
        " 

RESTRICT="mirror strip" 

src_unpack() { 
        for MY_A in ${A}; do 
                unpack ${MY_A} 
                unpack ./data.tar.gz 
        done 
} 

src_install() { 
        mv "${WORKDIR}"/usr "${D}" || die "Install failed" 
} 
