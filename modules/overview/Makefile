MODULE ?= Course overview
PULL_COURSE ?= tilkry25
PULL_MODULE ?= Course Memo

PAGES += start.md
PAGES += registration.md
PAGES += content.md
PAGES += setup.md
PAGES += LAB1.md
PAGES += INL1.md
PAGES += schedule.md
PAGES += help.md
PAGES += deadlines.md
PAGES += grading-criteria.md
PAGES += teachers.md
PAGES += news-and-links.md
PAGES += videos.md
PAGES += booking.md

include ../module.mk

# tilkry26 structure:
# canvaslms modules view -c "${COURSE}" "${MODULE}" | rg "\tPage\t"
# tilkry25 fallback sources (module name differs from tilkry26):
# canvaslms pages list -c "${PULL_COURSE}" -M "${PULL_MODULE}" | cut -f 4 | tr -d '\r'
.PHONY: pull
pull:
	canvaslms pages view -c "${COURSE}" -M "${MODULE}" -p "Start here!" > start.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE}" -p "Start here!" > start.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE}" \
		-p "At the start: registration, canvas settings and funka" \
		> registration.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE}" \
			-p "At the start: registration, canvas settings and funka" \
			> registration.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE}" \
		-p "Content, intended learning outcomes and literature" \
		> content.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE}" \
			-p "Content, intended learning outcomes and literature" \
			> content.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE}" -p "Course setup" > setup.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE}" -p "Course setup" > setup.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE}" -p "Class zoom, schedule, lab queue" \
		> schedule.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE}" -p "Class zoom, schedule, lab queue" \
			> schedule.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE}" -p "How to get help" > help.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE}" -p "How to get help" > help.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE}" -p "Deadlines and passing the course" \
		> deadlines.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE}" -p "Deadlines and passing the course" \
			> deadlines.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE}" -p "Grading criteria" > grading-criteria.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE}" -p "Grading criteria" > grading-criteria.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE}" \
		-p "Teachers, representation, contact and naming conventions" \
		> teachers.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE}" \
			-p "Teachers, representation, contact and naming conventions" \
			> teachers.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE}" -p "News and Links" > news-and-links.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE}" -p "News and Links" > news-and-links.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE}" -p "Access to videos" > videos.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE}" -p "Access to videos" > videos.md
	canvaslms pages view -c "${COURSE}" -M "${MODULE}" -p "Booking time slots in Canvas calendar" > booking.md \
		|| canvaslms pages view -c "${PULL_COURSE}" -M "${PULL_MODULE}" -p "Booking time slots in Canvas calendar" > booking.md
