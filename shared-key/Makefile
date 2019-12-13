.PHONY: all
all: shared-key-slides.pdf

SRC+=		preamble.tex contents.tex
SRC+=		abstract.tex bibliography.bib

DEPENDS+=	bibsp.sty crypto.bib beamer-didactic.sty

shared-key-slides.pdf: shared-key-slides.tex ${SRC} ${FIGURES}
shared-key-slides.pdf: ${DEPENDS}

beamer-didactic.sty: ../beamer-didactic/beamer-didactic.sty
	${LN} $< $@

../beamer-didactic/beamer-didactic.sty:
	${MAKE} -C $(dir $@) $(notdir $@)

bibliography.bib: bibliography.bib(shared-key.bib crypto.bib)


.PHONY: all
all: README.md

README.md: video.md abstract.md
	${CAT} $^ > $@

TEX2MDFLAGS=	-s --bibliography bibliography.bib -t markdown_strict

abstract.md: abstract.tex bibliography.bib
	${CONVERT.tex.md}


.PHONY: clean
clean:
	${RM} shared-key-slides.pdf
	${RM} bibliography.bib
	${RM} abstract.md

.PHONY: distclean
distclean:
	${RM} beamer-didactic.sty
	${MAKE} -C ../beamer-didactic clean distclean
	${RM} crypto.bib bibsp.sty


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
