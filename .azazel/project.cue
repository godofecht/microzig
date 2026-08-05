// Azazel parity model for microzig. First target slice: the `flags` command-line
// argument parser (tools/flags), a self-contained pure-Zig module: tools/flags/
// src/root.zig imports only std, with no sibling or package imports. microzig
// requires Zig 0.17-dev, so this is modeled on the 0.17 lane (see azazel #39).
// Verified: built through the full Azazel flow on 0.17.0-dev, producing
// zig-out/lib/libflags.a.
package build

toolchain: zig: {
	lanes: ["0.17"]
	preferred: "0.17"
}

flags: #Module & {
	kind: "static"
	root: "tools/flags/src/root.zig"
}
