# Makefile for LaTeX report

MAIN = main

all: $(MAIN).pdf

report: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex
	-pdflatex -interaction=nonstopmode $(MAIN).tex
	-bibtex main
	-pdflatex -interaction=nonstopmode $(MAIN).tex
	-pdflatex -interaction=nonstopmode $(MAIN).tex

clean:
	rm -f *.aux *.log *.out *.bbl *.blg *.pdf