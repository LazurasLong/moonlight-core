mkdir -p '../text/html/'
mkdir -p '../text/pdf/'
cp 'resources/style.css' '../text/html/style.css'

pandoc ../source/*.md -S --toc -f markdown --template 'resources/template.html' -c 'style.css' -t html -s -o '../text/html/moonlight.html'
pandoc ../source/*.md -V geometry:margin=1.2in -t latex -s -o "../text/pdf/moonlight.pdf"

for file in ../source/*.md; do
    filename=$(basename "$file")
    pandoc "$file" -S --toc -f markdown --template 'resources/template.html' -c 'style.css' -t html -s -o "../text/html/${filename%.*}.html"
    pandoc "$file" -V geometry:margin=1.2in -t latex -s -o "../text/pdf/${filename%.*}.pdf"
done