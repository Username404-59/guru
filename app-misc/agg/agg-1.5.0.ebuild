# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	addr2line@0.24.2
	adler2@2.0.0
	adler@1.0.2
	ahash@0.7.6
	ahash@0.8.3
	aho-corasick@0.7.20
	anstream@0.2.6
	anstyle-parse@0.1.1
	anstyle-wincon@0.2.0
	anstyle@0.3.5
	anyhow@1.0.70
	arrayref@0.3.7
	arrayvec@0.7.6
	async-compression@0.4.15
	atty@0.2.14
	autocfg@1.1.0
	avt@0.14.0
	backtrace@0.3.74
	base64@0.22.1
	bitflags@1.3.2
	bitflags@2.6.0
	bumpalo@3.12.0
	bytemuck@1.13.1
	byteorder-lite@0.1.0
	byteorder@1.5.0
	bytes@1.7.2
	cc@1.1.30
	cfg-if@1.0.0
	clap@3.2.23
	clap@4.2.1
	clap_builder@4.2.1
	clap_derive@3.2.18
	clap_lex@0.2.4
	clap_lex@0.4.1
	color_quant@1.1.0
	concolor-override@1.0.0
	concolor-query@0.3.3
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	core_maths@0.1.0
	crc32fast@1.3.2
	crossbeam-channel@0.5.7
	crossbeam-deque@0.8.3
	crossbeam-epoch@0.9.14
	crossbeam-utils@0.8.15
	data-url@0.3.1
	dirs-sys@0.4.0
	dirs@5.0.0
	dunce@1.0.3
	either@1.8.1
	env_logger@0.10.0
	errno-dragonfly@0.1.2
	errno@0.3.0
	fallible_collections@0.4.7
	flate2@1.0.25
	float-cmp@0.9.0
	fnv@1.0.7
	fontconfig-parser@0.5.2
	fontdb@0.22.0
	fontdue@0.7.2
	form_urlencoded@1.2.1
	futures-channel@0.3.27
	futures-core@0.3.31
	futures-io@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-util@0.3.31
	getrandom@0.2.15
	gif-dispose@4.0.0
	gif@0.12.0
	gif@0.13.1
	gifsicle@1.93.0
	gifski@1.10.3
	gimli@0.31.1
	glob@0.3.1
	hashbrown@0.11.2
	hashbrown@0.12.3
	hashbrown@0.13.2
	heck@0.4.1
	hermit-abi@0.1.19
	hermit-abi@0.2.6
	hermit-abi@0.3.1
	http-body-util@0.1.2
	http-body@1.0.1
	http@1.1.0
	httparse@1.8.0
	humantime@2.1.0
	hyper-rustls@0.27.3
	hyper-util@0.1.9
	hyper@1.5.0
	idna@0.5.0
	image-webp@0.1.3
	imagequant@4.1.1
	imagesize@0.13.0
	imgref@1.9.4
	indexmap@1.9.3
	io-lifetimes@1.0.9
	ipnet@2.7.2
	is-terminal@0.4.6
	itoa@1.0.6
	js-sys@0.3.61
	kurbo@0.11.1
	libc@0.2.159
	libm@0.2.8
	linux-raw-sys@0.3.0
	lodepng@3.7.2
	log@0.4.22
	loop9@0.1.3
	memchr@2.5.0
	memmap2@0.9.5
	memoffset@0.8.0
	mime@0.3.17
	miniz_oxide@0.5.4
	miniz_oxide@0.6.2
	miniz_oxide@0.8.0
	mio@0.8.11
	natord@1.0.9
	noisy_float@0.2.0
	num-traits@0.2.15
	num_cpus@1.15.0
	object@0.36.5
	once_cell@1.20.2
	openssl-probe@0.1.5
	os_str_bytes@6.5.0
	pbr@1.1.1
	percent-encoding@2.3.1
	pico-args@0.5.0
	pin-project-lite@0.2.14
	pin-utils@0.1.0
	png@0.17.6
	ppv-lite86@0.2.20
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@1.0.87
	quick-error@2.0.1
	quinn-proto@0.11.8
	quinn-udp@0.5.5
	quinn@0.11.5
	quote@1.0.37
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rayon-core@1.11.0
	rayon@1.7.0
	redox_syscall@0.2.16
	redox_users@0.4.3
	regex-syntax@0.6.29
	regex@1.7.3
	reqwest@0.12.8
	resize@0.7.4
	resvg@0.44.0
	rgb@0.8.36
	ring@0.17.8
	roxmltree@0.18.0
	roxmltree@0.20.0
	rustc-demangle@0.1.24
	rustc-hash@2.0.0
	rustix@0.37.5
	rustls-native-certs@0.8.0
	rustls-pemfile@2.2.0
	rustls-pki-types@1.10.0
	rustls-webpki@0.102.8
	rustls@0.23.14
	rustybuzz@0.18.0
	ryu@1.0.13
	schannel@0.1.23
	scopeguard@1.1.0
	security-framework-sys@2.10.0
	security-framework@2.10.0
	serde@1.0.159
	serde_derive@1.0.159
	serde_json@1.0.95
	serde_urlencoded@0.7.1
	shellexpand@3.1.0
	shlex@1.3.0
	simplecss@0.2.1
	siphasher@1.0.1
	slab@0.4.8
	slotmap@1.0.7
	smallvec@1.13.2
	socket2@0.5.7
	spin@0.9.8
	strict-num@0.1.1
	strsim@0.10.0
	subtle@2.6.1
	svgtypes@0.15.2
	syn@1.0.109
	syn@2.0.79
	sync_wrapper@1.0.1
	termcolor@1.2.0
	textwrap@0.16.0
	thiserror-impl@1.0.40
	thiserror@1.0.40
	thread_local@1.1.7
	tiny-skia-path@0.11.4
	tiny-skia@0.11.4
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-rustls@0.26.0
	tokio-util@0.7.12
	tokio@1.38.1
	tower-service@0.3.2
	tracing-core@0.1.30
	tracing@0.1.37
	try-lock@0.2.4
	ttf-parser@0.15.2
	ttf-parser@0.24.1
	unicode-bidi-mirroring@0.3.0
	unicode-bidi@0.3.13
	unicode-ccc@0.3.0
	unicode-ident@1.0.8
	unicode-normalization@0.1.22
	unicode-properties@0.1.3
	unicode-script@0.5.5
	unicode-vo@0.1.0
	unicode-width@0.1.14
	untrusted@0.9.0
	url@2.5.2
	usvg@0.44.0
	utf8parse@0.2.1
	version_check@0.9.4
	want@0.3.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.95
	wasm-bindgen-futures@0.4.34
	wasm-bindgen-macro-support@0.2.95
	wasm-bindgen-macro@0.2.95
	wasm-bindgen-shared@0.2.95
	wasm-bindgen@0.2.95
	web-sys@0.3.61
	weezl@0.1.8
	wild@2.1.0
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-registry@0.2.0
	windows-result@0.2.0
	windows-strings@0.1.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	xmlparser@0.13.5
	xmlwriter@0.1.0
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zeroize@1.8.1
	zune-core@0.4.12
	zune-jpeg@0.4.13
"

inherit cargo

DESCRIPTION="Command-line tool for generating animated GIF files from asciicast v2 files"
HOMEPAGE="https://github.com/asciinema/agg"
SRC_URI="https://github.com/asciinema/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="Apache-2.0"
# Dependent crate licenses
LICENSE+="
	AGPL-3+ Apache-2.0 BSD-2 BSD GPL-3+ ISC MIT MPL-2.0 Unicode-DFS-2016
	ZLIB
	|| ( CC0-1.0 MIT-0 )
"
SLOT="0"
KEYWORDS="~amd64"

QA_FLAGS_IGNORED="usr/bin/${PN}"
