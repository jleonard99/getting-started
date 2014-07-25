@REM + Setting environment for RTOOLS
@REM SET R_VERSION=2.13.2
@REM SET R_TOOLS=2.13
@REM SET R_VERSION=2.15.3
@REM SET R_TOOLS=2.16
@REM SET R_GCC=gcc-4.6.3
@REM
@REM use 3.0.2 when RDCOMCLIENT is neeced, otherwise use 3.1.0
@REM SET R_VERSION=3.0.2
@SET R_VERSION=3.1.1
@REM
@SET R_TOOLS=3.1
@SET R_GCC=gcc-4.6.3
@REM
@REM For R-program base
@SET PATH=%PATH%;C:\Program Files\R\R-%R_VERSION%\bin\x64;
@REM
@REM this path is for RTOOLS version set in the R_TOOLS variable above
@SET PATH=%PATH%;C:\Rtools\%R_TOOLS%\bin;C:\Rtools\%R_TOOLS%\%R_GCC%\bin;
@REM
@REM For GIT version control
@SET PATH=%PATH%;"C:\Program Files (x86)\Git\cmd";"C:\Program Files (x86)\Git\bin"
@REM
@REM 
@SET HOME=%HOMEDRIVE%%HOMEPATH%
@SET SVN_EDITOR=notepad
@SET EDITOR=notepad
@SET CYGWIN=nodosfilewarning
@SET R_PROFILE_USER=C:\Users\jl66\Path\.Rprofile
@SET R_GSCMD = "C:/Program Files/gs/gs9.05/bin/gswin32c.exe"
@REM
@REM R is available at:  http://cran.r-project.org/bin/windows/base/  (old versions also available)
@REM RTOOLS is available at:  http://www.murdoch-sutherland.com/Rtools/
@REM RTOOLS must be updated to "match" different versions of R.
@REM By default RTOOLS doesn't install into version-specific subdirectories. YOU NEED TO DO IT!
@ECHO + Setting RTOOLS environment. R:%R_VERSION%  RTOOLS:%R_TOOLS% GCC:%R_GCC%  GIT:Yes
