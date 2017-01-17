BINDIR = ../bin

all:

install:
	install --mode 0444 -D runRMarkdown.R ${BINDIR}/runRMarkdown.R
	install --mode 0444 -D spirograph.Rmd ${BINDIR}/spirograph.Rmd

clean:

distclean: clean
	rm -rf ${BINDIR}/runRMarkdown.R
	rm -rf ${BINDIR}/spirograph.Rmd

.PHONY: all install clean distclean

