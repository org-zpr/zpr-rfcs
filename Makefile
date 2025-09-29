srcdir = ./src
pdfdir = ./pdf
SRCS := $(dir $(wildcard $(srcdir)/*/*.md))
PDFS := $(SRCS:$(srcdir)/%/=$(pdfdir)/%.pdf)
TEMPLATES := $(shell find $(srcdir)/templates -name '*.latex')
DEFAULTS := $(srcdir)/defaults/defaults.yaml

all: $(PDFS)

$(pdfdir)/17-ZPR-Data-Protocol.pdf: DEFAULTS := $(DEFAULTS) $(srcdir)/defaults/chapters-and-biblio.yaml
$(pdfdir)/%.pdf: $(srcdir)/%/* $(DEFAULTS) $(TEMPLATES)
	SOURCE_DATE_EPOCH=$(shell git log -1 --pretty="format:%ct" $<) \
	pandoc $(srcdir)/$*/*.md -o $@ --defaults ${DEFAULTS} --resource-path $(srcdir)/$* --metadata-file $(srcdir)/$*/metadata.yaml
