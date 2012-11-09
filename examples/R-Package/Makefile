menu:
	@echo + -----------------------------------------------------------------------------
	@echo + Targets for building a sample package:  $(PACKAGE).tar.gz
	@echo +
	@echo +   build - creates $(PACKAGE).tar.gz - this is the final package
	@echo +   check - runs a gazillion tests to make sure that the package is OK to use
	@echo +   install - installs the package on this machine
	@echo + 
	@echo + The $(PACKAGE).tar.gz file can be copies to other machines and installed via
	@echo + the install.package command.
	@echo +
	@echo + If running on windows, you MUST have RTOOLS installed.  See:
	@echo +   http://www.murdoch-sutherland.com/Rtools/


#-include ../../src/Menus.cfg     # common menus
#-include ../../src/Makefile.cfg  # common makefile settings for the IRPFACTS environment
#-include ../../src/Macros.cfg    # common additional macros for the IRPFACTS environment
#-include ../../src/Machines.cfg  # machine specific overrides

PACKAGE=sample
R = C:\Program Files\R\R-2.15.1\bin\R.exe

build:
	"$(subst \,/,$(R))" CMD build $(PACKAGE)

check:
	@"$(subst \,/,$(R))" CMD check $(PACKAGE)
	
install:
	@"$(subst \,/,$(R))" CMD INSTALL $(PACKAGE)

clean:
	-rm $(PACKAGE)_*.tar.gz 2>/dev/null
	-rm -R $(PACKAGE).Rcheck 2>/dev/null
	-make --directory=./sample/inst/doc --no-print-directory realclean

realclean: clean
