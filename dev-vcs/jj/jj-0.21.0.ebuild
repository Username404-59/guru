# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	addr2line@0.22.0
	adler2@2.0.0
	adler@1.0.2
	ahash@0.8.11
	aho-corasick@1.1.3
	allocator-api2@0.2.18
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anes@0.1.6
	anstream@0.6.15
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anstyle@1.0.8
	anyhow@1.0.86
	arc-swap@1.7.1
	arrayvec@0.7.6
	assert_cmd@2.0.16
	assert_matches@1.5.0
	async-trait@0.1.82
	autocfg@1.3.0
	backoff@0.4.0
	backtrace@0.3.73
	bitflags@1.3.2
	bitflags@2.6.0
	blake2@0.10.6
	block-buffer@0.10.4
	bstr@1.10.0
	bumpalo@3.16.0
	byteorder@1.5.0
	bytes@1.7.1
	cassowary@0.3.0
	cast@0.3.0
	castaway@0.2.3
	cc@1.1.13
	cfg-if@1.0.0
	chrono-english@0.1.7
	chrono@0.4.38
	ciborium-io@0.2.2
	ciborium-ll@0.2.2
	ciborium@0.2.2
	clap-markdown@0.1.4
	clap@4.5.16
	clap_builder@4.5.15
	clap_complete@4.5.24
	clap_complete_nushell@4.5.3
	clap_derive@4.5.13
	clap_lex@0.7.2
	clap_mangen@0.2.23
	clru@0.6.2
	colorchoice@1.0.2
	compact_str@0.7.1
	config@0.13.4
	console@0.15.8
	core-foundation-sys@0.8.7
	cpufeatures@0.2.13
	crc32fast@1.4.2
	criterion-plot@0.5.0
	criterion@0.5.1
	crossbeam-channel@0.5.13
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.20
	crossterm@0.27.0
	crossterm_winapi@0.9.1
	crunchy@0.2.2
	crypto-common@0.1.6
	dashmap@6.0.1
	diff@0.1.13
	difflib@0.4.0
	digest@0.10.7
	dirs-sys@0.4.1
	dirs@5.0.1
	doc-comment@0.3.3
	dunce@1.0.5
	either@1.13.0
	encode_unicode@0.3.6
	encoding_rs@0.8.34
	equivalent@1.0.1
	errno@0.3.9
	esl01-renderdag@0.3.0
	faster-hex@0.9.0
	fastrand@2.1.0
	filetime@0.2.24
	fixedbitset@0.4.2
	flate2@1.0.32
	fnv@1.0.7
	form_urlencoded@1.2.1
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	futures@0.1.31
	futures@0.3.30
	generic-array@0.14.7
	getrandom@0.2.15
	gimli@0.29.0
	git2@0.19.0
	gix-actor@0.32.0
	gix-attributes@0.22.5
	gix-bitmap@0.2.11
	gix-chunk@0.4.8
	gix-command@0.3.9
	gix-commitgraph@0.24.3
	gix-config-value@0.14.8
	gix-config@0.40.0
	gix-date@0.9.0
	gix-diff@0.46.0
	gix-discover@0.35.0
	gix-features@0.38.2
	gix-filter@0.13.0
	gix-fs@0.11.3
	gix-glob@0.16.5
	gix-hash@0.14.2
	gix-hashtable@0.5.2
	gix-ignore@0.11.4
	gix-index@0.35.0
	gix-lock@14.0.0
	gix-object@0.44.0
	gix-odb@0.63.0
	gix-pack@0.53.0
	gix-packetline-blocking@0.17.5
	gix-path@0.10.10
	gix-pathspec@0.7.7
	gix-quote@0.4.12
	gix-ref@0.47.0
	gix-refspec@0.25.0
	gix-revision@0.29.0
	gix-revwalk@0.15.0
	gix-sec@0.10.8
	gix-submodule@0.14.0
	gix-tempfile@14.0.2
	gix-trace@0.1.9
	gix-traverse@0.41.0
	gix-url@0.27.5
	gix-utils@0.1.12
	gix-validate@0.9.0
	gix-worktree@0.36.0
	gix@0.66.0
	glob@0.3.1
	globset@0.4.14
	half@2.4.1
	hashbrown@0.14.5
	heck@0.5.0
	hermit-abi@0.3.9
	hermit-abi@0.4.0
	hex@0.4.3
	home@0.5.9
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.60
	idna@0.5.0
	ignore@0.4.22
	imara-diff@0.1.7
	indexmap@2.5.0
	indoc@2.0.5
	insta@1.39.0
	instant@0.1.13
	is-terminal@0.4.13
	is_terminal_polyfill@1.70.1
	itertools@0.10.5
	itertools@0.12.1
	itertools@0.13.0
	itoa@1.0.11
	jiff-tzdb-platform@0.1.0
	jiff-tzdb@0.1.0
	jiff@0.1.8
	jobserver@0.1.32
	js-sys@0.3.70
	kstring@2.0.2
	lazy_static@1.5.0
	libc@0.2.158
	libgit2-sys@0.17.0+1.8.1
	libredox@0.1.3
	libssh2-sys@0.3.0
	libz-sys@1.1.19
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.14
	lock_api@0.4.12
	log@0.4.22
	lru@0.12.4
	maplit@1.0.2
	matchers@0.1.0
	memchr@2.7.4
	memmap2@0.9.4
	minimal-lexical@0.2.1
	miniz_oxide@0.7.4
	miniz_oxide@0.8.0
	minus@5.6.1
	mio@0.8.11
	mio@1.0.2
	multimap@0.10.0
	nom@7.1.3
	nu-ansi-term@0.46.0
	num-traits@0.2.19
	num_cpus@1.16.0
	object@0.36.3
	once_cell@1.19.0
	oorandom@11.1.4
	openssl-probe@0.1.5
	openssl-src@300.3.1+3.3.1
	openssl-sys@0.9.103
	option-ext@0.2.0
	overload@0.1.1
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	paste@1.0.15
	pathdiff@0.2.1
	percent-encoding@2.3.1
	pest@2.7.11
	pest_derive@2.7.11
	pest_generator@2.7.11
	pest_meta@2.7.11
	petgraph@0.6.5
	pin-project-lite@0.2.14
	pin-utils@0.1.0
	pkg-config@0.3.30
	plotters-backend@0.3.6
	plotters-svg@0.3.6
	plotters@0.3.6
	pollster@0.3.0
	ppv-lite86@0.2.20
	predicates-core@1.0.8
	predicates-tree@1.0.11
	predicates@3.1.2
	pretty_assertions@1.4.0
	prettyplease@0.2.20
	proc-macro2@1.0.86
	prodash@28.0.0
	prost-build@0.12.6
	prost-derive@0.12.6
	prost-types@0.12.6
	prost@0.12.6
	quote@1.0.37
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	ratatui@0.26.3
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.5.3
	redox_users@0.4.6
	ref-cast-impl@1.0.23
	ref-cast@1.0.23
	regex-automata@0.1.10
	regex-automata@0.4.7
	regex-syntax@0.6.29
	regex-syntax@0.8.4
	regex@1.10.6
	roff@0.2.2
	rpassword@7.3.1
	rtoolbox@0.0.2
	rustc-demangle@0.1.24
	rustix@0.38.35
	rustversion@1.0.17
	ryu@1.0.18
	same-file@1.0.6
	scanlex@0.1.4
	scm-record@0.3.0
	scopeguard@1.2.0
	serde@1.0.209
	serde_bser@0.4.0
	serde_bytes@0.11.15
	serde_derive@1.0.209
	serde_json@1.0.127
	serde_spanned@0.6.7
	sha1_smol@1.0.1
	sha2@0.10.8
	sharded-slab@0.1.7
	shell-words@1.1.0
	shlex@1.3.0
	signal-hook-mio@0.2.4
	signal-hook-registry@1.4.2
	signal-hook@0.3.17
	similar@2.6.0
	slab@0.4.9
	smallvec@1.13.2
	smawk@0.3.2
	socket2@0.5.7
	stability@0.2.1
	static_assertions@1.1.0
	strsim@0.11.1
	strum@0.26.3
	strum_macros@0.26.4
	subtle@2.6.1
	syn@2.0.77
	tempfile@3.12.0
	terminal_size@0.3.0
	termtree@0.4.1
	test-case-core@3.3.1
	test-case-macros@3.3.1
	test-case@3.3.1
	textwrap@0.16.1
	thiserror-impl@1.0.63
	thiserror@1.0.63
	thread_local@1.1.8
	timeago@0.4.2
	tinytemplate@1.2.1
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	tokio-macros@2.4.0
	tokio-util@0.6.10
	tokio@1.40.0
	toml@0.5.11
	toml_datetime@0.6.8
	toml_edit@0.19.15
	tracing-attributes@0.1.27
	tracing-chrome@0.7.2
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	tracing@0.1.40
	typenum@1.17.0
	ucd-trie@0.1.6
	uluru@3.1.0
	unicode-bidi@0.3.15
	unicode-bom@2.0.3
	unicode-ident@1.0.12
	unicode-linebreak@0.1.5
	unicode-normalization@0.1.23
	unicode-segmentation@1.11.0
	unicode-truncate@1.1.0
	unicode-width@0.1.13
	url@2.5.2
	utf8parse@0.2.2
	valuable@0.1.0
	vcpkg@0.2.15
	version_check@0.9.5
	wait-timeout@0.2.0
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasite@0.1.0
	wasm-bindgen-backend@0.2.93
	wasm-bindgen-macro-support@0.2.93
	wasm-bindgen-macro@0.2.93
	wasm-bindgen-shared@0.2.93
	wasm-bindgen@0.2.93
	watchman_client@0.9.0
	web-sys@0.3.70
	whoami@1.5.2
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
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
	winnow@0.5.40
	winnow@0.6.18
	winreg@0.52.0
	yansi@0.5.1
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zstd-safe@6.0.6
	zstd-sys@2.0.13+zstd.1.5.6
	zstd@0.12.4
