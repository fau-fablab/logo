# Logo des FAU FabLabs

Für Dokumente, Einweisungen und Betriebsanweisungen:

- [`Logo/Logo.svg`](Logo/Logo.svg) bzw. [`Logo/Logo.pdf`](Logo/Logo.pdf): das Logo **ohne FAU-Schriftzug**
- [`Logo/Logo bunt.svg`](Logo/Logo%20bunt.svg) bzw. [`Logo/Logo-FAU-bunt.pdf`](Logo/Logo-FAU-bunt.pdf): das Logo **mit FAU-Schriftzug**, bunt
- [`Logo/Logo schwarz.svg`](Logo/Logo%20schwarz.svg) bzw. [`Logo/Logo-FAU-schwarz.pdf`](Logo/Logo-FAU-schwarz.pdf): das Logo **mit FAU-Schriftzug**, schwarz

Das Repository wird von [fablab-document](https://github.com/fau-fablab/fablab-document) als Untermodul eingebunden.

![Logo](https://github.com/fau-fablab/logo/blob/master/Logo/Logo%20bunt.svg)

[SVG](https://github.com/fau-fablab/logo/blob/master/Logo/Logo%20bunt.svg)

## Design Guide


- FabCube:
  - rot muss oben sein
  - grün muss links unten sein
  - blau muss rechts unten sein
  - darf aber drehend animiert sein
- Die Farben sind:
  - rot: #c52128
  - grün: #229567
  - blau: #143d69
  - sie sind einfarbig und flach und dürfen nicht durch glow oder blow Effekt verschandelt werden
  - Shadow ist erlaubt
  - Schwarz-Weiß ist erlaubt, Graustufen nur wenn nötig
  - Nur Kantenabbildung ohne Füllung ist erlaubt
  - Neu einfärben ist nicht erlaubt
- Hintergrund:
  - wenn möglich weiß (#ffffff)
  - mit adäquatem Abstand
- Wenn möglich SVG verwenden, ansonsten hochauflösende Pixelbilder

## Vorgehen

Erstelle eine SVG Zeichung eines Logos unter dem Namen `$name.svg`. Kopiere die Datei und mach einen weißen Hintergrund (weißes Rechteck) und nenne die Datei `$name_whitebg.svg`.

## Makefile

Es gibt ein Makefile um bei Bedarf aus allen SVG-Dateien PNG und PDF zu erzeugen und die SVG-Dateien zu minifien.

## Lizenz

`Logo/Logo.svg` und `Logo/Logo.pdf` (Logo ohne FAU-Schriftzug) sowie `Logo/Logo bunt.svg`,
`Logo/Logo schwarz.svg`, `Logo/Logo-FAU-bunt.pdf` und `Logo/Logo-FAU-schwarz.pdf` (Logo mit
FAU-Schriftzug) stehen unter
[CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/), wie die Dokumente des FAU FabLab.

Für die übrigen Dateien gilt diese Lizenz nicht.

Die PDFs werden aus den SVGs erzeugt:

```bash
rsvg-convert -f pdf -o Logo/Logo.pdf Logo/Logo.svg
rsvg-convert -f pdf -o Logo/Logo-FAU-bunt.pdf "Logo/Logo bunt.svg"
rsvg-convert -f pdf -o Logo/Logo-FAU-schwarz.pdf "Logo/Logo schwarz.svg"
```
