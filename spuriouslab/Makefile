.PHONY: all
all: spuriouslab.pdf

FILES=		spuriouslab.tex aims.tex abstract.tex spuriouslab.bib

spuriouslab.pdf: ${FILES}
spuriouslab.pdf: llncs biblatex-lncs
spuriouslab.pdf: bibsp.sty


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
