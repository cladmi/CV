CTEX=pdflatex
IMAGE=
SOURCE=


.phony: all

all: cv_gaetan_harter_ensimag.pdf
	@ echo
	@ echo grep --color=auto TODO cv.tex
	@ grep --color=auto TODO cv.tex || test 1



cv_gaetan_harter_ensimag.pdf: cv.tex $(IMAGE) $(SOURCE)
	$(CTEX) cv
	cp cv.pdf cv_gaetan_harter_ensimag.pdf
	rm -f cv.aux cv.log cv.aux cv.lol cv.toc



