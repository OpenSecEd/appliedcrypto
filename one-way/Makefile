.PHONY: all
all: one-way-slides.pdf

SRC+=		preamble.tex contents.tex
SRC+=		abstract.tex one-way.bib

FIGURES+=	surjection.eps hashfunc.eps

DEPENDS+=	bibsp.sty crypto.bib beamer-didactic.sty

one-way-slides.pdf: one-way-slides.tex ${SRC} ${FIGURES}
one-way-slides.pdf: ${DEPENDS}

beamer-didactic.sty: ../beamer-didactic/beamer-didactic.sty
	${LN} $< $@

../beamer-didactic/beamer-didactic.sty:
	${MAKE} -C $(dir $@) $(notdir $@)

one-way.bib: one-way.bib(crypto.bib)


.PHONY: clean
clean:
	${RM} one-way-slides.pdf
	${RM} hashfunc-eps-converted-to.pdf surjection-eps-converted-to.pdf

.PHONY: distclean
distclean:
	${RM} ${DEPENDS}
	${MAKE} -C ../beamer-didactic clean distclean


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
