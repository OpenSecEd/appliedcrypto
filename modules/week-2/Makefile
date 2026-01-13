MODULE ?= Week 2 (calendar week 4)
MODULE_RE ?= Week 2
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += lecture-hash-functions.md
PAGES += lecture-applied-hash-functions.md
PAGES += lecture-asymmetric-crypto.md

include ../module.mk

# Note: Canvas treats module/page selectors as regexes.
# tilkry26 structure:
# canvaslms modules view -c "${COURSE}" "${MODULE_RE}" | rg "\tPage\t"
# tilkry25 fallback sources:
# canvaslms modules view -c "${PULL_COURSE}" "${PULL_MODULE_RE}" | rg "\tPage\t"
.PHONY: pull
pull:
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Cryptographic hash functions" > lecture-hash-functions.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Cryptographic hash functions" > lecture-hash-functions.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Applied hash functions" > lecture-applied-hash-functions.md \
		|| printf '%s\n' '# TODO: add content for Applied hash functions.' > lecture-applied-hash-functions.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Asymmetric crypto" > lecture-asymmetric-crypto.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Asymmetric crypto" > lecture-asymmetric-crypto.md
