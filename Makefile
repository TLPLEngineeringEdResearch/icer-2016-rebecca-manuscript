manuscript :
	pandoc \
		-f markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash+implicit_figures+grid_tables+fenced_code_blocks+fenced_code_attributes+raw_tex+yaml_metadata_block \
		-t latex \
		--latex-engine=/usr/local/texlive/2015/bin/x86_64-darwin/pdflatex \
		--highlight-style=tango \
		--natbib \
		--wrap=none \
		-o manuscript-body.tex \
		manuscript-body.Rmd

	pdflatex manuscript.tex
	rm *.log *.aux
	open manuscript.pdf

tex:
	pandoc \
		-f markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash+implicit_figures+grid_tables+fenced_code_blocks+fenced_code_attributes+raw_tex+yaml_metadata_block \
		-t latex \
		--variable template=sig-alternate-modified-for-pandoc.tex \
		--variable documentclass=sig-alternate-05-2015 \
		--latex-engine=/usr/local/texlive/2015/bin/x86_64-darwin/pdflatex \
		--highlight-style=tango \
		--wrap=none \
		--filter=pandoc-citeproc \
		-o manuscript.tex \
		--standalone
		manuscript.Rmd
	atom manuscript.tex
