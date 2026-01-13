MODULE ?= Week 9 (calendar week 11)
MODULE_RE ?= Week 9
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

include ../module.mk

# Note: Canvas treats module/page selectors as regexes.
# tilkry26 structure:
# canvaslms modules view -c "${COURSE}" "${MODULE_RE}" | rg "\tPage\t"
# tilkry25 fallback sources:
# canvaslms modules view -c "${PULL_COURSE}" "${PULL_MODULE_RE}" | rg "\tPage\t"
.PHONY: pull
pull:
	@echo "No pages (Page items) in ${MODULE}."
