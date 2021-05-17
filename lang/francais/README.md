# latex-modèle-diplom-bachelor-mastermémoire

Ce modèle LaTeX peut être utilisé pour des rapports techniques, des thèses de licence ou de maîtrise. Veuillez voir "[Hauptdatei.pdf](../../src/Hauptdatei.pdf)" comme exemple.

![latex-vorlage-diplom-bachelor-masterarbeiten](../../main.png "latex-modèle-diplom-bachelor-mastermémoire")

## Utilisation

Le fichier principal du modèle est le "[Hauptdatei.tex](../../src/Hauptdatei.tex)". Ici, les paramètres de base du modèle sont définis et les autres fichiers sont inclus. Vous pouvez étendre ces fichiers pour votre propre travail. Des indications sur les directives LaTeX se trouvent directement dans le code source du modèle.

Le fichier "[example.tex](../../src/example.tex)" montre comment les images, les références d'images, les tableaux, les listes de code source, les formules mathématiques et les notes de bas de page peuvent être utilisés dans LaTeX.

En outre, vous trouverez plusieurs emplacements pour les logos de votre université/école, votre nom, vos professeurs, votre numéro d'immatriculation, etc.

Le modèle utilise les citations de la littérature allemande dans la bibliographie selon la norme allemande DIN 1505, partie 2 de janvier 1984 (voir [alphadin.bst](../../src/alphadin.bst)). Veuillez vérifier si ce style de citation est accepté par votre institut, ce qui est généralement le cas pour une thèse en langue allemande.

## Codage des caractères

Le modèle utilise le jeu de caractères généralement recommandé UTF-8, de sorte que vous pouvez utiliser directement les trémas allemands ÄäÖööÜü et les guillemets „“ dans votre code source.

## De LaTeX à PDF

Sous "[scripts/generatePdf.sh](../../scripts/generatePdf.sh)" vous trouverez le script qui peut souvent être utilisé directement sur les systèmes d'exploitation de type unix (Linux, Mac) après l'installation d'une distribution TEX. En utilisant pdflatex, bibtex et makeindex, un PDF comprenant une bibliographie et une liste d'abréviations est généré directement à partir du modèle.

## Distributions et éditeurs LaTeX

Vous utiliserez probablement un éditeur avec support LaTeX pour écrire votre travail.

### Linux: Debian, Ubuntu, Linux Mint

Pour les distributions Linux basées sur Debian, je recommande la distribution TEX [TeX Live](http://www.tug.org/texlive/ "TeX Live") et l'éditeur [Kile](http://kile.sourceforge.net/ "Kile").

Les liens suivants vous aideront à installer le logiciel sous Ubuntu:
[Installation de TeX Live](http://wiki.ubuntuusers.de/LATEX#TeX-Live "Installation de TeX Live").
[Installation de Kile](http://wiki.ubuntuusers.de/Kile "Installation de Kile").

### Mac

Sur le Mac, la combinaison de la distribution [MacTeX](http://www.tug.org/mactex/ "MacTeX") et de l'éditeur [TeXShop](http://pages.uoregon.edu/koch/texshop/ "TeXShop") s'est avérée très utile. Une fonction utile avec cette combinaison : Avec CMD + clic gauche sur un endroit du PDF, vous accédez directement à l'endroit correspondant dans le code source LaTeX de l'éditeur.

### Windows

Sous Windows, j'ai personnellement utilisé [TeXlipse](http://texlipse.sourceforge.net/ "TeXlipse") (Eclipse Plugin pour LaTeX) et le [TeXnicCenter](http://www.texniccenter.org/ "TeXnicCenter") comme éditeur. La distribution [MikTeX](http://miktex.org/ "MikTeX") peut être utilisée.

### Docker

L'environnement permettant de créer des fichiers pdf peut être exécuté dans un conteneur Docker. Pour cette tâche, le [Dockerfile](../../Dockerfile) fourni peut être utilisé.

L'image du Docker peut être créée avec la commande `docker build -t maknesium/latexvorlage:latest`. Ensuite, le conteneur peut être créé avec la commande `docker run -d --name latexvorlage-container -v /pfad/zum/ordner/src:/app/src maknesium/latexvorlage:latest`. Le conteneur n'est pas effacé une fois la compilation des fichiers textuels terminée et peut simplement être relancé pour recompiler les fichiers textuels avec la commande `docker start latexvorlage-container`.

### Extension de l'atelier LaTeX pour Visual Studio Code

Lors de l'utilisation de l'extension LaTeX Workshop pour Visual Studio Code comme éditeur, le répertoire des abréviations peut ne pas s'afficher correctement.

Dans ce cas, vous devez vous rendre dans le répertoire `/src` une fois sur la ligne de commande et exécuter la commande `makeindex mainfile.nlo -s ./latex_settings/abbreviations/nomencl.ist -o mainfile.nls`. Le répertoire des abréviations s'affichera alors correctement.

## Feedback

Si vous trouvez des commentaires, des suggestions d'amélioration et/ou des erreurs, veuillez m'envoyer un message :
contact au maknesium de

Sinon, j'accepterai volontiers les demandes de retrait sur Github.

Je vous souhaite beaucoup de succès et de plaisir lors de la rédaction de votre thèse avec LaTeX !

# License

Ce travail est soumis à une licence Creative Commons Paternité-Pas d'Utilisation Commerciale-Partage des Conditions Initiales à l'Identique 3.0 Allemagne.
http://creativecommons.org/licenses/by-nc-sa/3.0/de/

# Achetez-moi un café !

Si le modèle en latex vous a fait gagner (beaucoup) de temps, que vous avez finalement remis votre thèse et que vous voulez juste donner quelque chose en retour, vous êtes les bienvenus pour m'inviter à prendre un café (ou deux). Oui, j'aime le café :)

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6LZRV8ZHN2Z9A)