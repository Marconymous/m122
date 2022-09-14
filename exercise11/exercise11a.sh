#!/bin/bash
# ------ TODO: Funktion 'usage' ------
# Ausgabe: Hier sind 3 Argumente erforderlich
# Ausgabe: usage: Skriptname anrede vorname nachname
# ------ TODO: Funktion 'usage' ------

# TODO Falls weniger als 3 Argumente angegeben
if [ $# -lt 3 ]
then
  echo "Hier sind 3 Argumente erforderlich"
  echo "usage: Skriptname anrede vorname nachname"
  exit 1
fi

