
TESTS:=$(wildcard tests/*.sh)
SRC:=$(wildcard src/*)

check: $(TESTS:tests/%.sh=build/tests/%.diff)
	@echo SUCCESS

build/tests/%.diff: build/tests/%.output tests/%.expected
	@diff --side-by-side $^ > $@ || ! cat $@

build/tests/%.output: tests/%.sh tests/%.expected $(SRC)
	@echo TEST: $*
	@rm -rf $(dir $@)/$*
	@mkdir -p $(dir $@)/$*
	@(cd $(dir $@)/$* && \
	  PATH=/bin:/usr/bin:$(abspath src):$(abspath tests) \
	  ADR_DATE=1992-01-12 \
	  VISUAL= \
	  EDITOR= \
	  PS4='+ ' \
	    /bin/sh -x $(abspath $<) > $(abspath $@) 2>&1) || ! cat $@

clean:
	rm -rf build/

.PHONY: all clean
.PRECIOUS: build/tests/%.output
.DELETE_ON_ERROR:
