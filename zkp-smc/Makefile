.PHONY: all
all: zkp-smc-slides.pdf

SRC+=		preamble.tex contents.tex
SRC+=		abstract.tex bibliography.bib

DEPENDS+=	bibsp.sty beamer-didactic.sty

zkp-smc-slides.pdf: zkp-smc-slides.tex ${SRC} ${FIGURES}
zkp-smc-slides.pdf: ${DEPENDS}

beamer-didactic.sty: ../beamer-didactic/beamer-didactic.sty
	${LN} $< $@

../beamer-didactic/beamer-didactic.sty:
	${MAKE} -C $(dir $@) $(notdir $@)

bibliography.bib: bibliography.bib(crypto.bib mpc.bib)
bibliography.bib(%): %


.PHONY: clean
clean:
	${RM} zkp-smc-slides.pdf
	${RM} bibliography.bib

.PHONY: distclean
distclean:
	${RM} beamer-didactic.sty
	${MAKE} -C ../beamer-didactic clean distclean
	${RM} crypto.bib mpc.bib bibsp.sty


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
