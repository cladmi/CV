CTEX=pdflatex

OUT_FILE = cv_gaetan_harter.pdf

.phony: all

all: $(OUT_FILE)
	@ echo
	@ echo grep --color=auto TODO cv.tex
	@ grep --color=auto TODO cv.tex || test 1



cv.pdf: cv.tex
	$(CTEX) cv
	cp cv.pdf $(OUT_FILE)
	rm -f cv.aux cv.log cv.aux cv.lol cv.toc

$(OUT_FILE): cv.pdf
	cp $^ $@


clean:
	rm -f cv.pdf
	rm -f $(OUT_FILE)



