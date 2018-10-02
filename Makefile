EXTENSION=md
PROCESSOR=markdown
OUTDIR=out
SHELL=bash
allfiles = $(shell find . -name '*.'$(EXTENSION))
files := $(patsubst %.md,%.html, $(allfiles))

all: $(files)

%.html: %.md
	$(PROCESSOR) $^ > $(OUTDIR)/$@
