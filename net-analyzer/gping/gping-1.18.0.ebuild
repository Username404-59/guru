# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.4

EAPI=8

CRATES="
	aho-corasick@1.1.3
	allocator-api2@0.2.20
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.18
	anstyle-parse@0.2.6
	anstyle-query@1.1.2
	anstyle-wincon@3.0.6
	anstyle@1.0.10
	anyhow@1.0.93
	autocfg@1.4.0
	bitflags@2.6.0
	bumpalo@3.16.0
	byteorder@1.5.0
	cassowary@0.3.0
	castaway@0.2.3
	cc@1.2.1
	cfg-if@1.0.0
	chrono@0.4.38
	clap@4.5.21
	clap_builder@4.5.21
	clap_derive@4.5.18
	clap_lex@0.7.3
	colorchoice@1.0.3
	compact_str@0.8.0
	const_format@0.2.33
	const_format_proc_macros@0.2.33
	core-foundation-sys@0.8.7
	crossterm@0.28.1
	crossterm_winapi@0.9.1
	darling@0.20.10
	darling_core@0.20.10
	darling_macro@0.20.10
	deranged@0.3.11
	diff@0.1.13
	dns-lookup@2.0.4
	either@1.13.0
	equivalent@1.0.1
	errno@0.3.9
	fnv@1.0.7
	foldhash@0.1.3
	getrandom@0.2.15
	hashbrown@0.15.1
	heck@0.5.0
	hermit-abi@0.3.9
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.61
	ident_case@1.0.1
	indoc@2.0.5
	instability@0.3.3
	is_debug@1.0.1
	is_terminal_polyfill@1.70.1
	itertools@0.13.0
	itoa@1.0.11
	js-sys@0.3.72
	lazy-regex-proc_macros@3.3.0
	lazy-regex@3.3.0
	lazy_static@1.5.0
	libc@0.2.164
	linux-raw-sys@0.4.14
	lock_api@0.4.12
	log@0.4.22
	lru@0.12.5
	memchr@2.7.4
	mio@1.0.2
	num-conv@0.1.0
	num-traits@0.2.19
	num_threads@0.1.7
	once_cell@1.20.2
	os_info@3.8.2
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	paste@1.0.15
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	pretty_assertions@1.4.1
	proc-macro2@1.0.89
	quote@1.0.37
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	ratatui@0.29.0
	redox_syscall@0.5.7
	regex-automata@0.4.9
	regex-syntax@0.8.5
	regex@1.11.1
	rustix@0.38.40
	rustversion@1.0.18
	ryu@1.0.18
	scopeguard@1.2.0
	serde@1.0.215
	serde_derive@1.0.215
	shadow-rs@0.36.0
	shlex@1.3.0
	signal-hook-mio@0.2.4
	signal-hook-registry@1.4.2
	signal-hook@0.3.17
	smallvec@1.13.2
	socket2@0.5.7
	static_assertions@1.1.0
	strsim@0.11.1
	strum@0.26.3
	strum_macros@0.26.4
	syn@2.0.87
	thiserror-impl@2.0.3
	thiserror@2.0.3
	time-core@0.1.2
	time-macros@0.2.18
	time@0.3.36
	unicode-ident@1.0.13
	unicode-segmentation@1.12.0
	unicode-truncate@1.1.0
	unicode-width@0.1.14
	unicode-width@0.2.0
	unicode-xid@0.2.6
	utf8parse@0.2.2
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.95
	wasm-bindgen-macro-support@0.2.95
	wasm-bindgen-macro@0.2.95
	wasm-bindgen-shared@0.2.95
	wasm-bindgen@0.2.95
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	winapi_forked_icmpapi@0.3.7
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winping@0.10.1
	yansi@1.0.1
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
"

inherit cargo

DESCRIPTION="Ping, but with a graph"
HOMEPAGE="https://github.com/orf/gping"
SRC_URI="
	https://github.com/orf/gping/archive/refs/tags/gping-v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"
S="${WORKDIR}/${PN}-${PN}-v${PV}"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+=" Apache-2.0 MIT Unicode-DFS-2016 ZLIB"
SLOT="0"
KEYWORDS="~amd64"

QA_FLAGS_IGNORED="usr/bin/gping"

src_install() {
	cargo_src_install --path gping
	doman gping.1
}