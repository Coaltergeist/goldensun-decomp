# GNU Make 4.3+ compatibility entry point; both backends share one graph.
BUILD_BACKEND ?= ninja
export BUILD_BACKEND
export GS_BUILD_ARM_LDFLAGS = $(ARM_LDFLAGS)
export GS_BUILD_ARM_LDLIBS = $(ARM_LDLIBS)
.DEFAULT_GOAL := compare
.NOTPARALLEL:
.SUFFIXES:
MAKEFLAGS += --no-builtin-rules

ifeq ($(PERMUTER),1)
$(error Generate per-TU settings with tools/permuter_compile.py and pass --settings to the permuter importer)
endif

ARM_LDFLAGS :=
ARM_LDLIBS :=

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
ifeq ($(BUILD_BACKEND),make)
ifeq ($(READ_BUILD_GRAPH),1)
BUILD_GRAPH := $(shell python3 -B tools/build_graph.py)
ifneq ($(.SHELLSTATUS),0)
$(error Failed to read build graph)
endif
$(eval $(subst |,$(newline),$(BUILD_GRAPH)))
DEPS := $(shell find build/usa build/host -name '*.d' -type f 2>/dev/null)
-include $(DEPS)
endif

else ifeq ($(BUILD_BACKEND),ninja)
NINJA_TARGETS := $(sort compare compare-rom compare-overlays build verify configure $(filter-out clean tags print-compile-contract print-build-settings,$(MAKECMDGOALS)))
.PHONY: $(NINJA_TARGETS)
$(NINJA_TARGETS):
	python3 -B tools/build.py --backend ninja $@
.DEFAULT:
	python3 -B tools/build.py --backend ninja $@
else
$(error BUILD_BACKEND must be make or ninja)
endif

.PHONY: clean tags
clean:
	python3 -B tools/build.py clean

tags:
	mkdir -p build/usa
	ctags -R -f build/usa/tags --options=.opts.ctags --exclude=build .

.DELETE_ON_ERROR:
.PHONY: print-compile-contract print-build-settings
print-compile-contract:
	@python3 -B tools/build_config.py legacy $(SOURCE)
print-build-settings:
	@python3 -B tools/build_config.py settings
