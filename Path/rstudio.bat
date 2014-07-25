@echo off
REM perl -e "use Cwd; @temp = reverse(split('/',getcwd)); print @temp[0] . '.Rproj'" 
for %%a in (%CD%) do set last=%%~na
echo Setting default project: %last%.Rproj
IF EXIST "%last%.Rproj" (
setrtools & setdb & echo "C:\Program Files\RStudio\bin\rstudio.exe" "%last%.Rproj" & "C:\Program Files\RStudio\bin\rstudio.exe" "%last%.Rproj"
) ELSE (
setrtools & setdb & "C:\Program Files\RStudio\bin\rstudio.exe" %1 %2 %3 %4
)

