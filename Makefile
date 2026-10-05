# GNU Make 4.3+ schedules the shared profiles and explicit catalog paths.
.DEFAULT_GOAL := compare
.NOTPARALLEL:
.SUFFIXES:
MAKEFLAGS += --no-builtin-rules

ifeq ($(PERMUTER),1)
$(error Generate per-TU settings with tools/permuter_compile.py and pass --settings to the permuter importer)
endif

ARM_LDFLAGS :=
ARM_LDLIBS :=
LINK_BASE_FLAGS := $(ARM_LDFLAGS) $(ARM_LDLIBS)

define newline


endef
BUILD_CONFIG := $(shell python3 -B tools/build_config.py make-config)
ifneq ($(.SHELLSTATUS),0)
$(error Failed to read compiler profiles)
endif
$(eval $(subst |,$(newline),$(BUILD_CONFIG)))

# Query and clean commands never load generated dependency files or a build graph.
ifneq ($(filter-out clean print-compile-contract print-build-settings,$(MAKECMDGOALS)),)
READ_BUILD_GRAPH := 1
else ifeq ($(MAKECMDGOALS),)
READ_BUILD_GRAPH := 1
endif
ifeq ($(READ_BUILD_GRAPH),1)
BUILD_GRAPH := $(shell python3 -B tools/build_graph.py)
ifneq ($(.SHELLSTATUS),0)
$(error Failed to read build graph)
endif
$(eval $(subst |,$(newline),$(BUILD_GRAPH)))
DEPS := $(shell find build/usa build/host -name '*.d' -type f 2>/dev/null)
-include $(DEPS)
endif

.PHONY: compare compare-rom compare-overlays clean tags FORCE
compare: compare-rom compare-overlays

clean:
	python3 -B tools/build_actions.py clean

tags:
	mkdir -p build/usa
	ctags -R -f build/usa/tags --options=.opts.ctags --exclude=build .

# Only effective content changes update a stamp's mtime.
FORCE:
build/usa/stamps/%.stamp: FORCE
	@python3 -B tools/build_compile.py stamp $*
build/usa/stamps/binutils.stamp: FORCE
	@python3 -B tools/build_deps.py stamp $@ --tool arm-none-eabi-as --tool arm-none-eabi-ld --tool arm-none-eabi-objcopy --value='$(LINK_BASE_FLAGS)'

.DELETE_ON_ERROR:
.PHONY: print-compile-contract print-build-settings
print-compile-contract:
	@python3 -B tools/build_config.py legacy $(SOURCE)
print-build-settings:
	@python3 -B tools/build_config.py settings
