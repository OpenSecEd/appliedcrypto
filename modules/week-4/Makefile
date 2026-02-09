MODULE ?= Week 4 (calendar week 6)
MODULE_RE ?= Week 4
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += lecture-randomness.html
PAGES += lecture-rwc1.md

QUIZZES += INL1Quiz-randomness.json

SLIDES += ${COURSE_DIR}/digital-postbox-slides.pdf

ASSIGNMENTS += assignments/prep-impact-considerations.md
ASSIGNMENTS += assignments/hac-ch4-public-key-parameters.md
ASSIGNMENTS += assignments/hac-ch5-pseudorandom-bits.md
ASSIGNMENTS += assignments/seminar-impact-considerations.md
ASSIGNMENTS += assignments/design-considerations.md
ASSIGNMENTS += assignments/inl1quiz-cryptographic-concepts.md

include ../module.mk

${COURSE_DIR}/digital-postbox-slides.pdf: tutorial-digital-postbox/slides.pdf
	${LINK}

# Note: Canvas treats module/page selectors as regexes.
.PHONY: pull-pages
pull-pages:
	canvaslms pages view --html -c "${COURSE}" -M "${MODULE_RE}" \
		-p "Lecture.*Randomness" > lecture-randomness.html
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" \
		-p "Lecture.*Real-world crypto, part I" > lecture-rwc1.md

.PHONY: pull-assignments
pull-assignments:
	@mkdir -p assignments
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Preparation for impact considerations" > assignments/prep-impact-considerations.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Preparation for impact considerations" > assignments/prep-impact-considerations.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "HAC Ch 4" > assignments/hac-ch4-public-key-parameters.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "HAC Ch 4" > assignments/hac-ch4-public-key-parameters.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "HAC Ch 5" > assignments/hac-ch5-pseudorandom-bits.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "HAC Ch 5" > assignments/hac-ch5-pseudorandom-bits.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Impact considerations around crypto systems" > assignments/seminar-impact-considerations.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Impact considerations around crypto systems" > assignments/seminar-impact-considerations.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Design Considerations" > assignments/design-considerations.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Design Considerations" > assignments/design-considerations.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "INL1Quiz Cryptographic Concepts" > assignments/inl1quiz-cryptographic-concepts.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "INL1Quiz Cryptographic Concepts" > assignments/inl1quiz-cryptographic-concepts.md
