.PHONY: all
all: pubkey.pdf

FILES=		pubkey.tex literature.tex pubkey.bib
FILES+= 	security.png rsa.eps asymmetric.eps
FILES+= 	hashfunc.eps surjection.eps hmac.eps mac.eps mac-hash.eps
FILES+= 	bitcoin-pow.png bitcoin-powchain.png bitcoin-privacy.png
FILES+= 	bitcoin-stamp.png bitcoin-transaction.png bitcoin-transfer.png

pubkey.pdf: ${FILES}

security.png:
	wget -O $@ http://imgs.xkcd.com/comics/security.png 


.PHONY: clean-depends
clean-depends:
	${RM} security.png


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=../libbib
include ${INCLUDE_LIBBIB}/libbib.mk
