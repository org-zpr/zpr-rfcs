SRCS := $(shell find src/ -name '*.md')
PDFS := $(SRCS:src/%.md=pdf/%.pdf)
STYLE_SHEETS := $(shell find ./src/style -name '*.sty')
DEFAULTS := ./src/defaults.yml

all: $(PDFS)

pdf/%.pdf: src/%.md $(DEFAULTS) $(STYLE_SHEETS)
	SOURCE_DATE_EPOCH=$(shell git log -1 --pretty="format:%ct" $<) \
	pandoc $< -o $@ --defaults ${DEFAULTS}
