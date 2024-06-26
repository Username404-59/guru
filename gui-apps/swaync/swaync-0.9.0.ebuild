# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson vala gnome2-utils

MY_PN="SwayNotificationCenter"
DESCRIPTION="A simple notification daemon with a GTK gui for notifications and control center"
HOMEPAGE="https://github.com/ErikReider/SwayNotificationCenter"
SRC_URI="https://github.com/ErikReider/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${MY_PN}-${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="pulseaudio"

DEPEND="
	dev-libs/libgee
	dev-libs/glib:2
	dev-libs/gobject-introspection
	dev-libs/json-glib
	pulseaudio? (
		media-libs/libpulse
	)
	dev-libs/wayland
	>=gui-libs/gtk-layer-shell-0.7.0[introspection]
	gui-libs/libhandy:1
	sys-apps/dbus
	x11-libs/gdk-pixbuf:2
	x11-libs/gtk+:3
"
RDEPEND="
	${DEPEND}
	x11-libs/cairo
	x11-libs/pango
"
BDEPEND="
	$(vala_depend)
	app-text/scdoc
"

src_prepare() {
	! use pulseaudio && local PATCHES=( "${FILESDIR}"/${P}-pulsefree.patch )
	default
	vala_setup
}

pkg_postinst() {
	gnome2_schemas_update
}

pkg_postrm() {
	gnome2_schemas_update
}
