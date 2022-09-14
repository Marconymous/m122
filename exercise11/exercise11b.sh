#!/bin/bash
# author: FIXME
# date:   FIXME

# ------ TODO: Funktion 'generateRandom' ------
# Falls weniger als 2 Argumente angegeben
#   Variable 'randomNumber' ist ein leerer String
#   Returnwert: -1
#
# Zufallszahl generieren mit der Formel: RANDOM % ( $2 - $1 +1 ) + $1
# und in 'randomNumber' speichern
# Returnwert: 0
# ------ TODO: Funktion 'generateRandom' ------

generateRandom ()
{
  if ! [ "$1" -a "$2" ]
  then
    randomNumber=""
  else
    randomNumber=$((RANDOM % ( $2 - $1 +1 ) + $1))
  fi
}

# Generate a random number between 10 and 20
generateRandom 10 20
echo "The random number is ${randomNumber}"

# invalid call
generateRandom 1
echo "The random number is ${randomNumber}"


