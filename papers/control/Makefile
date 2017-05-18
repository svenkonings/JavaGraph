control.pdf: control.bib control.tex
	pdflatex control
	bibtex control | true
	pdflatex control
	pdflatex control

svn:
	svn update
	pdflatex control

clean:
	rm -f *aux
	rm -f *~
	rm -f *.log
	rm -f *.dvi
	rm -f *.pdf
	rm -f *.ps
	rm -f *.idx
	rm -f *.toc
	rm -f *.bbl
	rm -f *.undo
	rm -f *.blg
	rm -f *.out
	rm -f *.lof
	rm -f *.lot
	rm -f *.glo
	rm -f *.ilg
	rm -f *.ind
	rm -f .log
