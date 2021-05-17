# latex-template-diplom-bachelor-masterthesis

This LaTeX-template can be used for technical reports, BSc or MSc thesis. Please see "[Hauptdatei.pdf](../../src/Hauptdatei.pdf)" as an example.

![latex-vorlage-diplom-bachelor-masterarbeiten](../../main.png "latex-template-diplom-bachelor-masterthesis")

## Usage

The main file of the template is the "[Hauptdatei.tex](../../src/Hauptdatei.tex)". Here, basic layout settings are set and the other files are included. You can extend these files for your own work. Hints to the LaTeX directives can be found directly in the source code of the template.

The "[example.tex](../../src/example.tex)" shows how images, image references, tables, source code listings, mathematical formulas and footnotes can be used in LaTeX.

Furthermore you will find several placeholders for the logos of your university / college, your name, professors, matriculation number etc.

The template uses the German literature citations in the bibliography according to the German standard DIN 1505, part 2 from ^Jan. 1984 (see [alphadin.bst](../../src/alphadin.bst)). Please check if this style of citation is accepted by your institute, which is usually the case for a thesis in German language.

## Character Encoding

The template uses the generally recommended character set UTF-8, so you can directly use the German umlauts ÄäÖööÜü and the quotation marks „“ in your source code.

## From LaTeX to PDF

Under "[scripts/generatePdf.sh](../../scripts/generatePdf.sh)" you will find the script which can often be used directly on unix-like operating systems (Linux, Mac) after installation of a TEX distribution. Using pdflatex, bibtex and makeindex a PDF including bibliography and list of abbreviations is generated directly from the template.

## LaTeX distributions and editors

You will probably use an editor with LaTeX support to write your work.

### Linux: Debian, Ubuntu, Linux Mint

For Linux distributions based on Debian I recommend the TEX distribution [TeX Live](http://www.tug.org/texlive/ "TeX Live") and the editor [Kile](http://kile.sourceforge.net/ "Kile").

The following links will help you to install the software under Ubuntu:
[Installation of TeX Live](http://wiki.ubuntuusers.de/LATEX#TeX-Live "Installation of TeX Live").
[Installation of Kile](http://wiki.ubuntuusers.de/Kile "Installation of Kile").

### Mac

On the Mac, a combination of the [MacTeX](http://www.tug.org/mactex/ "MacTeX") distribution and the editor [TeXShop](http://pages.uoregon.edu/koch/texshop/ "TeXShop") has proven to be very useful. A helpful feature with this combination: With CMD + left click on a place in the PDF you jump directly to the corresponding place in the LaTeX source code in the editor.

### Windows

Under Windows I personally used [TeXlipse](http://texlipse.sourceforge.net/ "TeXlipse") (Eclipse Plugin for LaTeX) and the [TeXnicCenter](http://www.texniccenter.org/ "TeXnicCenter") as editor. As distribution [MikTeX](http://miktex.org/ "MikTeX") can be used.

### Docker

The environment to create pdf files can be run in a Docker container. For this task, the provided [Dockerfile](../../Dockerfile) can be used.

The Docker image can be created with the command `docker build -t maknesium/latexvorlage:latest`. Then, the container can be created with the command `docker run -d --name latexvorlage-container -v /pfad/zum/ordner/src:/app/src maknesium/latexvorlage:latest`. The container is not deleted after it is finished compiling the tex files and can simply be started again to compile the tex files again with the command `docker start latexvorlage-container`.

### LaTeX Workshop Extension for Visual Studio Code

When using LaTeX Workshop Extension for Visual Studio Code as an editor, the abbreviation directory may not be displayed correctly.

In this case, change to the `/src` directory once on the command line and execute the command `makeindex mainfile.nlo -s ./latex_settings/abbreviations/nomencl.ist -o mainfile.nls`. Then the abbreviation directory will be displayed correctly.

## Feedback

If you find any comments, suggestions for improvement and / or errors, please send me a message:
contact at maknesium de

Alternatively, I will gladly accept pull requests on Github.

I wish you a lot of success and fun while writing your thesis with LaTeX!

# License

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Germany License.
http://creativecommons.org/licenses/by-nc-sa/3.0/de/

# Buy me a coffee!

If the latex template saved you (a lot of) time, you finally handed in your thesis and now you just want to give something back, you are welcome to invite me for a coffee (or two). Yes, I like coffee :)

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6LZRV8ZHN2Z9A)