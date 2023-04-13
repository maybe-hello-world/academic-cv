# Makefile for LaTeX document with BibTeX

# Set the name of the main LaTeX file
MAIN = cv
PUBLICATIONS = publications

# Set the LaTeX compiler and flags
LATEX = pdflatex
LATEXFLAGS = -interaction=nonstopmode -halt-on-error

# Set the BibTeX compiler and flags
BIBTEX = bibtex
BIBTEXFLAGS =

# Default target: compile the document
all: $(MAIN).pdf

# Compile the LaTeX document and run BibTeX
$(MAIN).pdf: $(MAIN).tex $(PUBLICATIONS).bib
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex
	$(BIBTEX) $(BIBTEXFLAGS) $(MAIN)
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex

# Clean up intermediate files
clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).pdf $(MAIN).toc $(MAIN).bbl $(MAIN).blg
