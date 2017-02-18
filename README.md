# LaTeX-Vorlage für wissenschaftliche Arbeiten an der Hochschule Furtwangen
Dieses [LaTeX](https://www.latex-project.org)-Template basiert auf der [Richtlinie für die Erstellung
wissenschaftlicher Arbeiten](http://www.hs-furtwangen.de/fileadmin/user_upload/Fakultaet_IN/Dokumente/Abschlussarbeiten/RichtlinienWissenschaftlicheArbeiten.pdf) (Version 3.2 vom 27. September 2013) der [Fakultät Informatik](http://www.hs-furtwangen.de/studierende/fakultaeten/informatik.html) der [Hochschule Furtwangen](http://www.hs-furtwangen.de).

## Demo
[demo.pdf](demo.pdf)


## Voraussetzungen

### Docker
Zur Erzeugung des PDF wird eine funktionierende Installation von [Docker](https://docs.docker.com/engine/installation/) benötigt.

### Logo der Hochschule Furtwangen
Das [offizielle Logo der Hochschule Furtwangen](https://marke.hs-furtwangen.de/fileadmin/user_upload/Print/HFU_logos/Logo_HFU_rz_4c.jpg) ist nicht Bestandteil des Templates.
Es muss von https://marke.hs-furtwangen.de bezogen und in dem Verzeichnis `vendor` abgelegt werden.

## Erzeugung des PDF
`./run.sh build`

## Automatische Erzeugung des PDF bei Dateiänderungen
`./run.sh watch`

## Verbindung in den laufenden Docker Container
`./run.sh shell`
