CTEX=pdflatex

OUT_FILES = cv_gaetan_harter.pdf resume_gaetan_harter.pdf

.phony: all

all: $(OUT_FILES)


cv_gaetan_harter.pdf: cv.pdf
	cp $^ $@

resume_gaetan_harter.pdf: resume.pdf
	cp $^ $@


resume.pdf cv.pdf: %.pdf: %.tex cv.cls
	$(CTEX) $*
	rm -f *.aux *.log *.aux *.lol *.toc

clean:
	rm -f *.pdf
