GNUPLOT=gnuplot
PDF2EPS=pdftops -eps
PS2PDF=ps2pdf

# rules for creating ps files from pdf's and pdf's from gnuplot
%.eps: %.pdf
	$(PDF2EPS) $< $@

%.pdf: %.ps
	$(PS2PDF) $<

%.ps: %.gp %.csv
	$(GNUPLOT) $<
