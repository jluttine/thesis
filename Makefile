
FILES=thesis.tex

all: thesis.pdf

thesis.pdf: $(FILES)
	TEXINPUTS="aaltoseries:aaltologo:" pdflatex thesis && \
	bibtex thesis && \
	TEXINPUTS="aaltoseries:aaltologo:" pdflatex thesis && \
	TEXINPUTS="aaltoseries:aaltologo:" pdflatex thesis

clean:
	rm thesis.pdf thesis.log thesis.aux
