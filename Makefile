watch-example:
	typst watch --root . --font-path=example/font example/presentation.typ

build-example:
	typst compile --root . --font-path=example/font example/presentation.typ

image-from-example:
	typst compile --root . --font-path=example/font example/presentation.typ --format png slide{0p}.png
	montage slide1.png slide2.png slide3.png slide4.png slide5.png slide6.png -tile 3x2 -geometry +20+20 -background black assets/exampleSlidesCombined.png
	rm slide*.png

create-thumbnail:
	typst compile --root . template/template.typ --format png --pages 1 template/thumb.png
