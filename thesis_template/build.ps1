if (-not (Test-Path build)) { New-Item -ItemType Directory build | Out-Null }
xelatex -synctex=1 -interaction=nonstopmode -output-directory=build main.tex
biber --input-directory=build main
xelatex -synctex=1 -interaction=nonstopmode -output-directory=build main.tex
xelatex -synctex=1 -interaction=nonstopmode -output-directory=build main.tex
