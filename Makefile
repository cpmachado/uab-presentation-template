MAIN=main.tex
SRC=$(wildcard *.tex)
LATEX=latexmk -pdf
LATEX_CLEAN=latexmk -c
LATEX_WATCH=latexmk -pdf -pvc

all:
	${LATEX} ${MAIN}

clean:
	$(foreach file,${SRC}, ${LATEX_CLEAN} ${file};)
	rm -rf *.bbl *.nav *.pdf *.run.xml *.snm

watch:
	${LATEX_WATCH} ${MAIN}
