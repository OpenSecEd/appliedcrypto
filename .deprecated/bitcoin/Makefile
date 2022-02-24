.PHONY: all
all: bitcoin.pdf

FILES=		bitcoin.tex abstract.tex bitcoin.bib
FILES+= 	bibsp.sty

bitcoin.pdf: ${FILES}


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
