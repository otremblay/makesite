EXTENSION ?= md
PROCESSOR ?= markdown
OUTDIR=out
SHELL=bash
allfiles = $(shell find . -name '*.'$(EXTENSION))
files := $(patsubst %.$(EXTENSION),%.html, $(allfiles))
PRECONTENT ='<html><head><title>$(TITLE)</title></head><body>'
POSTCONTENT := '</body></html>'
TITLE ?= "DEFAULT TITLE"

all: $(files)

%.html: %.$(EXTENSION)
	echo $(PRECONTENT) > $(OUTDIR)/$@
	$(PROCESSOR) $^ >> $(OUTDIR)/$@
	echo $(POSTCONTENT) >> $(OUTDIR)/$@

