CTEX=pdflatex
IMAGE=
SOURCE=

all: cv.pdf 


cv.pdf: cv.tex $(IMAGE) $(SOURCE)
	$(CTEX) cv 
	$(CTEX) cv 
	$(CTEX) cv 
	$(CTEX) cv 
	rm -f cv.aux cv.log cv.aux cv.lol cv.toc


