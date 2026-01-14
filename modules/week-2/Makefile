MODULE ?= Week 2 (calendar week 4)
MODULE_RE ?= Week 2
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += lecture-hash-functions.md
PAGES += lecture-applied-hash-functions.md
PAGES += lecture-asymmetric-crypto.md

ASSIGNMENTS += assignments/hac-ch9-hash-functions.md
ASSIGNMENTS += assignments/hac-ch8-public-key-encryption.md
ASSIGNMENTS += assignments/hac-ch11-digital-signatures.md

include ../module.mk

# Note: Canvas treats module/page selectors as regexes.
.PHONY: pull-pages
pull-pages:
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Cryptographic hash functions" > lecture-hash-functions.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Cryptographic hash functions" > lecture-hash-functions.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Applied hash functions" > lecture-applied-hash-functions.md \
		|| printf '%s\n' '# TODO: add content for Applied hash functions.' > lecture-applied-hash-functions.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Asymmetric crypto" > lecture-asymmetric-crypto.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Asymmetric crypto" > lecture-asymmetric-crypto.md

.PHONY: pull-assignments
pull-assignments:
	@mkdir -p assignments
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "HAC Ch 9" > assignments/hac-ch9-hash-functions.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "HAC Ch 9" > assignments/hac-ch9-hash-functions.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "HAC Ch 8" > assignments/hac-ch8-public-key-encryption.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "HAC Ch 8" > assignments/hac-ch8-public-key-encryption.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "HAC Ch 11" > assignments/hac-ch11-digital-signatures.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "HAC Ch 11" > assignments/hac-ch11-digital-signatures.md
