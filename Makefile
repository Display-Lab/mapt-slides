PANDOC=/usr/local/bin/pandoc

html:
	$(PANDOC) -t revealjs \
	--template=pandoc-templates/default.revealjs \
  	-o index.html \
	--slide-level=1 \
  	-V reveal.js=./reveal.js \
	-V theme=white \
	-V slideNumber=true \
	slides/*.md

pdf:
	$(PANDOC) -s \
	-o mapt-slides.pdf \
	slides/*.md

clean:
	rm mapt-slides.pdf
	rm index.html
