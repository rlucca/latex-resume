TARGET=lucca7-en

all: $(TARGET).pdf

%.pdf: %.tex
		@-pdflatex $< && pdflatex $<

clean:
	@-rm `ls -1 $(TARGET)* | grep -v tex$ | xargs`

view: $(TARGET).pdf
	@-evince $<
