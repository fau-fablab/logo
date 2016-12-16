SVG		:= $(wildcard *.svg)
PNG		:= $(SVG:%.svg=%.png)
PDF		:= $(SVG:%.svg=%.pdf)

.PHONY: all clean png pdf

all: $(PNG) $(PDF)
png: $(PNG)
pdf: $(PDF)

%.png: %.svg
%.png: %.svg

$(PNG): $(SVG)
	inkscape --export-png=$@ $(@:%.png=%.svg)
	@# rsvg --format png $< > $@

$(PDF): $(SVG)
	inkscape --export-pdf=$@ $(@:%.pdf=%.svg)
	@# rsvg --format pdf $< > $@

clean:
	rm -rf $(PNG) $(PDF)
