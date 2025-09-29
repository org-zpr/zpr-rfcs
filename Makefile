SRCS := $(shell find src/ -name '*.md')
PDFS := $(SRCS:src/%.md=pdf/%.pdf)
TEMPLATES := $(shell find ./src/templates -name '*.sty')
DEFAULTS := ./src/defaults/defaults.yml

all: $(PDFS)

pdf/%.pdf: src/%.md $(DEFAULTS) $(TEMPLATES)
	SOURCE_DATE_EPOCH=$(shell git log -1 --pretty="format:%ct" $<) \
	pandoc $< -o $@ --defaults ${DEFAULTS}
