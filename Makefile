SRCS := $(dir $(wildcard src/*/*.md))
PDFS := $(SRCS:src/%/=pdf/%.pdf)
TEMPLATES := $(shell find ./src/templates -name '*.latex')
DEFAULTS := ./src/defaults/defaults.yml

all: $(PDFS)

pdf/%.pdf: src/%/* $(DEFAULTS) $(TEMPLATES)
	SOURCE_DATE_EPOCH=$(shell git log -1 --pretty="format:%ct" $<) \
	pandoc src/$*/*.md -o $@ --defaults ${DEFAULTS} --resource-path src/$*
