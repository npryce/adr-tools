
TESTS=$(wildcard tests/*.sh)

all: $(TESTS:tests/%.sh=build/tests/%/output)
	@echo SUCCESS

build/tests/%/output: tests/%.sh tests/%.expected
	mkdir -p $(dir $@)
	cd $(dir $@) && PATH=$(abspath src):$(PATH) VISUAL= EDITOR= /bin/sh -x $(abspath $<) > $(abspath $@) 2>&1
	diff tests/$*.expected $@

clean:
	rm -rf build/

.PHONY: all clean

