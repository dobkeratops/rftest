# for the minute we do this manually because dependancy/order matters -
# it requires the '.rfx' from one library to create links from any other
RUSTFIND=~/rustfind/rustfind -x .
update: 
	cd $(RUST_PATH)/src;pwd;

	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libstd/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libgreen/lib.rs 
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) librustuv/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) liblibc/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libnative/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libflate/lib.rs 
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libarena/lib.rs 
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libglob/lib.rs 
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libterm/lib.rs 
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libsemver/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libuuid/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libserialize/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libsync/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libgetopts/lib.rs

	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libcollections/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libnum/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libtest/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libtime/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) librand/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libworkcache/lib.rs
#	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libextra/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) liburl/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) liblog/lib.rs

	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libsyntax/lib.rs
	export CFG_VERSION=0;export CFG_COMPILER=0;export CFG_PREFIX=0;export CFG_LIBDIR_RELATIVE=0; export CFG_RUSTLIBDIR=0;export CFG_COMPILER_HOST_TRIPLE=0; export CFG_COMPILER_TRIPLE=0;cd $(RUST_SRC);pwd; $(RUSTFIND) librustc/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) librustdoc/lib.rs

	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libfourcc/lib.rs
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) libhexfloat/lib.rs

rustc:
	cd $(RUST_PATH)/src;pwd; $(RUSTFIND) librustc/lib.rs

push: 
	cp $(RUST_PATH)/src/*.rfx .
	cp -r $(RUST_PATH)/src/libstd .
	cp -r $(RUST_PATH)/src/libcollections .
	cp -r $(RUST_PATH)/src/librustdoc .
	cp -r $(RUST_PATH)/src/liblibc .
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

