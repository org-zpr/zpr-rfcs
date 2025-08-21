PDF_DIR=../pdf

SRCS := $(shell find . -name '*.md')
PDFS := $(SRCS:%.md=$(PDF_DIR)/%.pdf)

all: $(PDFS)

$(PDF_DIR)/%.pdf: %.md
	echo "Generating $@"
	pandoc $< -o $@ --defaults defaults.yml
