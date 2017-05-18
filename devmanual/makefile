# Makefile for generating dvi, ps or pdf files of a specified TEX-file
#
# To generate the dvi-file, type:
#	"make dvi"
# To generate the ps-file, type:
#	"make ps"
# To generate the pdf-file, type:
#	"make pdf" or just "make"

MASTER = devmanual

# Subdirectories where figure and code files are stored
FIG_DIR = fig
SRC_DIR = src

# Lists of local LaTeX-related files
TEX_FILES = $(wildcard *.tex)
STY_FILES = $(wildcard *.sty)
BIB_FILE  = $(MASTER).bib

# bibtex options
MIN_CROSS_REF = 2

ALL_FILES = $(TEX_FILES) $(STY_FILES) $(BIB_FILE) $(FIG2EPS_FIGURES) $(MASTER).pdf

# List of local figure files
EPS_FIG_FILES = \
	$(wildcard $(FIG_DIR)/*.eps.fig)

PDF_FIG_FILES = \
	$(wildcard $(FIG_DIR)/*.eps.fig)

TEX_FIG_FILES = \
	$(wildcard $(FIG_DIR)/*.tex.fig)

GIF_FILES = $(wildcard $(FIG_DIR)/*.gif) 

PNG_FILES = # $(wildcard $(FLOW_FIG_DIR)/*.png) # $(wildcard $(SEMANTICS_FIG_DIR)/*.png) 

# List of local source code files
JAVA_FILES = $(wildcard $(codedir)/*.java)

# It should not be necessary to change the definitions below.

INCL_FILES = $(JAVA_FILES:%.java=%.incl)

FIG2EPS_FIGURES = $(EPS_FIG_FILES:%.eps.fig=%.eps)
FIG2PDF_FIGURES = $(PDF_FIG_FILES:%.pdf.fig=%.pdf)

# text that triggers recompilation
REPEAT_TEXT = 'Rerun to get cross-references right'

pdf ps dvi:
	@echo ---------------------------
	$(MAKE) $(MASTER).$@
	@echo ---------------------------
	@echo FINISHED
	@echo ---------------------------

%.pdf : %.fig
	@echo --------------------------
	fig2dev -L pdf $*.fig $*.pdf

%.eps : %.fig
	@echo --------------------------
	fig2dev -L eps $*.fig $*.eps

$(MASTER).pdf : $(MASTER).ps
	@echo ---------------------------
	ps2pdf $(MASTER).ps

$(MASTER).ps : $(MASTER).dvi
	@echo ---------------------------
	dvips -o $(MASTER).ps $(MASTER)

$(MASTER).dvi : $(TEX_FILES) $(STY_FILES) $(FIG2EPS_FIGURES) $(MASTER).bbl
	latex $(MASTER)
	while grep -s $(REPEAT_TEXT) $(MASTER).log ; do \
		latex $(MASTER) ; \
	done

$(MASTER).bbl :
	latex $(MASTER)
	@echo ---------------------------
	bibtex $(MASTER) -min-crossrefs=$(MIN_CROSS_REF)
	@echo ---------------------------

clean :
	rm -f *.aux $(MASTER).bbl $(MASTER).blg $(MASTER).dvi $(MASTER).log $(MASTER).out $(MASTER).pdf $(MASTER).ps $(MASTER).toc

cleancvs:
	rm -f *.~?*.?*.~
