path := $(shell pwd)
filename := main

all:
	make pdf open

pdf:
	pdflatex \
		-file-line-error \
		-interaction=nonstopmode \
		-synctex=1 \
		-output-format=pdf \
		-output-directory=$(path)/out \
		-aux-directory=$(path)/aux \
		$(filename).tex

open:
	open $(path)/out/$(filename).pdf
