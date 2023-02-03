.PHONY: all
all: dist/styles.css dist/index.html

dist/person.jpg: assets/person.jpg
	cp $^ $@

dist/holz.jpg: assets/holz.jpg
	convert $^ -gravity center -crop 100%x50%+0+0 $@

dist/styles.css: src/styles.css
	npx tailwindcss build $^  -o $@

dist/index.html: pages/index.html
	cp $^ $@

