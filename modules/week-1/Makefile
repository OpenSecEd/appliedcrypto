MODULE ?= Week 1 (calendar week 3)
MODULE_RE ?= Week 1
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += lecture-intro.md
PAGES += lecture-ciphers.md

include ../module.mk

# Note: Canvas treats module/page selectors as regexes.
# tilkry26 structure:
# canvaslms modules view -c "${COURSE}" "${MODULE_RE}" | rg "\tPage\t"
# tilkry25 fallback sources:
# canvaslms modules view -c "${PULL_COURSE}" "${PULL_MODULE_RE}" | rg "\tPage\t"
.PHONY: pull
pull:
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Lecture .*: Intro" > lecture-intro.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Lecture .*: Intro" > lecture-intro.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Lecture .*: Ciphers" > lecture-ciphers.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Lecture .*: Ciphers" > lecture-ciphers.md
