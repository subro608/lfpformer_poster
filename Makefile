.PHONY: all clean

# Default: Tectonic (XeTeX; fetches LaTeX packages on demand).
# Alternative with a full TeX Live: latexmk -lualatex poster.tex
TECTONIC ?= tectonic

all: poster.pdf

poster.pdf: poster.tex beamerthemegemini.sty beamercolorthemecam.sty $(wildcard figures/*.png)
	$(TECTONIC) -X compile poster.tex

clean:
	rm -f poster.pdf *.aux *.log *.nav *.out *.snm *.toc
