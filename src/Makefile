BINDIR = ../bin

RMDFILE = spirograph_with_shiny_widgets.Rmd

all:

install:
	install --mode 0444 -D ${RMDFILE} ${BINDIR}/${RMDFILE}

clean:

distclean: clean
	rm -rf ${BINDIR}/${RMDFILE}

.PHONY: all install clean distclean

