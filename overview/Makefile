.PHONY: all
all: overview-slides.pdf

SRC+=		overview-preamble.tex overview-content.tex
SRC+=		abstract.tex overview.bib

FIGURES+=	surjection.eps hashfunc.eps

DEPENDS+=	bibsp.sty crypto.bib mpc.bib

overview-slides.pdf: overview-slides.tex ${SRC} ${FIGURES}
overview-slides.pdf: ${DEPENDS}


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