"

inherit cargo

DESCRIPTION="Jujutsu - an experimental version control system"
HOMEPAGE="https://github.com/martinvonz/jj"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/martinvonz/jj.git"
else
	SRC_URI="
		https://github.com/martinvonz/jj/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
		${CARGO_CRATE_URIS}
	"
	KEYWORDS="~amd64"
fi

LICENSE="Apache-2.0"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD MIT MPL-2.0 Unicode-DFS-2016"
SLOT="0"

BDEPEND="virtual/pkgconfig"
DEPEND="
	>=app-arch/zstd-1.5.5:=
	=dev-libs/libgit2-1.8*:0/1.8
	dev-libs/openssl
	net-libs/libssh2:=
	sys-libs/zlib
"
RDEPEND="${DEPEND}"

QA_FLAGS_IGNORED="usr/bin/${PN}"

pkg_setup() {
	export LIBGIT2_NO_VENDOR=1
	export LIBSSH2_SYS_USE_PKG_CONFIG=1
	export OPENSSL_NO_VENDOR=1
	export PKG_CONFIG_ALLOW_CROSS=1
	export ZSTD_SYS_USE_PKG_CONFIG=1
}

src_unpack() {
	if [[ ${PV} == 9999 ]]; then
		git-r3_src_unpack
		cargo_live_src_unpack
	else
		cargo_src_unpack
	fi
}

src_install() {
	cargo_src_install --path cli
}
