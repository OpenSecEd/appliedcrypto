.PHONY: all
all: centralized.pdf p2p.pdf
all: file-parts.pdf torrent-hashes.pdf
all: merkle-tree.pdf
all: git-commit.pdf
all: git-objects.pdf
all: git-challenge-1.pdf
all: git-challenge-2.pdf


.PHONY: clean
clean:
	${RM} centralized.pdf p2p.pdf
	${RM} centralized.pdf_tex p2p.pdf_tex
	${RM} file-parts.pdf torrent-hashes.pdf
	${RM} file-parts.pdf_tex torrent-hashes.pdf_tex
	${RM} merkle-tree.pdf merkle-tree.pdf_tex
	${RM} git-commit.pdf git-commit.pdf_tex
	${RM} git-objects.pdf git-objects.pdf_tex
	${RM} git-challenge-1.pdf git-challenge-1.pdf_tex
	${RM} git-challenge-2.pdf git-challenge-2.pdf_tex


INCLUDE_MAKEFILES=../../../makefiles
include ${INCLUDE_MAKEFILES}/doc.mk
