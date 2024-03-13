docker run --rm -v .:/workspace ngocptblaplafla/pandoc-texlive-full:latest --pdf-engine=xelatex\
       --fail-if-warnings --listings --template=vnthesis.tex -L include-files.lua -L firstauthor.lua\
      -L include-code-files.lua -L diagram.lua -L tables-rules.lua -L multibib.lua -L column-div.lua\
      -F pandoc-latex-environment -s --verbose --from=markdown+emoji main.md --metadata-file=config.yaml\
      --output result.pdf
