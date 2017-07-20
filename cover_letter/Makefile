
OUT_FILES = cover_letter_gaetan_harter.pdf
TEXINPUT = '.:moderncv'
CTEX = TEXINPUT=$(TEXINPUT) pdflatex

.phony: all

all: $(OUT_FILES)

%_gaetan_harter.pdf: %.pdf
	cp $^ $@

cover_letter.pdf: %.pdf: %.tex
	$(CTEX) $*
	$(CTEX) $*
	rm -f *.aux *.log *.aux *.lol *.toc *.out

clean:
	rm -f *.pdf
