update: 
	cd $(RUST_PATH)/src;pwd;
	
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libstd/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libcollections/lib.rs
#	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libextra/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libserialize/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libsync/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind liblog/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libterm/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind librand/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libgetopts/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libarena/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libflate/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libtime/lib.rs

	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libsyntax/lib.rs
	export CFG_VERSION=0;export CFG_COMPILER=0;export CFG_PREFIX=0;export CFG_LIBDIR_RELATIVE=0; export CFG_RUSTLIBDIR=0;export CFG_COMPILER_TRIPLE=0;cd $(RUST_SRC);pwd; ~/rustfind/rustfind librustc/lib.rs

	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libnum/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind librustdoc/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libnative/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind liburl/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libtest/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libfourcc/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind librustuv/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libworkcache/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libuuid/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libglob/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libgreen/lib.rs
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind libhexfloat/lib.rs

#	cd $(RUST_PATH)/src;pwd;  ~/rustfind/rustfind libextra/lib.rs

rustc:
	cd $(RUST_PATH)/src;pwd; ~/rustfind/rustfind librustc/lib.rs

push: 
	cp $(RUST_PATH)/src/*.rfx .
	cp -r $(RUST_PATH)/src/libstd .
	cp -r $(RUST_PATH)/src/libcollections .
	cp -r $(RUST_PATH)/src/librustdoc .
	cp -r $(RUST_PATH)/src/libsyntax .
	cp -r $(RUST_PATH)/src/liblog .
	cp -r $(RUST_PATH)/src/librustc .
#	cp -r $(RUST_PATH)/src/libextra .
	cp -r $(RUST_PATH)/src/libserialize .
	cp -r $(RUST_PATH)/src/libnum .
	cp -r $(RUST_PATH)/src/libgetopts .
	cp -r $(RUST_PATH)/src/libnative .
	cp -r $(RUST_PATH)/src/libsync .
	cp -r $(RUST_PATH)/src/liburl .
	cp -r $(RUST_PATH)/src/libtime .
	cp -r $(RUST_PATH)/src/libtest .
	cp -r $(RUST_PATH)/src/libterm .
	cp -r $(RUST_PATH)/src/librand .
	cp -r $(RUST_PATH)/src/libflate .
	cp -r $(RUST_PATH)/src/libfourcc .
	cp -r $(RUST_PATH)/src/librustuv .
	cp -r $(RUST_PATH)/src/libworkcache .
	cp -r $(RUST_PATH)/src/libuuid .
	cp -r $(RUST_PATH)/src/libglob .
	cp -r $(RUST_PATH)/src/libgreen .
	cp -r $(RUST_PATH)/src/libhexfloat .

	git commit -am "updated, push.."
	git push origin gh-pages:gh-pages

