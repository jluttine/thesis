
FILES=thesis.tex

all: thesis.pdf

thesis.pdf: $(FILES)
	TEXINPUTS="aaltoseries:aaltologo:" pdflatex thesis.tex; \
	bibtex thesis.tex; \
	TEXINPUTS="aaltoseries:aaltologo:" pdflatex thesis.tex; \
	TEXINPUTS="aaltoseries:aaltologo:" pdflatex thesis.tex;

clean:
	rm thesis.pdf thesis.log thesis.aux
