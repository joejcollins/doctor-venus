CHAPTERS := $(shell cat chapters.txt)
META := metadata.yaml

all: book.pdf book.epub book.html

book.pdf:
	pandoc $(CHAPTERS) --metadata-file=$(META) -o $@ --pdf-engine=lualatex

book.epub:
	pandoc $(CHAPTERS) --metadata-file=$(META) -o $@

book.html:
	pandoc $(CHAPTERS) --metadata-file=$(META) -o $@

clean:
	rm -f book.pdf book.epub book.html