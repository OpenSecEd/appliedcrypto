MODULE ?= Week 4 (calendar week 6)
MODULE_RE ?= Week 4
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += lecture-randomness.md
PAGES += lecture-voting.md

include ../module.mk

# Note: Canvas treats module/page selectors as regexes.
# tilkry26 structure:
# canvaslms modules view -c "${COURSE}" "${MODULE_RE}" | rg "\tPage\t"
# tilkry25 fallback sources:
# canvaslms modules view -c "${PULL_COURSE}" "${PULL_MODULE_RE}" | rg "\tPage\t"
.PHONY: pull
pull:
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Randomness" > lecture-randomness.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Randomness" > lecture-randomness.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "voting" > lecture-voting.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "voting" > lecture-voting.md
