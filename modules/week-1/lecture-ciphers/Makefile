.PHONY: all
all: notes.pdf slides.pdf

LATEXFLAGS+=	-shell-escape

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex

DEPENDS+=	didactic.sty
DEPENDS+=	bibsp.sty
DEPENDS+=	crypto.bib

notes.pdf: notes.tex ${DEPENDS}
notes.pdf: ${SRC}

slides.pdf: slides.tex ${DEPENDS}
slides.pdf: ${SRC}

.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf


INCLUDE_MAKEFILES=../../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
INCLUDE_DIDACTIC=../../../didactic
include ${INCLUDE_DIDACTIC}/didactic.mk
INCLUDE_BIBSP=../../../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
