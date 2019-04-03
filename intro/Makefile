.PHONY: all
all: intro-slides.pdf

SRC+=		preamble.tex contents.tex
SRC+=		abstract.tex intro.bib

DEPENDS+=	bibsp.sty beamer-didactic.sty

intro-slides.pdf: intro-slides.tex ${SRC} ${FIGURES}
intro-slides.pdf: ${DEPENDS}

beamer-didactic.sty: ../beamer-didactic/beamer-didactic.sty
	${LN} $< $@

../beamer-didactic/beamer-didactic.sty:
	${MAKE} -C $(dir $@) $(notdir $@)

bibliography.bib: bibliography(intro.bib)


.PHONY: clean
clean:
	${RM} intro-slides.pdf
	${RM} bibliography.bib

.PHONY: distclean
distclean:
	${RM} bibsp.sty
	${RM} beamer-didactic.sty
	${MAKE} -C ../beamer-didactic clean distclean


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
