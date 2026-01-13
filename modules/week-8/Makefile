MODULE ?= Week 8 (calendar week 10)
MODULE_RE ?= Week 8
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += guest-lecture.md
PAGES += lecture-conclusion.md

include ../module.mk

# Note: Canvas treats module/page selectors as regexes.
# tilkry26 structure:
# canvaslms modules view -c "${COURSE}" "${MODULE_RE}" | rg "\tPage\t"
# tilkry25 fallback sources:
# canvaslms modules view -c "${PULL_COURSE}" "${PULL_MODULE_RE}" | rg "\tPage\t"
.PHONY: pull
pull:
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Guest lecture" > guest-lecture.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "Week 7" -p "Guest lecture" > guest-lecture.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Conclusion" > lecture-conclusion.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Conclusion" > lecture-conclusion.md
