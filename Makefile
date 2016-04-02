manuscript:
	pandoc \
		-f markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash+implicit_figures+grid_tables+fenced_code_blocks+fenced_code_attributes+raw_tex+yaml_metadata_block \
		-t latex \
		--smart \
		--highlight-style=zenburn \
		--wrap=none \
		-o out/manuscript.pdf \
		manuscript.Rmd
	open out/manuscript.pdf
