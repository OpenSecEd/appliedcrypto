MODULE ?= Week 3 (calendar week 5)
MODULE_RE ?= Week 3
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += lecture-zkp-protocols.md
PAGES += lecture-mpc-protocols.md
PAGES += lecture-non-cryptographic-attacks.md

include ../module.mk

# Note: Canvas treats module/page selectors as regexes.
# tilkry26 structure:
# canvaslms modules view -c "${COURSE}" "${MODULE_RE}" | rg "\tPage\t"
# tilkry25 fallback sources:
# canvaslms modules view -c "${PULL_COURSE}" "${PULL_MODULE_RE}" | rg "\tPage\t"
.PHONY: pull
pull:
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "ZKP protocols" > lecture-zkp-protocols.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "ZKP and MPC protocols" > lecture-zkp-protocols.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "MPC protocols" > lecture-mpc-protocols.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "ZKP and MPC protocols" > lecture-mpc-protocols.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Non-cryptographic attacks" > lecture-non-cryptographic-attacks.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Non-cryptographic attacks" > lecture-non-cryptographic-attacks.md
