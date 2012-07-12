CTEX=pdflatex
IMAGE=
SOURCE=

OUT_FILE = cv_gaetan_harter.pdf

.phony: all

all: $(OUT_FILE)
	@ echo
	@ echo grep --color=auto TODO cv.tex
	@ grep --color=auto TODO cv.tex || test 1



$(OUT_FILE): cv.tex $(IMAGE) $(SOURCE)
	$(CTEX) cv
	cp cv.pdf $(OUT_FILE)
	rm -f cv.aux cv.log cv.aux cv.lol cv.toc



