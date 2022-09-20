#!/bin/bash
#
function backup {
   set `date`
   BACKUPFILE="$3$2$6"
   if tar czvf ${BACKUPDIR}/${BACKUPFILE}.tar $DIR
   then
      echo "Backup für $DIR erfolgreich in $BACKUPDIR angelegt"
      echo "Backup-Name : ${BACKUPFILE}.tar"
   else
      echo "Backup wurde nicht durchgeführt !!!"
   fi
}

function restore {
    if tar -xf $1
    then
        echo "Backup für $1 erfolgreich wiederhergestellt"
    else
        echo "Backup konnte nicht wiederhergestellt werden !!!"
    fi
}

function printBackUp {
    echo "Hier sind 2 Argumente erforderlich
usage: $0 Operation Verzeichnis/Backupfile

Möglich Angaben für Operation:
save    = Führt Backup vom kompletten Verzeichnis durch
          Verzeichnis wird als zweites Argument angegeben
restore = Stellt die Dateien wieder her
          Backupfile wird als zweites Argument angegeben
          "
}
 
BACKUPDIR=$HOME/backup
DIR=$2

if [ "$#" -lt 2 ]
then
    printBackUp
    exit 1
fi
 
# Falls Verzeichnis für Backup nicht existiert ...
if ls $BACKUPDIR > /dev/null
then
   echo "Backup-Verzeichnis ($BACKUPDIR) existiert"
elif mkdir $BACKUPDIR > /dev/null
then 
   echo "Backup-Verzeichnis angelegt ($BACKUPDIR)"
else
   echo "Konnte kein Backup-Verzeichnis anlegen"
   exit 1
fi
# Wurde save oder read als erstes Argument verwendet ...
if [ "$1" = "save" ]
then
   backup
elif [ "$1" = "restore" ]
then
    restore $DIR
fi