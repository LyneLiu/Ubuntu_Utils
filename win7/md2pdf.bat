:: This batch file converts markdown files in a folder to pdf.
:: It requires Pandoc, and a list of files to convert
:: named file-list, in which each file is on a separate line,
:: and contains no spaces in the filename.
::
:: Don't show these commands to the user
@ECHO off
:: Set the title of the window
TITLE Convert markdown to pdf
:: This thing that's necessary.
Setlocal enabledelayedexpansion
:: What're we doing?
ECHO Converting to .pdf...
:: Loop through the list of files in file-list
:: and convert them each from .markdown to .pdf.
:: We end up with the same filenames, 
:: with .pdf extensions appended.
SET "sourcedir=F:\lyne\coding_repo\react-naive-book\_posts"
PUSHD "%sourcedir%"
FOR /f "delims=" %%a IN (
 'dir /b /s /a-d *.md'
 ) DO (
	:: ECHO "%%~dpna.md"
    pandoc --pdf-engine=xelatex -V CJKmainfont="SimSun" "%%~dpna.md" -o "%%~dpna.pdf"
    )
:: Whassup?
ECHO Done.
:: Let the user exit deliberately
:exit
SET exit=
SET /p exit=Hit return to exit...
IF "%repeat%"=="" GOTO:eof
GOTO exit

:: https://www.zhihu.com/question/20849824/answer/279039708
:: https://jdhao.github.io/2017/12/10/pandoc-markdown-with-chinese/