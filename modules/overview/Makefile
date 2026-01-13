COURSE?=tilkry26
MODULE?=Course overview

PAGES+=start.md
PAGES+=registration.md
PAGES+=content.md
PAGES+=setup.md
PAGES+=LAB1.md
PAGES+=INL1.md
PAGES+=schedule.md
PAGES+=help.md
PAGES+=deadlines.md
PAGES+=grading-criteria.md
PAGES+=teachers.md
PAGES+=news-and-links.md
PAGES+=videos.md
PAGES+=booking.md

.PHONY: all
all:

STAMPDIR := .pushed.d

.PHONY: push
push: .pushed

.pushed: $(addprefix $(STAMPDIR)/,$(PAGES))
	touch $@

$(STAMPDIR)/%: %
	@mkdir -p $(dir $@)
	canvaslms pages edit -c "${COURSE}" -f "$<"
	touch $@

.PHONY: force-push
force-push:
	for page in $$(ls *.md); do \
		echo "Pushing $$page to ${COURSE} ..."; \
		canvaslms pages edit --create -c "${COURSE}" -f "$${page}"; \
	done; \
	echo "Done."

# Get list of pages:
# canvaslms pages list -c tilkry26 -M "Course overview" | cut -f 4 | tr -d '\r'
.PHONY: pull
pull:
	canvaslms pages view -c "${COURSE}" -p "Start here!" -M "${MODULE}" > start.md
	canvaslms pages view -c "${COURSE}" \
		-p "At the start: registration, canvas settings and funka" \
		> registration.md
	canvaslms pages view -c "${COURSE}" \
		-p "Content, intended learning outcomes and literature" \
		> content.md
	canvaslms pages view -c "${COURSE}" -p "Course setup" > setup.md
	canvaslms pages view -c "${COURSE}" -p "Class zoom, schedule, lab queue" \
		> schedule.md
	canvaslms pages view -c "${COURSE}" -p "How to get help" > help.md
	canvaslms pages view -c "${COURSE}" -p "Deadlines and passing the course" \
		> deadlines.md
	canvaslms pages view -c "${COURSE}" -p "Grading criteria" \
		> grading-criteria.md
	canvaslms pages view -c "${COURSE}" \
		-p "Teachers, representation, contact and naming conventions" \
		> teachers.md
	canvaslms pages view -c "${COURSE}" -p "News and Links" > news-and-links.md
	canvaslms pages view -c "${COURSE}" -p "Access to videos" > videos.md
	canvaslms pages view -c "${COURSE}" \
		-p "Booking time slots in Canvas calendar" > booking.md
