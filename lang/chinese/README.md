# latex-vorlag-diplom-bachelor-masterarbeiten

这个LaTeX模板可以用于技术报告、学士或硕士论文。请看"[Hauptdatei.pdf](../../src/Hauptdatei.pdf) "为例。

![latex-vorlage-diplom-bachelor-masterarbeiten](../../main.png "latex-template-diplom-bachelor-masterthesis")

##用途

模板的主文件是"[Hauptdatei.tex](../../src/Hauptdatei.tex)"。这里设置了基本的布局设置，并包含了其他文件。你可以为自己的工作扩展这些文件。LaTeX指令的提示可以直接在模板的源代码中找到。

在"[example.tex](../../src/example.tex) "中显示了如何在LaTeX中使用图像、图像参考、表格、源代码列表、数学公式和脚注。

此外，你还可以找到几个占位符，用于放置你的大学/学院的标志、你的姓名、教授、预科号等。

本模板根据德国标准DIN 1505，1984年1月起的第2部分，在书目中使用德国文献引文（见[alphadin.bst](../../src/alphadin.bst)）。请检查您的学院是否接受这种引用方式，通常德文论文都是如此。

## ＃＃字符编码

该模板使用了普遍推荐的UTF-8字符集，因此您可以在源代码中直接使用德文的umlauts ÄäÖööÜü和引号""。

## ＃＃从LaTeX到PDF

在"[scripts/generatePdf.sh](../../scripts/generatePdf.sh) "下，你可以找到安装了TEX发行版后，在类似unix的操作系统(Linux，Mac)上直接使用的脚本。使用pdflatex、bibtex和makeindex可以直接从模板中生成包含书目和缩写列表的PDF。

## LaTeX发行版和编辑器

你可能会使用一个支持LaTeX的编辑器来编写你的作品。

### Linux: Debian, Ubuntu, Linux Mint

对于基于Debian的Linux发行版，我推荐TEX发行版[TeX Live](http://www.tug.org/texlive/ "TeX Live")和编辑器[Kile](http://kile.sourceforge.net/ "Kile")。

下面的链接将帮助你在Ubuntu下安装软件。
安装[TeX Live](http://wiki.ubuntuusers.de/LATEX#TeX-Live "安装TeX Live")。
安装[Kile](http://wiki.ubuntuusers.de/Kile "安装Kile")。

###Mac

在Mac上，[MacTeX](http://www.tug.org/mactex/ "MacTeX")发行版和[TeXShop](http://pages.uoregon.edu/koch/texshop/ "TeXShop")编辑器的组合被证明是非常有用的。这个组合的一个有用的功能。用CMD+左键点击PDF中的一个地方，你可以直接跳转到编辑器中LaTeX源代码的相应位置。

### Windows

在Windows下，我个人使用[TeXlipse](http://texlipse.sourceforge.net/ "TeXlipse")(Eclipse Plugin for LaTeX)和[TeXnicCenter](http://www.texniccenter.org/ "TeXnicCenter")作为编辑器。作为发行版可以使用[MikTeX](http://miktex.org/ "MikTeX")。

### Docker

创建pdf文件的环境可以在Docker容器中运行。对于这个任务，可以使用提供的[Dockerfile](../../Dockerfile)。

Docker镜像可以通过命令`docker build -t maknesium/latexvorlage:latest`来创建。然后，可以用`docker run -d --name latexvorlage-container -v /pfad/zum/ordner/src:/app/src maknesium/latexvorlage:latest`命令创建容器。容器在编译完tex文件后不会被删除，可以简单地用`docker start latexvorlage-container`命令再次启动，重新编译tex文件。

### LaTeX Workshop Extension for Visual Studio Code

当使用LaTeX Workshop Extension for Visual Studio Code作为编辑器时，缩写目录可能无法正确显示。

在这种情况下，你必须在命令行上改变到`/src`目录，执行`makeindex mainfile.nlo -s ./latex_settings/abbreviations/nomencl.istt -o mainfile.nls`命令。缩写目录就会正确显示。

## ＃＃反馈

如果您发现任何意见、改进建议和/或错误，请给我留言。
联系方式： maknesium de

另外，我也很乐意接受Github上的拉取请求。

祝愿您在使用 LaTeX 撰写论文的过程中获得成功和乐趣!

# 许可证

本作品采用知识共享署名-非商业性-相同方式共享3.0德国许可协议进行许可。
http://creativecommons.org/licenses/by-nc-sa/3.0/de/

# 请我喝杯咖啡吧!

如果乳胶模板节省了你（很多）时间，你终于交出了你的论文，现在你只是想回馈一下，欢迎你邀请我喝杯咖啡（或两杯）。是的，我喜欢喝咖啡:)

[！[捐赠](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6LZRV8ZHN2Z9A)