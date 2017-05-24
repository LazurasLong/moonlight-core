mkdir -p '../text/html/'
mkdir -p '../text/pdf/'
cp 'resources/style.css' '../text/html/style.css'

pandoc ../source/*.md -S --toc --template 'resources/template.html' -c 'style.css' -t html -s -o '../text/html/moonlight.html'
pandoc ../source/*.md -V fontsize=12pt --toc -t latex -s -o "../text/pdf/moonlight.pdf"

for file in ../source/*.md; do
    filename=$(basename "$file")
    pandoc "$file" -S --toc --template 'resources/template.html' -c 'style.css' -t html -s -o "../text/html/${filename%.*}.html"
    pandoc "$file" -V fontsize=12pt -t latex -s -o "../text/pdf/${filename%.*}.pdf"
done