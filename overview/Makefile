.PHONY: all
all: overview-slides.pdf

SRC+=		preamble.tex contents.tex
SRC+=		abstract.tex overview.bib

FIGURES+=	surjection.eps hashfunc.eps

DEPENDS+=	bibsp.sty crypto.bib mpc.bib

overview-slides.pdf: overview-slides.tex ${SRC} ${FIGURES}
overview-slides.pdf: ${DEPENDS}


.PHONY: clean
clean:
	${RM} overview-slides.pdf


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
