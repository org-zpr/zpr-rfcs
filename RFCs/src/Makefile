PDF_DIR=../pdf

SRCS := $(shell find . -name '*.md')
PDFS := $(SRCS:%.md=$(PDF_DIR)/%.pdf)
STYLE_SHEETS := $(shell find ./style -name '*.sty')

all: $(PDFS)

$(PDF_DIR)/%.pdf: %.md defaults.yml $(STYLE_SHEETS)
	pandoc $< -o $@ --defaults defaults.yml
