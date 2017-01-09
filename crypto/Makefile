.PHONY: all
all: crypto.pdf

FILES=		crypto.tex abstract.tex crypto.bib
FILES+= 	security.png

crypto.pdf: ${FILES}

security.png:
	wget -O $@ http://imgs.xkcd.com/comics/security.png 


.PHONY: clean-depends
clean-depends:
	${RM} security.png


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_BIBSP=../bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
