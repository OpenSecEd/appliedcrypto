.PHONY: all
all: zkp-smc-slides.pdf

SRC+=		preamble.tex contents.tex
SRC+=		abstract.tex bibliography.bib

DEPENDS+=	bibsp.sty didactic.sty

zkp-smc-slides.pdf: zkp-smc-slides.tex ${SRC} ${FIGURES}
zkp-smc-slides.pdf: ${DEPENDS}

bibliography.bib: bibliography.bib(crypto.bib mpc.bib)
bibliography.bib(crypto.bib): crypto.bib
bibliography.bib(mpc.bib): mpc.bib


.PHONY: all
all: README.md

README.md: video.md abstract.md
	${CAT} $^ > $@

TEX2MDFLAGS=	-s -t markdown_strict --bibliography bibliography.bib

abstract.md: abstract.tex bibliography.bib
	${CONVERT.tex.md}


.PHONY: clean
clean:
	${RM} zkp-smc-slides.pdf
	${RM} bibliography.bib
	${RM} abstract.md

.PHONY: distclean
distclean:
	${RM} beamer-didactic.sty
	${MAKE} -C ../beamer-didactic clean distclean
	${RM} crypto.bib mpc.bib bibsp.sty


INCLUDE_MAKEFILES=../../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_BIBSP=../../../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
INCLUDE_DIDACTIC=../../../beamer-didactic
include ${INCLUDE_DIDACTIC}/didactic.mk
