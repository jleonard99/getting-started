pkgname <- "sample"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('sample')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("catsAndDogs")
### * catsAndDogs

flush(stderr()); flush(stdout())

### Name: catsAndDogs
### Title: catsAndDogs data
### Aliases: catsAndDogs
### Keywords: datasets

### ** Examples

data(catsAndDogs)
## maybe str(catsAndDogs) ; plot(catsAndDogs) ...



cleanEx()
nameEx("puffy")
### * puffy

flush(stderr()); flush(stdout())

### Name: puffy
### Title: function
### Aliases: puffy
### Keywords: misc

### ** Examples

##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

x = c(1,2,3)
puffy(x)




cleanEx()
nameEx("sample-package")
### * sample-package

flush(stderr()); flush(stdout())

### Name: sample-package
### Title: What the package does (short line) package title
### Aliases: sample-package sample
### Keywords: package

### ** Examples

x = c(1,2,3)
puffy(x)



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
