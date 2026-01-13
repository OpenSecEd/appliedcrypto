MODULE ?= Week 7 (calendar week 9)
MODULE_RE ?= Week 7
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += lecture-risk-based-security.md

ASSIGNMENTS += assignments/inl1written.md

include ../module.mk

# Note: Canvas treats module/page selectors as regexes.
.PHONY: pull-pages
pull-pages:
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Risk-based security" > lecture-risk-based-security.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Risk-based security" > lecture-risk-based-security.md

.PHONY: pull-assignments
pull-assignments:
	@mkdir -p assignments
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "INL1Written" > assignments/inl1written.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "INL1Written" > assignments/inl1written.md
