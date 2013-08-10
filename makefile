update: 
	cd $(RUST_SRC)
	~/rustfind/rustfind libstd/std.rs
	~/rustfind/rustfind libsyntax/syntax.rs
	~/rustfind/rustfind librustc/rustc.rs
	~/rustfind/rustfind libextra/extra.rs
	cp -r $(RUST_SRC)/libstd .
	cp -r $(RUST_SRC)/libsyntax .
	cp -r $(RUST_SRC)/librustc .
	cp -r $(RUST_SRC)/libextra .

push:  update
	git push origin gh-pages:gh-pages

