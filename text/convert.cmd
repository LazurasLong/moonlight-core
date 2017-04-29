setlocal enabledelayedexpansion enableextensions

SET files=
for %%i in (markdown\*.md) do set files=!files! "%%i"
SET files=%files:~1%

pandoc %files% -V geometry:margin=1.2in -f markdown -t latex -s -o "latex\moonlight.tex"
pandoc %files% -S --toc -f markdown --template "template.html" -c "style.css" -t html -s -o "html\moonlight.html"
pandoc %files% -V geometry:margin=1.2in -f markdown -t latex -s -o "pdf\moonlight.pdf"

for %%i in (markdown\*.md) do pandoc -V geometry:margin=1.2in "markdown\%%~ni.md" -f markdown -t latex -s -o "latex\%%~ni.tex"
for %%i in (markdown\*.md) do pandoc "markdown\%%~ni.md" -S --toc -f markdown --template "template.html" -c "style.css" -t html -s -o "html\%%~ni.html"
for %%i in (markdown\*.md) do pandoc -V geometry:margin=1.2in "markdown\%%~ni.md" -f markdown -t latex -s -o "pdf\%%~ni.pdf"