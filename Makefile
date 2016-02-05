
TESTS:=$(wildcard tests/*.sh)
SRC:=$(wildcard src/*)

all: $(TESTS:tests/%.sh=build/tests/%.diff)
	@echo SUCCESS

build/tests/%.diff: build/tests/%.output tests/%.expected
	(diff --new-file $^ > $@) || (rm -f $@ && false)

build/tests/%.output: tests/%.sh tests/%.expected $(SRC)
	@echo TEST: $*
	@rm -rf $(dir $@)/$*
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

