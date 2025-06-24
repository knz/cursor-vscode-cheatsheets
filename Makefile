.PHONY: all clean

LATEX := xelatex
TEXFILES := $(wildcard *.tex)
PDFFILES := $(TEXFILES:.tex=.pdf)

all: $(PDFFILES)

%.pdf: %.tex
	$(LATEX) $<

clean:
	rm -f *.aux *.log *.pdf 