.PHONY: all
all: trnsfr-results.sh trnsfr-results.pdf

.INTERMEDIATE: trnsfr-results.tex
trnsfr-results.pdf: trnsfr-results.nw
	${NOWEAVE.pdf}

trnsfr-results.sh: trnsfr-results.nw
	${NOTANGLE.sh}
	chmod +x $@

.PHONY: clean
clean:
	${RM} trnsfr-results.aux
	${RM} trnsfr-results.fdb_latexmk
	${RM} trnsfr-results.fls
	${RM} trnsfr-results.log
	${RM} trnsfr-results.sh
	${RM} trnsfr-results.tex
	${RM} trnsfr-results.toc
	${RM} trnsfr-results.tex trnsfr-results.pdf

INCLUDE_MAKEFILES=../makefiles
include $(INCLUDE_MAKEFILES)/noweb.mk
