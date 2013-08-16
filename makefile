update: 
	cd $(RUST_SRC);pwd;
	
	cd $(RUST_SRC);pwd; ~/rustfind/rustfind libstd/std.rs
	cd $(RUST_SRC);pwd; ~/rustfind/rustfind libsyntax/syntax.rs
	cd $(RUST_SRC);pwd; ~/rustfind/rustfind librustc/rustc.rs
	cd $(RUST_SRC);pwd;  ~/rustfind/rustfind libextra/extra.rs

push: 
	cp $(RUST_SRC)/*.rfx .
	cp -r $(RUST_SRC)/libstd .
	cp -r $(RUST_SRC)/libsyntax .
	cp -r $(RUST_SRC)/librustc .
	cp -r $(RUST_SRC)/libextra .
	git commit -am "updated, push.."
	git push origin gh-pages:gh-pages

