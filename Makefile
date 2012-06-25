SOURCE_FILES=$(wildcard *.tex)
MAIN_SOURCE_FILE=formation.tex

formation.pdf: $(SOURCE_FILES)
	# from beamer's doc :
	# You need to run it twice, so that T X can create the table of contents.
	pdflatex -halt-on-error $(MAIN_SOURCE_FILE)
	pdflatex -halt-on-error $(MAIN_SOURCE_FILE)

clean:
	rm -f *.aux *.log *.nav *.out *.pdf *.snm *.toc *.vrb

view: formation.pdf
	xdg-open $<

.PHONY: clean view
