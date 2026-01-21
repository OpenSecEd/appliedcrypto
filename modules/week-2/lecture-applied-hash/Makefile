INCLUDE_MAKEFILES?=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk

PDFS=slides.pdf notes.pdf

BIBFILES=fingerprinting/crypto.bib commitments/crypto.bib

all: ${PDFS}

bibliography.bib: ${BIBFILES}
	rm -f $@
	cat ${BIBFILES} | bibtool --preserve.key.case=on --print.deleted.entries=off -s -d -r biblatex -o $@

slides.pdf: slides.tex contents.tex abstract.tex preamble.tex bibliography.bib
	latexmk -pdf -use-make -xelatex -8bit -shell-escape -output-directory=ltxobj slides.tex; while (grep "Rerun to get cross" ltxobj/slides.log); do latexmk -pdf -use-make -xelatex -8bit -shell-escape -output-directory=ltxobj slides.tex; done
	@if [ -e ltxobj/slides.xdv ] && [ ! -e ltxobj/slides.pdf ]; then xdvipdfmx -o ltxobj/slides.pdf ltxobj/slides.xdv; fi
	ln -sf ltxobj/slides.pdf slides.pdf

notes.pdf: notes.tex contents.tex abstract.tex preamble.tex bibliography.bib
	latexmk -pdf -use-make -xelatex -8bit -shell-escape -output-directory=ltxobj notes.tex; while (grep "Rerun to get cross" ltxobj/notes.log); do latexmk -pdf -use-make -xelatex -8bit -shell-escape -output-directory=ltxobj notes.tex; done
	@if [ -e ltxobj/notes.xdv ] && [ ! -e ltxobj/notes.pdf ]; then xdvipdfmx -o ltxobj/notes.pdf ltxobj/notes.xdv; fi
	ln -sf ltxobj/notes.pdf notes.pdf

clean:
	rm -rf ltxobj
	rm -f slides.pdf notes.pdf

.PHONY: all
