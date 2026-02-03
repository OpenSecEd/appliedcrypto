.PHONY: all
all: slides.pdf notes.pdf

LATEXFLAGS+=	-shell-escape

# didactic pulls in pythontex; enable the corresponding build rules.
TEX_PYTHONTEX=1

# latexmk with -use-make asks make for these PythonTeX marker files.
ltxobj/pythontex-files-slides/slides.pytxmcr: ltxobj/slides.pytxcode
	cd ltxobj && ${PYTHONTEX} ${PYTHONTEXFLAGS} slides

ltxobj/pythontex-files-notes/notes.pytxmcr: ltxobj/notes.pytxcode
	cd ltxobj && ${PYTHONTEX} ${PYTHONTEXFLAGS} notes

pythontex-files-slides/slides.pytxmcr: ltxobj/pythontex-files-slides/slides.pytxmcr
	${MKDIR} pythontex-files-slides
	-${LN} ../$< $@

pythontex-files-notes/notes.pytxmcr: ltxobj/pythontex-files-notes/notes.pytxmcr
	${MKDIR} pythontex-files-notes
	-${LN} ../$< $@

# latexmk sometimes requests these beamer aux files via make. They are created
# by XeLaTeX in ltxobj/ during the normal build; provide no-op targets to avoid
# noisy "No rule to make target" errors.
.PHONY: slides.nav slides.toc
slides.nav slides.toc:
	@:

# biblatex uses biber via .bcf; make's generic .aux -> .bbl rule uses bibtexu
# and fails for biblatex documents.
ltxobj/slides.bbl: ltxobj/slides.bcf
	${BIBLIOGRAPHY.bcf}

ltxobj/notes.bbl: ltxobj/notes.bcf
	${BIBLIOGRAPHY.bcf}

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex

DEPENDS+=	lex-eidas.pdf

notes.pdf: notes.tex
notes.pdf: ${SRC}
notes.pdf: slides.pdf

slides.pdf: slides.tex
slides.pdf: ${SRC}

lex-eidas.pdf:
	curl -o $@ https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32014R0910&from=EN


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf

.PHONY: distclean
distclean:
	${RM} lex-eidas.pdf


INCLUDE_MAKEFILES=../../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
