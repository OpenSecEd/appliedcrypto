.PHONY: all
all: notes.pdf slides.pdf

LATEXFLAGS+=	-shell-escape

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex

DEPENDS+=	bibsp.sty
DEPENDS+=	crypto.bib

FIG+=		bitcoin-powchain.png
FIG+=		bitcoin-pow.png
FIG+=		bitcoin-privacy.png
FIG+=		bitcoin-stamp.png
FIG+=		bitcoin-transaction.png
FIG+=		bitcoin-transfer.png
FIG+=		merkle-tree.png
FIGS+=		pow.pdf
FIGS+=		preimage.pdf
FIGS+=		mining.pdf

notes.pdf: notes.tex
notes.pdf: ${SRC} ${DEPENDS} $(addprefix fig/,${FIGS})

slides.pdf: slides.tex
slides.pdf: ${SRC} ${DEPENDS} $(addprefix fig/,${FIGS})


$(addprefix fig/, ${FIGS}):
	${MAKE} -C $(dir $@) $(notdir $@)


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf

.PHONY: distclean
distclean:
	${MAKE} -C fig clean


INCLUDE_MAKEFILES=../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
