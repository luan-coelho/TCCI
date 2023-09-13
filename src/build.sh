#!/bin/bash

# Limpa e cria a pasta 'out'
rm -rf ../out
mkdir out

# Executa os comandos LaTeX
pdflatex -output-directory=out main.tex
bibtex out/main.aux
pdflatex -output-directory=out main.tex
pdflatex -output-directory=out main.tex

# Move a pasta 'out' para a raiz do projeto
mv out ../
