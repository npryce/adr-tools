
TESTS=$(wildcard tests/*.sh)

all: $(TESTS:tests/%.sh=build/tests/%.diff)
	@echo SUCCESS

build/tests/%.diff: build/tests/%.output tests/%.expected
	diff --new-file $^ > $@

build/tests/%.output: tests/%.sh tests/%.expected
	@echo TEST: $*
	@mkdir -p $(dir $@)/$*
	@cd $(dir $@)/$* && PATH=$(abspath src):$(PATH) VISUAL= EDITOR= /bin/sh -x $(abspath $<) > $(abspath $@) 2>&1

clean:
	rm -rf build/

ifdef test
approved: $(patsubst %.sh,build/%.output,$(test))
	mv $< $(patsubst %.sh,%.expected,$(test))
else
approved:
	@echo usage: make test=TEST_SCRIPT approved
endif

.PHONY: all clean
.PRECIOUS: build/tests/%.output

