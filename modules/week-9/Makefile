MODULE ?= Week 9 (calendar week 11)
MODULE_RE ?= Week 9
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

ASSIGNMENTS += assignments/inl1oral.md

include ../module.mk

.PHONY: pull-pages
pull-pages:
	@echo "No pages (Page items) in ${MODULE}."

.PHONY: pull-assignments
pull-assignments:
	@mkdir -p assignments
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "INL1Oral" > assignments/inl1oral.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "INL1Oral" > assignments/inl1oral.md
