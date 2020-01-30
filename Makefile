all: lua out-dir lua_interop.o web

lua:
	cd /lua-5.1.5/src && make generic CC='emcc -s WASM=1'

out-dir:
	mkdir -p out/

web:
	cp src/web/* out/

lua_interop.o:
	emcc -I/lua-5.1.5/src src/c/lua_interop.c /lua-5.1.5/src/liblua.a \
		-s WASM=1 -O2 \
		-o out/lua-interop.js \
		-s "EXTRA_EXPORTED_RUNTIME_METHODS=['ccall']"

clean:
	rm -rf out/
	cd  /lua-5.1.5/src && make clean
