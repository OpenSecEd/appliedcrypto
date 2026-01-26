.PHONY: all
all: pow.pdf preimage.pdf mining.pdf
all: distribute-tx.pdf distribute-tx-malicious.pdf


.PHONY: clean
clean:
	${RM} pow.pdf pow.pdf_tex
	${RM} preimage.pdf preimage.pdf_tex
	${RM} mining.pdf mining.pdf_tex
	${RM} distribute-tx.pdf distribute-tx.pdf_tex
	${RM} distribute-tx-malicious.pdf distribute-tx-malicious.pdf_tex


INCLUDE_MAKEFILES=../../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
