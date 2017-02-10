SVG		:= $(wildcard *.svg)
PNG		:= $(SVG:%.svg=%.png)
PDF		:= $(SVG:%.svg=%.pdf)

.PHONY: all clean minify png pdf

all: png pdf
minify: $(SVG)
png: $(PNG)
pdf: $(PDF)

$(SVG): $(SVG)
$(PNG): $(SVG)
$(PDF): $(SVG)

%.svg: %.svg
	@# minify
	inkscape --export-plain-svg=$@ $@

%.png: %.svg
	inkscape --export-png=$@ $(@:%.png=%.svg)
	@# rsvg --format png $< > $@
%.pdf: %.svg
	inkscape --export-pdf=$@ $(@:%.pdf=%.svg)
	@# rsvg --format pdf $< > $@

clean:
	rm -rf $(PNG) $(PDF)
