MODULE ?= Week 1 (calendar week 3)
MODULE_RE ?= Week 1
PULL_COURSE ?= tilkry25
PULL_MODULE_RE ?= $(MODULE_RE)

PAGES += lecture-intro.html
PAGES += lecture-ciphers.html

QUIZZES += INL1Quiz-ciphers.json

ASSIGNMENTS += assignments/hac-ch6-stream-ciphers.md
ASSIGNMENTS += assignments/hac-ch7-block-ciphers.md
ASSIGNMENTS += assignments/cryptanalysis-of-ciphertexts.md
ASSIGNMENTS += assignments/aes-nist-fips-197.md
ASSIGNMENTS += assignments/implement-aes-kattis.md
ASSIGNMENTS += assignments/aes-presentation.md
ASSIGNMENTS += assignments/optional-cryptopals.md

SLIDES += ${COURSE_DIR}/intro-slides.pdf
SLIDES += ${COURSE_DIR}/ciphers-slides.pdf

include ../module.mk

${COURSE_DIR}/intro-slides.pdf: lecture-intro/slides.pdf
	${LINK}

${COURSE_DIR}/ciphers-slides.pdf: lecture-ciphers/slides.pdf
	${LINK}

# Note: Canvas treats module/page selectors as regexes.
.PHONY: pull-pages
pull-pages:
	canvaslms pages view --html -c "${COURSE}" -M "${MODULE_RE}" -p "Lecture .*: Intro" > lecture-intro.html \
		|| canvaslms pages view --html -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Lecture .*: Intro" > lecture-intro.html
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Lecture .*: Intro" > lecture-intro.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Lecture .*: Intro" > lecture-intro.md
	canvaslms pages view --html -c "${COURSE}" -M "${MODULE_RE}" -p "Lecture .*: Ciphers" > lecture-ciphers.html \
		|| canvaslms pages view --html -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Lecture .*: Ciphers" > lecture-ciphers.html
	canvaslms pages view -c "${COURSE}" -M "${MODULE_RE}" -p "Lecture .*: Ciphers" > lecture-ciphers.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -p "Lecture .*: Ciphers" > lecture-ciphers.md

.PHONY: pull-quizzes
pull-quizzes:
	canvaslms quizzes export -Ic "${COURSE}" -a "^INL1Quiz Ciphers$$" \
		> INL1Quiz-ciphers.json

.PHONY: pull-assignments
pull-assignments:
	@mkdir -p assignments
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "HAC Ch 6" > assignments/hac-ch6-stream-ciphers.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "HAC Ch 6" > assignments/hac-ch6-stream-ciphers.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "HAC Ch 7" > assignments/hac-ch7-block-ciphers.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "HAC Ch 7" > assignments/hac-ch7-block-ciphers.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Cryptanalysis of Ciphertexts" > assignments/cryptanalysis-of-ciphertexts.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Cryptanalysis of Ciphertexts" > assignments/cryptanalysis-of-ciphertexts.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "FIPS 197" > assignments/aes-nist-fips-197.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "FIPS 197" > assignments/aes-nist-fips-197.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Implement AES" > assignments/implement-aes-kattis.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Implement AES" > assignments/implement-aes-kattis.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "AES presentation" > assignments/aes-presentation.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "AES presentation" > assignments/aes-presentation.md
	canvaslms assignments view -c "${COURSE}" -M "${MODULE_RE}" -a "Cryptopals" > assignments/optional-cryptopals.md \
		|| canvaslms assignments view -c "${PULL_COURSE}" -M "${PULL_MODULE_RE}" -a "Cryptopals" > assignments/optional-cryptopals.md
