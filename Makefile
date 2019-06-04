PANDOC=/usr/local/bin/pandoc

slides:
	$(PANDOC) -t revealjs \
	--template=pandoc-templates/default.revealjs \
  	-o index.html \
	--slide-level=1 \
  	-V reveal.js=./reveal.js \
	-V theme=white slides/*.md

pdf:
	$(PANDOC) -s \
	-o mapt-slides.pdf \
	slides/*.md
