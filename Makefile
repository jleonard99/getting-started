.SILENT:
-include Menus.cfg         # include local menus if they exist
# --
# Files in the src folder are shared using svn:externals property in subversion:
# svn pe svn:externals .
# src https://svn.ece.gatech.edu/repos/irpfacts/IRP-Docs/GettingStarted/src
# --
include src/Menus.cfg     # common menus
include src/Makefile.cfg  # common makefile settings for the IRPFACTS environment
include src/Macros.cfg    # common additional macros for the IRPFACTS environment
include src/Machines.cfg  # machine specific overrides

clean:
	@echo + Cleaning 
	@-$(DEL) *.tmp *.tex *.aux *.log *.toc *.eps *.out Rplots.pdf 2>$(NULL)
	@-$(DEL) GettingStarted-002.pdf 2>$(NULL)
	
realclean: clean
	@echo + Real clean ...
	@-$(DEL) GettingStarted.pdf 2>$(NULL)
	
doc:
	@make --quiet GettingStarted.pdf
	@$(PDFTEX_READER) GettingStarted.pdf

all:
	@echo + (No commands or dependents have been added to "all" target yet.)

GettingStarted.tex : GettingStarted.rnw
	@echo + Sweaving $(@) from $(^)
	@"$(R)" --slave --quiet -e "Sweave('GettingStarted.rnw',output='GettingStarted.tex',quiet=T)"

	
GettingStarted.pdf : GettingStarted.tex
	@echo + Writing $(@) from $(^)
	@pdflatex --quiet --include-directory="$(R_SWEAVE)"  GettingStarted.tex
	@pdflatex --quiet --include-directory="$(R_SWEAVE)"  GettingStarted.tex
