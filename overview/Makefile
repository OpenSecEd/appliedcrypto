.PHONY: all
all: overview-slides.pdf

SRC+=		overview-preamble.tex overview-content.tex
SRC+=		abstract.tex overview.bib

FIGURES+=	surjection.eps hashfunc.eps

DEPENDS+=	libbib.sty

overview-slides.pdf: overview-slides.tex ${SRC} ${FIGURES}
overview-slides.pdf: ${DEPENDS}


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=../libbib
include ${INCLUDE_LIBBIB}/libbib.mk
