FROM ubuntu:20.10

RUN export DEBIAN_FRONTEND=noninteractive
RUN ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
        texlive \
        texlive-base \
        texlive-lang-german \
        texlive-latex-extra \
        lmodern \
        git

RUN git clone https://github.com/maknesium/latex-vorlage-diplom-bachelor-masterarbeiten.git app

VOLUME /app/src

RUN cd /app/scripts
WORKDIR /app/scripts

ENTRYPOINT ["/app/scripts/generatePdf.sh"]