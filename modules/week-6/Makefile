MODULE ?= Week 6 (calendar week 8)
MODULE_RE ?= Week 6
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += lecture-real-world-crypto-cases.md
PAGES += lecture-formal-methods.md

include ../module.mk

# Note: Canvas treats module/page selectors as regexes.
# tilkry26 structure:
# canvaslms modules view -c "${COURSE}" "${MODULE_RE}" | rg "\tPage\t"
# tilkry25 fallback sources:
# canvaslms modules view -c "${PULL_COURSE}" "${PULL_MODULE_RE}" | rg "\tPage\t"
.PHONY: pull
pull:
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Real-world crypto cases" > lecture-real-world-crypto-cases.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Real-world crypto cases" > lecture-real-world-crypto-cases.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Formal methods for cryptography" > lecture-formal-methods.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Formal methods for cryptography" > lecture-formal-methods.md
