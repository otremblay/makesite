EXTENSION=md
PROCESSOR=markdown
OUTDIR=out
SHELL=bash
allfiles = $(shell find . -name '*.'$(EXTENSION))
files := $(patsubst %.md,%.html, $(allfiles))
PRECONTENT ='<html><head></head><body>'
POSTCONTENT := '</body></html>'

all: $(files)

%.html: %.md
	echo $(PRECONTENT) > $(OUTDIR)/$@
	$(PROCESSOR) $^ >> $(OUTDIR)/$@
	echo $(POSTCONTENT) >> $(OUTDIR)/$@

