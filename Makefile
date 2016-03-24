test-template:
	pandoc \
		-f markdown \
		-t latex \
		-o test.pdf \
		manuscript.Rmd
