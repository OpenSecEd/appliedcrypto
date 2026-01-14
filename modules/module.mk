COURSE ?= tilkry26

STAMPDIR := .pushed.d

# Backwards compat: old push stamps (unused).
# New stamps: .pushed-pages(.d) and .pushed-assignments(.d).


.PHONY: all
all:

.PHONY: pull pull-pages pull-assignments
pull: pull-pages pull-assignments

pull-pages:

pull-assignments:

PUSH_STAMPDIR_PAGES := .pushed-pages.d
PUSH_STAMPDIR_ASSIGNMENTS := .pushed-assignments.d

.PHONY: push push-pages push-assignments
push: push-pages push-assignments

.PHONY: push-pages
ifeq ($(strip $(PAGES)),)
push-pages:
else
push-pages: .pushed-pages

.pushed-pages: $(addprefix $(PUSH_STAMPDIR_PAGES)/,$(PAGES))
	touch $@

$(PUSH_STAMPDIR_PAGES)/%: %
	@mkdir -p $(dir $@)
	canvaslms pages edit -c "${COURSE}" -f "$<"
	touch $@
endif

.PHONY: push-assignments
ifeq ($(strip $(ASSIGNMENTS)),)
push-assignments:
else
push-assignments: .pushed-assignments

.pushed-assignments: $(addprefix $(PUSH_STAMPDIR_ASSIGNMENTS)/,$(ASSIGNMENTS))
	touch $@

$(PUSH_STAMPDIR_ASSIGNMENTS)/%: %
	@mkdir -p $(dir $@)
	canvaslms assignments edit -c "${COURSE}" -f "$<"
	touch $@
endif

.PHONY: force-push force-push-pages force-push-assignments
force-push: force-push-pages force-push-assignments

force-push-pages:
	for page in $$(ls *.md 2>/dev/null); do \
		echo "Pushing $$page to ${COURSE} ..."; \
		canvaslms pages edit --create -c "${COURSE}" -f "$${page}"; \
	done; \
	echo "Done."

force-push-assignments:
	for file in $$(ls assignments/*.md 2>/dev/null); do \
		echo "Pushing $$file to ${COURSE} ..."; \
		canvaslms assignments edit --create -c "${COURSE}" -f "$${file}"; \
	done; \
	echo "Done."
