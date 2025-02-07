LATEXFLAGS+=  -shell-escape

.PHONY: all
all: results.pdf results.sh
Makefile: results.nw
        ${NOTANGLE.mk}
INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
