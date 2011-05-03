CTEX=pdflatex
IMAGE=
SOURCE=


.phony: all

all: cv.pdf
	@ echo
	@ echo grep --color=auto TODO cv.tex
	@ grep --color=auto TODO cv.tex || test 1
	


cv.pdf: cv.tex $(IMAGE) $(SOURCE)
	$(CTEX) cv 
	rm -f cv.aux cv.log cv.aux cv.lol cv.toc



