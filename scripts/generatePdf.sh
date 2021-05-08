#!/bin/bash
# runme if you want to generate the pdf file

cd ../src

# 1. Generiert das Dokument mit Fragezeichen anstelle von Zitaten
pdflatex Hauptdatei.tex
# 2. Dies wird die .bib Datei verarbeiten, und das Dokument mit Zitatinformationen anreichern – Die .bib Datei kann anders heißen, dann muss der Befehl Hauptdatei entsprechend angepasst werden.
bibtex Hauptdatei
# 3. aktualisiert den Index
makeindex Hauptdatei.nlo -s latex_einstellungen/abkuezungen/nomencl.ist -o Hauptdatei.nls
# 4. Verarbeitet die Dateien nochmals und inkludiert die Zitate
pdflatex Hauptdatei.tex
# 5. nochmal, um sicher zu gehen, u.a. falls sich durch die Zitate die Seitennummerierung geändert hat
pdflatex Hauptdatei.tex


## Aufräumen...
rm *.aux *.dvi *.log *.lot *.lol *.lof *.nls *.ilg *.nlo *.idx *.out *.toc *.ist *.glo *.blg

cd latex_einstellungen
rm *.aux