ifneq ($(CONTAINERIZED),1)
QUALITY_IMAGE := overview:quality
BUNDLE_NAME := pokerlost-overview
QUALITY_EXTRA_TARGETS :=
COVERAGE_COMMAND = sh -ec 'printf "%s\n" "Coverage: notApplicable (documentation contract checks; no product runtime)." | tee coverage/summary.md'
VERSION_COMMAND = $(QUALITY_RUN) python docker/release.py version --name $(BUNDLE_NAME)
RELEASE_CHECK_COMMAND = $(QUALITY_RUN) python docker/release.py release-check --name $(BUNDLE_NAME)
RECEIPT_COMMAND = $(QUALITY_RUN) python docker/release.py receipt
BUILD_COMMAND = $(QUALITY_RUN) python docker/release.py bundle-build --name $(BUNDLE_NAME)
BUILD_RECEIPT_COMMAND = $(QUALITY_RUN) python docker/release.py capture-build --name $(BUNDLE_NAME)
VERIFY_COMMAND = $(QUALITY_RUN) python docker/release.py bundle-verify --name $(BUNDLE_NAME)
IMAGE_COMMAND = printf "%s\n" "notApplicable: no runtime image"
OFFLINE_PREFLIGHT_COMMAND = true
include docker/quality.mk
else
.PHONY: help lint typecheck test check
help:
	@printf '%s\n' 'Native documentation checks: lint test check; Docker owns bundle verification.'
lint:
	git -c safe.directory=/app diff --check HEAD -- .
	python tools/check_documentation.py --documents README.md CONTRIBUTING.md AGENTS.md docs/README.md docs/architecture.md docs/sprints.md docs/decisions/0001-dev-first.md docs/service_map.md docs/serviceMap.md docs/poker_service.md docs/decisions.md docs/change-ledger.md docs/analysis/table_entry.md docs/licenses.md docs/development.md docs/versioning.md docs/release_guide.md docs/release-guide.md CHANGELOG.md
typecheck:
	@printf '%s\n' 'notApplicable: no product type system'
test: lint
	python tools/test_bundle_version.py
check: test
endif
