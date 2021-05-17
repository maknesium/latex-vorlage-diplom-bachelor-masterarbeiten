# latex-vorlage-diplom-bachelor-masterarbeiten #

Этот LaTeX-шаблон может быть использован для технических отчетов, BSc или MSc диссертации. В качестве примера смотрите "[Hauptdatei.pdf](../../src/Hauptdatei.pdf)".

![latex-vorlage-diplom-bachelor-masterarbeiten](../../main.png "latex-template-diplom-bachelor-masterthesis")

## Использование

Главным файлом шаблона является "[Hauptdatei.tex](../../src/Hauptdatei.tex)". Здесь установлены основные настройки макета и включены остальные файлы. Вы можете расширить эти файлы для своей работы. Подсказки к директивам LaTeX можно найти непосредственно в исходном коде шаблона.

"[example.tex](../../src/example.tex)" показывает, как в LaTeX можно использовать изображения, ссылки на изображения, таблицы, списки исходных кодов, математические формулы и сноски.

Кроме того, вы найдете несколько мест для размещения логотипов вашего университета / колледжа, ваше имя, профессора, номер аттестата зрелости и т.д.

Шаблон использует немецкие литературные ссылки в библиографии в соответствии с немецким стандартом DIN 1505, часть 2 от Января 1984 года (см. [alphadin.bst](../../src/alphadin.bst)). Пожалуйста, проверьте, принят ли этот стиль цитирования Вашим институтом, как правило, для диссертаций на немецком языке.

## Кодирование символов

В шаблоне используется обычно рекомендуемый набор символов UTF-8, поэтому вы можете напрямую использовать немецкие умляуты äÖööÜü и кавычки "" в вашем исходном коде.

## От LaTeX до PDF

В разделе "[scripts/generatePdf.sh](../../scripts/generatePdf.sh)" вы найдете скрипт, который часто можно использовать непосредственно на unix-подобных операционных системах (Linux, Mac) после установки дистрибутива TEX. Используя pdflatex, bibtex и makeindex, непосредственно из шаблона генерируется PDF, включающий библиографию и список аббревиатур.

## Дистрибутивы и редакторы LaTeX

Скорее всего, вы будете использовать редактор с поддержкой LaTeX для написания своей работы.

### Linux: Debian, Ubuntu, Linux Mint

Для дистрибутивов Linux, основанных на Debian, я рекомендую дистрибутив TEX [TeX Live](http://www.tug.org/texlive/ "TeX Live") и редактор [Kile](http://kile.sourceforge.net/ "Kile").

Следующие ссылки помогут вам установить программное обеспечение под Ubuntu:
[Установка TeX Live](http://wiki.ubuntuusers.de/LATEX#TeX-Live "Установка TeX Live").
[Установка Kile](http://wiki.ubuntuusers.de/Kile "Установка Kile").

### Mac

На компьютере Mac сочетание дистрибутива [MacTeX](http://www.tug.org/mactex/ "MacTeX") и редактора [TeXShop](http://pages.uoregon.edu/koch/texshop/ "TeXShop") оказалось очень полезным. Полезная особенность этой комбинации: С CMD + щелкните левой кнопкой мыши на месте в PDF вы перепрыгиваете непосредственно в соответствующее место в LaTeX исходный код в редакторе.

### Windows

Под Windows я лично использовал [TeXlipse](http://texlipse.sourceforge.net/ "TeXlipse") (Eclipse Plugin for LaTeX) и [TeXnicCenter](http://www.texniccenter.org/ "TeXnicCenter") в качестве редактора. В качестве дистрибутива можно использовать [MikTeX](http://miktex.org/ "MikTeX").

### Докер

Среда для создания pdf-файлов может быть запущена в контейнере Docker. Для этой задачи можно использовать предоставленный [Dockerfile](../../Dockerfile).

Образ Docker может быть создан с помощью команды `docker build -t maknesium/latexvorlage:last`. Затем контейнер можно создать командой `docker run -d --name latexvorlage-container -v /pfad/zum/ordner/src:/app/src maknesium/latexvorlage:last`. Контейнер не удаляется после завершения компиляции текстовых файлов и может быть просто запущен заново для компиляции текстовых файлов командой `docker start latexvorlage-container`.

### Расширение LaTeX Workshop для Visual Studio Code

При использовании расширения LaTeX Workshop Extension for Visual Studio Code в качестве редактора каталог сокращений может отображаться некорректно.

В этом случае необходимо один раз в командной строке перейти в каталог `/src` и выполнить команду `makeindex mainfile.nlo -s ./latex_settings/abbreviations/nomencl.ist -o mainfile.nls`. После этого каталог аббревиатур будет отображаться правильно.

## Обратная связь

Если вы найдете какие-либо комментарии, предложения по улучшению и/или ошибки, пожалуйста, отправьте мне сообщение:
контактное лицо на maknesium de

В качестве альтернативы, я с радостью приму просьбы о вытаскивании Гитуба.

Желаю Вам больших успехов и веселья во время написания диссертации с LaTeX!

# Лицензия

Это произведение лицензировано по лицензии Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Germany License.
http://creativecommons.org/licenses/by-nc-sa/3.0/de/

# Купи мне кофе!

Если шаблон латекса сэкономил Вам (много) времени, Вы наконец-то сдали диссертацию и теперь просто хотите что-то вернуть, приглашайте меня выпить кофе (или два). Да, я люблю кофе :)

[!](Пожертвовать)(https://img.shields.io/badge/Donate-PayPal-green.svg)] (https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6LZRV8ZHN2Z9A)