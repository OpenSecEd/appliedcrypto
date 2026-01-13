MODULE ?= Week 8 (calendar week 10)
MODULE_RE ?= Week 8
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += guest-lecture.md
PAGES += lecture-conclusion.md

ASSIGNMENTS += assignments/inl1oral.md

include ../module.mk

# Note: Canvas treats module/page selectors as regexes.
.PHONY: pull-pages
pull-pages:
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Guest lecture" > guest-lecture.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "Week 7" -p "Guest lecture" > guest-lecture.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Conclusion" > lecture-conclusion.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Conclusion" > lecture-conclusion.md

.PHONY: pull-assignments
pull-assignments:
	@mkdir -p assignments
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "INL1Oral" > assignments/inl1oral.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "INL1Oral" > assignments/inl1oral.md
