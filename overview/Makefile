.PHONY: all
all: overview-slides.pdf

SRC+=		preamble.tex contents.tex
SRC+=		abstract.tex overview.bib

DEPENDS+=	bibsp.sty crypto.bib mpc.bib beamer-didactic.sty

overview-slides.pdf: overview-slides.tex ${SRC} ${FIGURES}
overview-slides.pdf: ${DEPENDS}

beamer-didactic.sty: ../beamer-didactic/beamer-didactic.sty
	${LN} $< $@

../beamer-didactic/beamer-didactic.sty:
	${MAKE} -C $(dir $@) $(notdir $@)


.PHONY: clean
clean:
	${RM} overview-slides.pdf

.PHONY: distclean
distclean:
	${RM} beamer-didactic.sty
	${MAKE} -C ../beamer-didactic clean distclean
	${RM} crypto.bib mpc.bib bibsp.sty


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
