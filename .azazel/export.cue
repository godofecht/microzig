package build

_modules: {
	"flags": flags
}

// Export the toolchain too, so the declared 0.17 lane reaches build_spec.zig.
_toolchain: toolchain

build: modules: {
	for k, v in _modules {
		(k): {
			kind:     v.kind
			root:     v.root
			deps:     v.deps
			optimize: profiles[v.profile].optimize
		}
	}
}

build: toolchain: _toolchain
