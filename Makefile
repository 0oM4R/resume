generate: 
	test -d docs || mkdir docs
	pandoc README.md -f markdown -t html -s -o docs/index.html \
  --metadata title="Omar Kassem resume" \
  --include-in-header=templates/template.html
	pandoc README.md --pdf-engine=xelatex -o docs/resume.pdf 