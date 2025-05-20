CHAPTERS := $(shell cat chapters.txt)
META := metadata.yaml

all: book.pdf book.epub book.html

.PHONY: book.pdf
book.pdf:
	pandoc $(CHAPTERS) --metadata-file=$(META) -o $@ --pdf-engine=lualatex

epub:
	pandoc $(CHAPTERS) --metadata-file=$(META) -o $@

html:
	pandoc $(CHAPTERS) --metadata-file=$(META) -o $@

clean:
	rm -f book.pdf book.epub book.html