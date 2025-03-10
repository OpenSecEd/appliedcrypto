.PHONY: all
all: pub-key-slides.pdf

SRC+=		preamble.tex contents.tex
SRC+=		abstract.tex bibliography.bib

DEPENDS+=	bibsp.sty beamer-didactic.sty

pub-key-slides.pdf: pub-key-slides.tex ${SRC} ${FIGURES}
pub-key-slides.pdf: ${DEPENDS}

beamer-didactic.sty: ../beamer-didactic/beamer-didactic.sty
	${LN} $< $@

../beamer-didactic/beamer-didactic.sty:
	${MAKE} -C $(dir $@) $(notdir $@)

bibliography.bib: crypto.bib
bibliography.bib: bibliography.bib(pub-key.bib crypto.bib)


.PHONY: all
all: README.md

README.md: video.md abstract.md
	${CAT} $^ > $@

TEX2MDFLAGS=	-s -t markdown_strict --bibliography bibliography.bib

abstract.md: abstract.tex bibliography.bib
	${CONVERT.tex.md}


.PHONY: clean
clean:
	${RM} pub-key-slides.pdf
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
