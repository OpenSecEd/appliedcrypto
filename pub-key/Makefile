.PHONY: all
all: pub-key-slides.pdf

SRC+=		preamble.tex contents.tex
SRC+=		abstract.tex pub-key.bib

DEPENDS+=	bibsp.sty beamer-didactic.sty

pub-key-slides.pdf: pub-key-slides.tex ${SRC} ${FIGURES}
pub-key-slides.pdf: ${DEPENDS}

beamer-didactic.sty: ../beamer-didactic/beamer-didactic.sty
	${LN} $< $@

../beamer-didactic/beamer-didactic.sty:
	${MAKE} -C $(dir $@) $(notdir $@)

pub-key.bib: pub-key.bib(bibliography.bib crypto.bib)


.PHONY: clean
clean:
	${RM} pub-key-slides.pdf

.PHONY: distclean
distclean:
	${RM} beamer-didactic.sty
	${MAKE} -C ../beamer-didactic clean distclean
	${RM} crypto.bib bibsp.sty


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk