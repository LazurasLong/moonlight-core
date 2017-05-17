setlocal enabledelayedexpansion enableextensions

SET files=
for %%i in (..\source\*.md) do set files=!files! "%%i"
SET files=%files:~1%

mkdir "..\text\latex"
pandoc %files% -V geometry:margin=1.2in -f markdown -t latex -s -o "..\text\latex\moonlight.tex"
mkdir "..\text\html"
pandoc %files% -S --toc -f markdown --template "template.html" -c "style.css" -t html -s -o "..\text\html\moonlight.html"
mkdir "..\text\pdf"
pandoc %files% -V geometry:margin=1.2in -f markdown -t latex -s -o "..\text\pdf\moonlight.pdf"

for %%i in (..\source\*.md) do pandoc -V geometry:margin=1.2in "..\source\%%~ni.md" -f markdown -t latex -s -o "..\text\latex\%%~ni.tex"
for %%i in (..\source\*.md) do pandoc "..\source\%%~ni.md" -S --toc -f markdown --template "template.html" -c "style.css" -t html -s -o "..\text\html\%%~ni.html"
for %%i in (..\source\*.md) do pandoc -V geometry:margin=1.2in "..\source\%%~ni.md" -f markdown -t latex -s -o "..\text\pdf\%%~ni.pdf"

copy style.css "..\text\html"