MODULE ?= Week 5 (calendar week 7)
MODULE_RE ?= Week 5
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += prerequisite-network-security-videos.md
PAGES += lecture-protocol-design.md

include ../module.mk

# Note: Canvas treats module/page selectors as regexes.
# tilkry26 structure:
# canvaslms modules view -c "${COURSE}" "${MODULE_RE}" | rg "\tPage\t"
# tilkry25 fallback sources:
# canvaslms modules view -c "${PULL_COURSE}" "${PULL_MODULE_RE}" | rg "\tPage\t"
.PHONY: pull
pull:
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Prerequisite network security videos" > prerequisite-network-security-videos.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Prerequisite network security videos" > prerequisite-network-security-videos.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Protocol design" > lecture-protocol-design.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Protocol design" > lecture-protocol-design.md
