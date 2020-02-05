LATEXFLAGS=	-shell-escape

.PHONY: all
all: slides.pdf

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex

EXT_SRC+= 	one-way.tex hashfunc.eps surjection.eps
EXT_SRC+= 	pub-key.tex
EXT_SRC+= 	zkp-smc.tex

one-way.tex:	../one-way/contents.tex
hashfunc.eps:	../one-way/hashfunc.eps
surjection.eps: ../one-way/surjection.eps

pub-key.tex:	../pub-key/contents.tex
zkp-smc.tex:	../zkp-smc/contents.tex

${EXT_SRC}:
	${LN} $< $@

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
	${RM} ${EXT_SRC}
	for d in one-way pub-key zkp-smc; do ${MAKE} -C ../$$d $@; done

.PHONY: distclean
distclean:
	for d in one-way pub-key zkp-smc; do ${MAKE} -C ../$$d $@; done


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
