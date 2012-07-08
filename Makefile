include ./Make.inc

pdf:
	pdflatex $(PAPER) && pdflatex $(PAPER)

ps:
	latex $(PAPER) && latex $(PAPER) && dvips $(PAPER) -o $(PAPER).ps

clean:
	rm -f *~ *\# *.log *.toc *.aux $(PAPER).ps $(PAPER).pdf *.dvi *.blg *.bbl *.rel *.out
