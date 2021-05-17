# latex-vorlage-diplom-bachelor-masterarbeiten

Este LaTeX-template pode ser utilizado para relatórios técnicos, tese de BSc ou MSc. Por favor ver "[Hauptdatei.pdf](.../.../src/Hauptdatei.pdf)" como um exemplo.

![latex-vorlage-diplom-bachelor-masterarbeiten](../../main.png "latex-template-diplom-bachelor-masterthesis")

## Utilização

O ficheiro principal do modelo é o "[Hauptdatei.tex](.../.../src/Hauptdatei.tex)". Aqui, são definidas as configurações básicas de layout e os outros ficheiros são incluídos. Pode estender estes ficheiros para o seu próprio trabalho. As dicas para as directivas LaTeX podem ser encontradas directamente no código fonte do modelo.

O "[exemplo.tex](.../.../src/example.tex)" mostra como imagens, referências de imagem, tabelas, listagens de códigos-fonte, fórmulas matemáticas e notas de rodapé podem ser usadas no LaTeX.

Além disso, encontrará vários titulares de lugares para os logótipos da sua universidade / faculdade, o seu nome, professores, número de matrícula, etc.

O modelo utiliza as citações de literatura alemã na bibliografia de acordo com a norma alemã DIN 1505, parte 2 de Janeiro de 1984 (ver [alphadin.bst](.../.../src/alphadin.bst)). Por favor verifique se este estilo de citação é aceite pelo seu instituto, o que é normalmente o caso para uma tese em língua alemã.

## Codificação de caracteres

O modelo utiliza o conjunto de caracteres geralmente recomendado UTF-8, pelo que pode utilizar directamente o umlauts alemão ÄäÖööÜü e as aspas „“ no seu código fonte.

## De LaTeX a PDF

Em "[scripts/generatePdf.sh](.../.../scripts/generatePdf.sh)" encontrará o script que muitas vezes pode ser utilizado directamente em sistemas operativos do tipo unix (Linux, Mac) após a instalação de uma distribuição TEX. Usando pdflatex, bibtex e makeindex um PDF incluindo bibliografia e lista de abreviaturas é gerado directamente a partir do modelo.

## Distribuições e editores de LaTeX

Provavelmente irá utilizar um editor com suporte LaTeX para escrever o seu trabalho.

### Linux: Debian, Ubuntu, Linux Mint

Para distribuições Linux baseadas em Debian, recomendo a distribuição TEX [TeX Live](http://www.tug.org/texlive/ "TeX Live") e o editor [Kile](http://kile.sourceforge.net/ "Kile").

Os links seguintes ajudá-lo-ão a instalar o software sob Ubuntu:
[Instalação do TeX Live](http://wiki.ubuntuusers.de/LATEX#TeX-Live "Instalação do TeX Live").
[Instalação do Kile](http://wiki.ubuntuusers.de/Kile "Instalação do Kile").

### Mac

No Mac, uma combinação da distribuição [MacTeX](http://www.tug.org/mactex/ "MacTeX") e do editor [TeXShop](http://pages.uoregon.edu/koch/texshop/ "TeXShop") provou ser muito útil. Uma funcionalidade útil com esta combinação: Com CMD + clique com o botão esquerdo do rato sobre um lugar no PDF, salta-se directamente para o lugar correspondente no código fonte LaTeX no editor.

### Janelas

No Windows utilizei pessoalmente [TeXlipse](http://texlipse.sourceforge.net/ "TeXlipse") (Plugin Eclipse para LaTeX) e o [TeXnicCenter](http://www.texniccenter.org/ "TeXnicCenter") como editor. Como distribuição [MikTeX](http://miktex.org/ "MikTeX") pode ser utilizado.

### Docker

O ambiente para criar ficheiros pdf pode ser executado num contentor Docker. Para esta tarefa, pode ser utilizado o [Dockerfile](.../.../Dockerfile) fornecido.

A imagem do Docker pode ser criada com o comando `docker build -t maknesium/latexvorlage:latest`. Depois, o recipiente pode ser criado com o comando `docker run -d --nome latexvorlage-container -v /pfad/zum/ordner/src:/app/src maknesium/latexvorlage:latest`. O contentor não é apagado depois de terminar de compilar os ficheiros tex e pode simplesmente ser iniciado novamente para compilar os ficheiros tex novamente com o comando `docker start latexvorlage-container'.

### Extensão de Oficina LaTeX para Código de Estúdio Visual

Ao utilizar a Extensão de Oficina LaTeX para Visual Studio Code como editor, o directório de abreviaturas pode não ser exibido correctamente.

Neste caso tem de mudar para o directório `/src` uma vez na linha de comando e executar o comando `makeindex mainfile.nlo -s ./latex_settings/abbreviations/nomencl.ist -o mainfile.nls`. O directório de abreviaturas será então exibido correctamente.

## Feedback

Se encontrar quaisquer comentários, sugestões para melhorias e/ou erros, por favor envie-me uma mensagem:
contacto em maknesium de

Em alternativa, terei todo o prazer em aceitar pedidos de extracção no Github.

Desejo-lhe muito sucesso e diversão enquanto escreve a sua tese com LaTeX!

# Licença

Esta obra está licenciada sob uma Licença Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Germany License.
http://creativecommons.org/licenses/by-nc-sa/3.0/de/

# Compra-me um café!

Se o modelo de látex lhe poupou (muito) tempo, finalmente entregou a sua tese e agora só quer dar algo em troca, é bem-vindo a convidar-me para um café (ou dois). Sim, eu gosto de café :)

[![Doar](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6LZRV8ZHN2Z9A)