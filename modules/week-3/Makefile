MODULE ?= Week 3 (calendar week 5)
MODULE_RE ?= Week 3
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += lecture-zkp-protocols.md
PAGES += lecture-mpc-protocols.md
PAGES += lecture-non-cryptographic-attacks.md

ASSIGNMENTS += assignments/prep-usability-seminar.md
ASSIGNMENTS += assignments/optional-secure-mpc.md
ASSIGNMENTS += assignments/hac-ch14-efficient-implementation.md
ASSIGNMENTS += assignments/stealing-keys-radio.md
ASSIGNMENTS += assignments/optional-side-channels.md
ASSIGNMENTS += assignments/seminar-usability.md

include ../module.mk

# Note: Canvas treats module/page selectors as regexes.
.PHONY: pull-pages
pull-pages:
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "ZKP protocols" > lecture-zkp-protocols.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "ZKP and MPC protocols" > lecture-zkp-protocols.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "MPC protocols" > lecture-mpc-protocols.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "ZKP and MPC protocols" > lecture-mpc-protocols.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Non-cryptographic attacks" > lecture-non-cryptographic-attacks.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Non-cryptographic attacks" > lecture-non-cryptographic-attacks.md

.PHONY: pull-assignments
pull-assignments:
	@mkdir -p assignments
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Preparation for usability seminar" > assignments/prep-usability-seminar.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Preparation for usability seminar" > assignments/prep-usability-seminar.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Secure multi-party computation" > assignments/optional-secure-mpc.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Secure multi-party computation" > assignments/optional-secure-mpc.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "HAC Ch 14" > assignments/hac-ch14-efficient-implementation.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "HAC Ch 14" > assignments/hac-ch14-efficient-implementation.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Stealing Keys from PCs" > assignments/stealing-keys-radio.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Stealing Keys from PCs" > assignments/stealing-keys-radio.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Optional: Side channels" > assignments/optional-side-channels.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Optional: Side channels" > assignments/optional-side-channels.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "MANDATORY Seminar.*usability" > assignments/seminar-usability.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "MANDATORY Seminar.*usability" > assignments/seminar-usability.md
