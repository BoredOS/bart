all:
	# Nothing to compile

install:
	mkdir -p $(DESTDIR)/Library/images/Wallpapers
	mkdir -p $(DESTDIR)/Library/images/icons/boredos
	cp wallpapers/* $(DESTDIR)/Library/images/Wallpapers/ 2>/dev/null || true
	cp icons/boredos/*.png $(DESTDIR)/Library/images/icons/boredos/ 2>/dev/null || true

bup:
	rm -rf build/package
	mkdir -p build/package/assets/Wallpapers
	mkdir -p build/package/assets/icons/boredos
	cp wallpapers/* build/package/assets/Wallpapers/ 2>/dev/null || true
	cp icons/boredos/*.png build/package/assets/icons/boredos/ 2>/dev/null || true
	@echo 'name = "bart"' > build/package/MANIFEST.toml
	@echo 'version = "1.0.0"' >> build/package/MANIFEST.toml
	@echo '[install]' >> build/package/MANIFEST.toml
	@echo 'assets = "/Library/images"' >> build/package/MANIFEST.toml
	mkdir -p build
	tar -cf build/bart.tar -C build/package MANIFEST.toml assets
	lz4 -f build/bart.tar build/bart.bup
	rm -f build/bart.tar
	rm -rf build/package

clean:
	rm -rf build
