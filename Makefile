watch-example:
	typst watch --root . --font-path=example/font example/presentation.typ

build-example:
	typst compile --root . --font-path=example/font example/presentation.typ
