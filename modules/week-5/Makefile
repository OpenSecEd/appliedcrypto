MODULE ?= Week 5 (calendar week 7)
MODULE_RE ?= Week 5
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += prerequisite-network-security-videos.md
PAGES += lecture-protocol-design.md

ASSIGNMENTS += assignments/sev3-ch4-protocols.md
ASSIGNMENTS += assignments/hac-ch10-identification-authentication.md
ASSIGNMENTS += assignments/hac-ch12-key-establishment.md
ASSIGNMENTS += assignments/hac-ch13-key-management.md
ASSIGNMENTS += assignments/hac-ch15-patents-standards.md

include ../module.mk

# Note: Canvas treats module/page selectors as regexes.
.PHONY: pull-pages
pull-pages:
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Prerequisite network security videos" > prerequisite-network-security-videos.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Prerequisite network security videos" > prerequisite-network-security-videos.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Protocol design" > lecture-protocol-design.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Protocol design" > lecture-protocol-design.md

.PHONY: pull-assignments
pull-assignments:
	@mkdir -p assignments
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "SEv3 Ch 4" > assignments/sev3-ch4-protocols.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "SEv3 Ch 4" > assignments/sev3-ch4-protocols.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "HAC Ch 10" > assignments/hac-ch10-identification-authentication.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "HAC Ch 10" > assignments/hac-ch10-identification-authentication.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "HAC Ch 12" > assignments/hac-ch12-key-establishment.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "HAC Ch 12" > assignments/hac-ch12-key-establishment.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "HAC Ch 13" > assignments/hac-ch13-key-management.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "HAC Ch 13" > assignments/hac-ch13-key-management.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "HAC Ch 15" > assignments/hac-ch15-patents-standards.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "HAC Ch 15" > assignments/hac-ch15-patents-standards.md
