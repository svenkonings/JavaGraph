MASTER = usermanual

# Subdirectories where figure and code files are stored
FIG_DIR = fig
CODE_DIR = java
GRAPHS_DIR = graphs
GRAPHS_GPS = graphs.gps

# Lists of local LaTeX-related files
texfiles = $(wildcard *.tex)
bibfiles = $(wildcard *.bib)
styfiles = $(wildcard *.sty)

# List of source file extensions (without intervening period)
TEXFIG_EXT = tex.fig
EPSFIG_EXT = eps.fig

# List of local figure files
TEXFIG_FILES = $(wildcard $(FIG_DIR)/*.$(TEXFIG_EXT))
TEXFIG_NAMES = $(TEXFIG_FILES:%.$(TEXFIG_EXT)=%)
EPSFIG_FILES = $(wildcard $(FIG_DIR)/*.$(EPSFIG_EXT))
EPSFIG_NAMES = $(EPSFIG_FILES:%.$(TEXFIG_EXT)=%)
giffiles = $(wildcard $(FIG_DIR)/*.gif) 
GIF_NAMES = $(GIF_FILES:%.gif=%)
GXL_FILES = $(wildcard $(GRAPHS_GPS)/*.gxl)
GST_FILES = $(wildcard $(GRAPHS_GPS)/*.gst)
GPR_FILES = $(wildcard $(GRAPHS_GPS)/*.gpr)
GTY_FILES = $(wildcard $(GRAPHS_GPS)/*.gty)

# All groove files, without extension
GROOVE_NAMES = $(GXL_FILES:$(GRAPHS_GPS)/%.gxl=$(FIG_DIR)/%) \
	$(GST_FILES:$(GRAPHS_GPS)/%.gst=$(FIG_DIR)/%) \
	$(GPR_FILES:$(GRAPHS_GPS)/%.gpr=$(FIG_DIR)/%) \
	$(GTY_FILES:$(GRAPHS_GPS)/%.gty=$(FIG_DIR)/%)

PNG_FILES = $(wildcard $(FIG_DIR)/*.png)

# List of local source code files
javafiles = $(wildcard $(CODE_DIR)/*.java)
grammarfiles = $(wildcard *.grammar)

# It should not be necessary to change the definitions below.
inclfiles = \
	$(javafiles:%.java=%.incl)
pdfgraphics = \
	$(TEXFIG_NAMES:%=%.tex) $(TEXFIG_NAMES:%=%.pdf) \
	$(GIF_NAMES:%=%.pdf) $(EPSFIG_NAMES:%=%.pdf) \
	$(GROOVE_NAMES:%=%-edit.tikz) $(GROOVE_NAMES:%=%-display.tikz)
#	$(GROOVE_NAMES:%=%.png) $(PNG_FILES) \

%.incl : %.java
	./javaextract -incl $*.java

# Conversion of eps or pdf from groove formats, via png
# This has to happen before fig file conversion, because the fig
# files might contain the eps
%.png : %.gxl
	Imager $*.gxl $@

%.png : %.gst
	Imager $*.gst $@

%.png : %.gpr
	Imager $*.gpr $@

#%.eps : %.png
#	# The different machings I use don't have the same conversion
#	# bmeps -c $*.png $@
#	convert $*.png $@

%.tex : %.$(TEXFIG_EXT)
	fig2dev -L pstex_t -p $* $*.$(TEXFIG_EXT) $@

%.eps : %.$(TEXFIG_EXT) $(GROOVE_NAMES:%=%.png)
	fig2dev -L pstex $*.$(TEXFIG_EXT) $@

%.pdf : %.$(TEXFIG_EXT)
	fig2dev -L pdftex $*.$(TEXFIG_EXT) $@

%.eps : %.$(EPSFIG_EXT)
	fig2dev -L eps $*.$(EPSFIG_EXT) $@

%.pdf : %.$(EPSFIG_EXT)
#	convert $*.eps $@
	fig2dev -L pdf $*.$(EPSFIG_EXT) $@

# Conversion of eps or pdf from gif
%.pdf : %.gif
	convert -crop 0x0 $*.gif $@

%.eps : %.gif
	convert -crop 0x0 $*.gif $@

$(FIG_DIR)/%-display.tikz : $(GRAPHS_GPS)/%.gst
	./groove-imager -f tikz $(GRAPHS_GPS)/$*.gst $@

$(FIG_DIR)/%-display.tikz : $(GRAPHS_GPS)/%.gpr
	./groove-imager -f tikz $(GRAPHS_GPS)/$*.gpr $@

$(FIG_DIR)/%-display.tikz : $(GRAPHS_GPS)/%.gxl
	./groove-imager -f tikz $(GRAPHS_GPS)/$*.gxl $@

$(FIG_DIR)/%-display.tikz : $(GRAPHS_GPS)/%.gty
	./groove-imager -f tikz $(GRAPHS_GPS)/$*.gty $@

$(FIG_DIR)/%-edit.tikz : $(GRAPHS_GPS)/%.gst
	./groove-imager -e -f tikz $(GRAPHS_GPS)/$*.gst $@

$(FIG_DIR)/%-edit.tikz : $(GRAPHS_GPS)/%.gpr
	./groove-imager -e -f tikz $(GRAPHS_GPS)/$*.gpr $@

$(FIG_DIR)/%-edit.tikz : $(GRAPHS_GPS)/%.gxl
	./groove-imager -e -f tikz $(GRAPHS_GPS)/$*.gxl $@

$(FIG_DIR)/%-edit.tikz : $(GRAPHS_GPS)/%.gty
	./groove-imager -e -f tikz $(GRAPHS_GPS)/$*.gty $@

$(FIG_DIR)/%.png : $(GRAPHS_GPS)/%.gst
	./groove-imager $(GRAPHS_GPS)/$*.gst $@

$(FIG_DIR)/%.png : $(GRAPHS_GPS)/%.gpr
	./groove-imager $(GRAPHS_GPS)/$*.gpr $@

$(FIG_DIR)/%.png : $(GRAPHS_GPS)/%.gxl
	./groove-imager $(GRAPHS_GPS)/$*.gxl $@

#
#%.tex : %.fig
#	fig2dev -L pstex_t -p $* $*.fig $@
#
#%.eps : %.fig
#	fig2dev -L pstex $*.fig $*.eps
#
#%.incl : %.java
#	./javaextract -incl $*.java
#
#%.eps : %.gif
#	convert $*.gif $@
#
#%.pdf : %.fig
#	fig2dev -L pdftex $*.fig $*.pdf
#
#%.pdf : %.gif
#	convert -crop 0x0 $*.gif $@
#
%.pdf : $(MASTER).pdf
	cp $(MASTER).pdf $@

# pdflatex command
pdflatex = ./pdflatex

REPEAT_TEXT = 'Rerun to get cross-references right'

$(MASTER).pdf : $(texfiles) $(styfiles) $(grammarfiles) $(pdfgraphics) $(MASTER).bbl
	$(pdflatex) $(MASTER)
	while grep -s $(REPEAT_TEXT) $(MASTER).log ; do \
		$(pdflatex) $(MASTER) ; \
	done

$(MASTER).bbl : $(bibfiles) $(texfiles)
	$(pdflatex) $(MASTER)
	bibtex $(MASTER)

clean :
	rm -f *.aux *.log *.blg *.dvi *.out *.ps *.pdf
	rm -f $(javadir)/*.class $(javadir)/*.incl 
	rm -rf auto

