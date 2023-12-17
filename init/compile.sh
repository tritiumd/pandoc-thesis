docker run --rm -v .:/workspace ngocptblaplafla/pandoc-texlive-full:latest \
      --pdf-engine=xelatex --listings -L include-files.lua \
      -L tables-rules.lua  -L column-div.lua -F pandoc-latex-environment  \
      -L include-code-files.lua -L multibib.lua  -L diagram.lua \
      --fail-if-warnings --from=markdown main.md --metadata-file=config.yaml \
      --template=vnthesis-oneside.tex -s -o result.pdf
