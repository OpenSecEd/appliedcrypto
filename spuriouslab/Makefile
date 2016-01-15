.PHONY: all
all: spuriouslab.pdf

FILES=		spuriouslab.tex aims.tex abstract.tex spuriouslab.bib

spuriouslab.pdf: ${FILES}
spuriouslab.pdf: llncs biblatex-lncs
spuriouslab.pdf: libbib.sty


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=../libbib
include ${INCLUDE_LIBBIB}/libbib.mk
