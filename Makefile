ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

watch-example:
	typst watch --root . --font-path=example/font example/presentation.typ

build-example:
	typst compile --root . --font-path=example/font example/presentation.typ

image-from-example:
	typst compile --root . --font-path=example/font example/presentation.typ --format png slide{0p}.png
	montage slide1.png slide2.png slide3.png slide4.png slide5.png slide6.png -tile 3x2 -geometry +20+20 -background black assets/exampleSlidesCombined.png
	rm slide*.png

create-thumbnail:
	typst compile --root . template/template.typ --format png --pages 1 assets/thumbnail.png

VERSION ?=
create-release:
	@if [ -z "$(VERSION)" ]; then \
		read -p "next version: " VERSION; \
	else \
		VERSION="$(VERSION)"; \
	fi; \
	make image-from-example; \
	make create-thumbnail; \
	cd /tmp; \
	git clone --depth 1 --no-checkout --filter="tree:0" git@github.com:KlnSdr/packages; \
	cd packages; \
	git sparse-checkout init; \
	git sparse-checkout set packages/preview/touying-htwk-stripes; \
	git remote add upstream git@github.com:typst/packages; \
	git config remote.upstream.partialclonefilter tree:0; \
	git checkout main; \
	mkdir -p packages/preview/touying-htwk-stripes/$$VERSION; \
	cp $(ROOT_DIR)/typst.toml packages/preview/touying-htwk-stripes/$$VERSION; \
	cp $(ROOT_DIR)/CHANGELOG.md packages/preview/touying-htwk-stripes/$$VERSION; \
	cp $(ROOT_DIR)/Readme.md packages/preview/touying-htwk-stripes/$$VERSION; \
	cp $(ROOT_DIR)/LICENSE packages/preview/touying-htwk-stripes/$$VERSION; \
	cp -r $(ROOT_DIR)/src/ packages/preview/touying-htwk-stripes/$$VERSION; \
	cp -r $(ROOT_DIR)/template/ packages/preview/touying-htwk-stripes/$$VERSION; \
	rm packages/preview/touying-htwk-stripes/$$VERSION/template/template.pdf; \
	git add -A;\
	git commit -m "touying-htwk-stripes:$$VERSION"; \
	git push origin main; \
	cd /tmp; \
	rm -rf packages
