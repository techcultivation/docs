OUTPUTDIR = dist

SRC = $(shell find . -iname '*.md' | sed 's/ /\\ /g')

PDFS=$(addprefix $(OUTPUTDIR)/,$(SRC:.md=.pdf))
HTMLS=$(addprefix $(OUTPUTDIR)/,$(SRC:.md=.html))

all:	$(PDFS) $(HTMLS)

pdf:	$(PDFS)
html:	$(HTMLS)

$(OUTPUTDIR): 
	mkdir -p $(OUTPUTDIR)

$(OUTPUTDIR)/%.html: %.md
	mkdir -p $(@D)
	pandoc -w html -o "$@" "$<"

$(OUTPUTDIR)/%.pdf:	%.md
	mkdir -p $(@D)
	pandoc -w latex --latex-engine=xelatex -o "$@" "$<"

clean:
	rm -rf $(OUTPUTDIR)/*
