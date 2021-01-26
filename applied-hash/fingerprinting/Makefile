.PHONY: all
all: notes.pdf slides.pdf

LATEXFLAGS+=	-shell-escape

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex
SRC+=		../hash-review.tex

DEPENDS+=	bibsp.sty
DEPENDS+=	crypto.bib

FIGS+=		centralized.pdf
FIGS+=		p2p.pdf
FIGS+=		file-parts.pdf
FIGS+=		torrent-hashes.pdf
FIGS+=		git-objects.pdf
FIGS+=		git-commit.pdf
FIGS+=		git-challenge-1.pdf git-challenge-2.pdf

notes.pdf: notes.tex
notes.pdf: ${SRC} ${DEPENDS} $(addprefix fig/,${FIGS})

slides.pdf: slides.tex
slides.pdf: ${SRC} ${DEPENDS} $(addprefix fig/,${FIGS})


$(addprefix fig/, ${FIGS}):
	${MAKE} -C $(dir $@) $(notdir $@)


.PHONY: all
all: README.md

README.md: video.md abstract.md
	${CAT} video.md abstract.md > $@

.INTERMEDIATE: abstract.md
abstract.md: abstract.tex
	${CONVERT.tex.md}


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf

.PHONY: distclean
distclean:
	${MAKE} -C fig clean distclean


INCLUDE_MAKEFILES=../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/doc.mk
INCLUDE_BIBSP=../../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
