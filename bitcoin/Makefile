.PHONY: all
all: bitcoin.pdf

FILES=		bitcoin.tex abstract.tex bitcoin.bib
FILES+= 	libbib.sty

bitcoin.pdf: ${FILES}


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=../libbib
include ${INCLUDE_LIBBIB}/libbib.mk
