# latex-vorlage-diplom-bachelor-masterarbeiten

Diese LaTeX-Vorlage kann für technische Berichte und Diplom- / Bachelor- / Masterarbeiten genutzt werden. Eine Vorschau liefert "Hauptdatei.pdf".

This LaTeX-template can be used for technical reports, BSc or MSc thesis. Please see "[Hauptdatei.pdf](/src/Hauptdatei.pdf)" as an example.

![latex-vorlage-diplom-bachelor-masterarbeiten](main.png "latex-vorlage-diplom-bachelor-masterarbeiten")


## Verwendung

Dreh- und Angelpunkt der Vorlage ist die "Hauptdatei.tex". Hier werden grundlegende Layout-Einstellungen gesetzt und die anderen Dateien inkludiert. Diese könnt ihr beliebig für eure eigene Arbeit erweitern. Hinweise zu den einzelnen LaTeX-Direktiven befinden sich direkt im Quellcode der Vorlage.

In der "beispiel.tex" wird gezeigt wie Bilder, Bildreferenzen, Tabellen, Quellcode-Listings, mathematische Formeln und Fußnoten in LaTeX verwendet werden können.

Des Weiteren findet ihr in der Vorlage diverse Platzhalter für die Logos eurer Universität / Fachhochschule, euren Namen, Professoren, Matrikelnummer etc.

Die Vorlage verwendet die deutschen Literaturzitate im Literaturverzeichnis gemäß der deutschen Norm DIN 1505, Teil 2 vom Jan. 1984 (siehe alphadin.bst). Prüft bitte ob dieser Zitat-Stil von eurem Institut akzeptiert wird, was jedoch für eine Abschlussarbeit in deutscher Sprache meist der Fall sein dürfte.

## Zeichensatz

Die Vorlage verwendet den generell empfehlenswerten Zeichensatz UTF-8. Dadurch könnt ihr direkt die deutschen Umlaute ÄäÖöÜü sowie die Anführungszeichen „“ in euren Quelltexten nutzen.

## Von LaTeX zum PDF

Unter "scripts/generatePdf.sh" liegt das Skript welches auf unixähnliches Betriebssystemen (Linux, Mac) nach Installation einer TEX Distribution häufig direkt verwendet werden kann. Mittels pdflatex, bibtex und makeindex wird aus der Vorlage direkt ein PDF inkl. Literaturverzeichnis und Abkürzungsverzeichnis erstellt.

## LaTeX Distributionen und Editoren

Vermutlich wirst du zum Verfassen deiner Arbeit einen Editor mit LaTeX Unterstützung verwenden.

### Linux: Debian, Ubuntu, Linux Mint

Bei Linux Distributionen auf Debian Basis empfehle ich die TEX Distribution [TeX Live](http://www.tug.org/texlive/ "TeX Live") sowie den Editor [Kile](http://kile.sourceforge.net/ "Kile").

Bei der Installation der Software unter Ubuntu helfen die folgenden Links:
[Installation von TeX-Live](http://wiki.ubuntuusers.de/LATEX#TeX-Live "Installation von TeX-Live").
[Installation von Kile](http://wiki.ubuntuusers.de/Kile "Installation von Kile").

### Mac

Auf dem Mac hat sich eine Kombination aus [MacTeX](http://www.tug.org/mactex/ "MacTeX") Distribution und dem Editor [TeXShop](http://pages.uoregon.edu/koch/texshop/ "TeXShop") als sehr brauchbar herausgestellt. Eine hilfreiche Funktion bei dieser Kombination: Mit CMD + Linksklick auf eine Stelle im PDF springt man im Editor direkt an die betreffende Stelle im LaTeX Quellcode.

### Windows

Unter Windows habe ich persönlich [TeXlipse](http://texlipse.sourceforge.net/ "TeXlipse") (Eclipse Plugin für LaTeX) sowie das [TeXnicCenter](http://www.texniccenter.org/ "TeXnicCenter") als Editor verwendet. Als Distribution kann [MikTeX](http://miktex.org/ "MikTeX") verwendet werden.

## Feedback

Falls ihr Anmerkungen, Verbesserungsvorschläge und / oder Fehler findet, schreibt mir bitte eine Nachricht an:
kontakt at maknesium de

Alternativ übernehme ich natürlich auch gerne Pull-Requests auf Github.

Ich wünsche euch viel Erfolg und Spaß bei der Erstellung eurer Abschlussarbeit mit LaTeX!

# Lizenz / License

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Germany License.
http://creativecommons.org/licenses/by-nc-sa/3.0/de/

# Lade mich auf einen Kaffee ein!

Wenn dir die Latex-Vorlage (viel) Zeit erspart hat, du endlich deine Abschlussarbeit abgegeben hast und jetzt einfach etwas zurück geben möchtest, kannst du mich gerne auf einen (oder zwei) Kaffee einladen. Ja, ich trinke gerne Kaffee :)

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6LZRV8ZHN2Z9A)