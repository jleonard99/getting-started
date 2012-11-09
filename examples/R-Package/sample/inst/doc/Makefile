## This assumes that R-tools are installed.  These are a set of windows tools
## that create a unix-like environment.  See:
##
##   http://www.murdoch-sutherland.com/Rtools/
##

all:
	@make --no-print-directory sample.pdf
	@make --no-print-directory clean

include src/Makefile.cfg
include src/Machines.cfg
include src/Macros.cfg
	
sample.tex : sample.rnw
	@echo + Sweaving $(@) from $(^)
	@"$(subst \,/,$(R))" --slave --quiet -e "Sweave('$(^)',output='$(@)',quiet=T)"

	
sample.pdf : sample.tex
	@echo + Writing $(@) from $(^)
	@pdflatex --quiet --include-directory="$(R_SWEAVE)"  $(^)
	@pdflatex --quiet --include-directory="$(R_SWEAVE)"  $(^)

CLEAN = *.aux *.log *.tex
clean:
	@echo + Cleaning: $(CLEAN)
	@-rm $(CLEAN) 2>/dev/null
	
REALCLEAN = *.pdf
realclean: 
	@echo + Realclean: $(REALCLEAN)
	@-rm $(REALCLEAN) 2>/dev/null
