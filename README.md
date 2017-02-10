# Logo des FAU FabLabs

Da der eine Teil vom FAU Logo geklaut ist, kann dieses Repo nicht öffentlich zugänglich gemacht werden.

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
