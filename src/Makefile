opts = --no-check-certificate
root = https://raw.github.com/jleonard99/useful-make-macros/master/src/
files := Makefile.mak Menus.mak Macros.mak Machine.mak Recipes.mak

t := $(foreach file,$(files),$(root)$(file))
freshen:
	wget --no-check-certificate $(t)
	