CTEX=pdflatex
IMAGE=
SOURCE=


.phony: all

all: cv.pdf
	@ echo
	grep --color=auto TODO cv.tex


cv.pdf: cv.tex $(IMAGE) $(SOURCE)
	$(CTEX) cv 
	$(CTEX) cv 
	$(CTEX) cv 
	$(CTEX) cv 
	rm -f cv.aux cv.log cv.aux cv.lol cv.toc



