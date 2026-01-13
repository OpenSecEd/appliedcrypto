MODULE ?= Week 6 (calendar week 8)
MODULE_RE ?= Week 6
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += lecture-real-world-crypto-cases.md
PAGES += lecture-formal-methods.md

ASSIGNMENTS += assignments/sev3-ch20-advanced-crypto-engineering.md
ASSIGNMENTS += assignments/video-signal-x3dh.md
ASSIGNMENTS += assignments/x3dh-extended-triple-dh.md
ASSIGNMENTS += assignments/video-double-ratchet.md
ASSIGNMENTS += assignments/double-ratchet-algorithm.md
ASSIGNMENTS += assignments/how-tor-works.md
ASSIGNMENTS += assignments/tor-second-generation-onion-router.md
ASSIGNMENTS += assignments/lab-proverif.md

include ../module.mk

# Note: Canvas treats module/page selectors as regexes.
.PHONY: pull-pages
pull-pages:
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Real-world crypto cases" > lecture-real-world-crypto-cases.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Real-world crypto cases" > lecture-real-world-crypto-cases.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Formal methods for cryptography" > lecture-formal-methods.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Formal methods for cryptography" > lecture-formal-methods.md

.PHONY: pull-assignments
pull-assignments:
	@mkdir -p assignments
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "SEv3 Ch 20" > assignments/sev3-ch20-advanced-crypto-engineering.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "SEv3 Ch 20" > assignments/sev3-ch20-advanced-crypto-engineering.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "How Signal" > assignments/video-signal-x3dh.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "How Signal" > assignments/video-signal-x3dh.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Extended Triple Diffie-Hellman" > assignments/x3dh-extended-triple-dh.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Extended Triple Diffie-Hellman" > assignments/x3dh-extended-triple-dh.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Double Ratchet Messaging Encryption" > assignments/video-double-ratchet.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Double Ratchet Messaging Encryption" > assignments/video-double-ratchet.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Double Ratchet Algorithm" > assignments/double-ratchet-algorithm.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Double Ratchet Algorithm" > assignments/double-ratchet-algorithm.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "How Tor Works" > assignments/how-tor-works.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "How Tor Works" > assignments/how-tor-works.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Second-Generation Onion Router" > assignments/tor-second-generation-onion-router.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Second-Generation Onion Router" > assignments/tor-second-generation-onion-router.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Introduction to ProVerif" > assignments/lab-proverif.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Introduction to ProVerif" > assignments/lab-proverif.md
