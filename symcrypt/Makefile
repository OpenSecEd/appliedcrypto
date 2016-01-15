.PHONY: all
all: symcrypt.pdf

FILES=		symcrypt.tex literature.tex symcrypt.bib
FILES+= 	3des.eps aes.eps aes-round.eps asymmetric.eps
FILES+= 	cbc.eps cfb.eps ctr.eps
FILES+= 	des-round.eps feistel.eps symmetric.eps

symcrypt.pdf: ${FILES}


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=../libbib
include ${INCLUDE_LIBBIB}/libbib.mk
