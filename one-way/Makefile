.PHONY: all
all: one-way-slides.pdf

SRC+=		preamble.tex contents.tex
SRC+=		abstract.tex bibliography.bib

FIGURES+=	surjection.eps hashfunc.eps

DEPENDS+=	bibsp.sty beamer-didactic.sty

one-way-slides.pdf: one-way-slides.tex ${SRC} ${FIGURES}
one-way-slides.pdf: ${DEPENDS}

beamer-didactic.sty: ../beamer-didactic/beamer-didactic.sty
	${LN} $< $@

../beamer-didactic/beamer-didactic.sty:
	${MAKE} -C $(dir $@) $(notdir $@)

bibliography.bib: bibliography.bib(one-way.bib crypto.bib)


.PHONY: all
all: README.md

README.md: video.md abstract.md
	${CAT} $^ > $@

TEX2MDFLAGS=	-s --bibliography bibliography.bib -t markdown_strict

abstract.md: abstract.tex bibliography.bib
	${CONVERT.tex.md}


.PHONY: clean
clean:
	${RM} one-way-slides.pdf
	${RM} hashfunc-eps-converted-to.pdf surjection-eps-converted-to.pdf
	${RM} bibliography.bib
	${RM} abstract.md

.PHONY: distclean
distclean:
	${RM} ${DEPENDS}
	${MAKE} -C ../beamer-didactic clean distclean


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
