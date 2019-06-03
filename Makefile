pandoc -t revealjs --template=pandoc-templates/default.revealjs \
  -o ./index.html  --slide-level=1 \
  -V reveal.js=./reveal.js  -V theme=white ./slides/*.md