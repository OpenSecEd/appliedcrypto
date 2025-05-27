.PHONY: all
all: notes.pdf

LATEXFLAGS+=	-shell-escape

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex
SRC+=		2025.tex
SRC+=		bibsp.sty

FIGS+=		figs/Tux.pdf
FIGS+=		figs/Tux_encrypted_ecb.png

notes.pdf: notes.tex didactic.sty
notes.pdf: ${SRC} ${FIGS}

slides.pdf: slides.tex didactic.sty
slides.pdf: ${SRC} ${FIGS}

figs/%.pdf:
	${MAKE} -C figs $@


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
INCLUDE_DIDACTIC=../didactic
include ${INCLUDE_DIDACTIC}/didactic.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
