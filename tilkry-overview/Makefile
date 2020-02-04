LATEXFLAGS=	-shell-escape

.PHONY: all
all: slides.pdf

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex

EXT_SRC+= 	../one-way/contents.tex
EXT_SRC+= 	../pub-key/contents.tex
EXT_SRC+= 	../zkp-smc/contents.tex

DEPENDS+= 	bibsp.sty

slides.pdf: slides.tex
slides.pdf: bibliography.bib(../one-way/bibliography.bib)
slides.pdf: bibliography.bib(../pub-key/bibliography.bib)
slides.pdf: bibliography.bib(../zkp-smc/bibliography.bib)
slides.pdf: ${SRC} ${DEPENDS}
slides.pdf: ${EXT_SRC}

bibliography.bib(../one-way/bibliography.bib): ../one-way/bibliography.bib
bibliography.bib(../pub-key/bibliography.bib): ../pub-key/bibliography.bib
bibliography.bib(../zkp-smc/bibliography.bib): ../zkp-smc/bibliography.bib

../%:
	${MAKE} -C $(dir $@) $(notdir $@)

.PHONY: clean
clean:
	${RM} slides.pdf
	${RM} bibliography.bib
	for d in one-way pub-key zkp-smc; do ${MAKE} -C ../$$d $@; done

.PHONY: distclean
distclean:
	for d in one-way pub-key zkp-smc; do ${MAKE} -C ../$$d $@; done


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
