COURSE ?= tilkry26

STAMPDIR := .pushed.d

.PHONY: all
all:

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
