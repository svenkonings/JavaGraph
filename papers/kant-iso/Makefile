DOC=kant-iso

all: $(DOC).tex $(DOC).bib
	pdflatex $(DOC)
	bibtex $(DOC)

clean:
	rm -f *.aux *.log *.ps *.dvi *.toc *.lo* *.bbl *.blg *.out *.brf *~ $(DOC).pdf
