| Kanal                     | Syntax              | Beschreibung                                                                   |
|---------------------------|---------------------|--------------------------------------------------------------------------------|
| 1 (Standardausgabe)       | cmd > file          | Standardausgabe in eine Datei umlenken                                         |
| 1 (Standardausgabe)       | cmd >> file         | Standardausgabe ans Ende einer Datei umlenken                                  |
| 2 (Standardfehlerausgabe) | cmd 2> file         | Standardfehlerausgabe in eine Datei umlenken                                   |
| 2 (Standardfehlerausgabe) | cmd 2>> file        | Standardfehlerausgabe ans Ende einer Datei umlenken                            |
| Kanal 1/2                 | cmd > file 2>&1     | Standardfehlerausgabe und Standardausgabe in die gleiche Datei umlenken        |
| Kanal 1/2                 | cmd > file 2> file2 | Standardfehlerausgabe und Standardausgabe jeweils in eine extra Datei umlenken |
| 0 (Standardeingabe)       | cmd < file          | Eine Datei in die Standardeingabe eines Kommandos umleiten                     |

you@host > find / -user you -print > find_you.dat 2>/dev/null //Standart output in datei
you@host > grep audio < find_you.dat	//In datei Suchen

you@host >  find / -user you -print 2>/dev/null | grep audio //Macht das gleiche wie das obrige

you@host > find / -user you -print 2>/dev/null | \ grep audio | wc -l //Befehle erweiterbar

you@host > du -bc | sort -n | tee februar05.log year05.log //Output in mehrere Dateien und Bildschirm ausgeben

you@host > du -bc | sort -n | tee -a februar05.log year05.log //An Dateien Ouput anhängen

you@host > grep audio < find_you.dat > audio.dat // Input & Output ändern

| Kanal                                          | Syntax               | Beschreibung                                                                    |
|------------------------------------------------|----------------------|---------------------------------------------------------------------------------|
| 1 (Standardausgabe)                            | cmd > file           | Standardausgabe in eine Datei umlenken                                          |
| 1 (Standardausgabe)                            | cmd >> file          | Standardausgabe ans Ende einer Datei umlenken                                   |
| 2 (Standardfehlerausgabe)                      | cmd 2> file          | Standardfehlerausgabe in eine Datei umlenken                                    |
| 2 (Standardfehlerausgabe)                      | cmd 2>> file         | Standardfehlerausgabe ans Ende einer Datei umlenken                             |
| 1 (Standardausgabe) 2 (Standardfehlerausgabe)  | cmd > file 2>&1      | Standardfehlerausgabe und Standardausgabe in die gleiche Datei umlenken         |
| 1 (Standardausgabe) 2 (Standardfehlerausgabe)  | cmd > file 2> file2  | Standardfehlerausgabe und Standardausgabe jeweils in eine extra Datei umlenken  |
| 0 (Standardeingabe)                            | cmd < file           | Eine Datei in die Standardeingabe eines Kommandos umleiten                      |

# Wildcards

`*` beliebige Anzahl Zeichen
`?` ein beliebiges Zeichen
`[ ]` alles dazwischen gilt als günstiges zeichen zb. `[12]`

| Zeichenmenge  | Bedeutung                                     | Beschreibung                                                                   |
|---------------|-----------------------------------------------|--------------------------------------------------------------------------------|
| [:alnum:]     | Buchstaben, Unterstrich und dezimale Ziffern  | Standardausgabe in eine Datei umlenken                                         |
| [:alpha:]     | Groß- und Kleinbuchstaben                     | Standardausgabe ans Ende einer Datei umlenken                                  |
| [:digit:]     | Dezimale Ziffern                              | Standardfehlerausgabe in eine Datei umlenken                                   |
| [:lower:]     | Kleinbuchstaben                               | Standardfehlerausgabe ans Ende einer Datei umlenken                            |
| [:upper:]     | Großbuchstaben                                | Standardfehlerausgabe und Standardausgabe in die gleiche Datei umlenken        |
| [:print:]     | Nur druckbare Zeichen                         | Standardfehlerausgabe und Standardausgabe jeweils in eine extra Datei umlenken |
| [:space:]     | Leerzeichen, Tabulator ...                    | Eine Datei in die Standardeingabe eines Kommandos umleiten                     |

| Muster-Alternativen                        | Bedeutung                          | Beschreibung                                                            |
|--------------------------------------------|------------------------------------|-------------------------------------------------------------------------|
| @(pattern1 \| patter2 \| ... \| patternN)  | Eines der Muster                   | Standardausgabe in eine Datei umlenken                                  |
| !(pattern1 \| patter2 \| ... \| patternN)  | Keines der Muster                  | Standardausgabe ans Ende einer Datei umlenken                           |
| +(pattern1 \| patter2 \| ... \| patternN)  | Mindestens eines der Muster        | Standardfehlerausgabe in eine Datei umlenken                            |
| ?(pattern1 \| patter2 \| ... \| patternN)  | Keines oder eines der Muster       | Standardfehlerausgabe ans Ende einer Datei umlenken                     |
| *(pattern1 \| patter2 \| ... \| patternN)  | Keines, eines oder mehrere Muster  | Standardfehlerausgabe und Standardausgabe in die gleiche Datei umlenken |

| Angabe         | Bedeutung                                    |
|----------------|----------------------------------------------|
| ~              | Heimverzeichnis des eingeloggten Benutzers   |
| ~BENUTZERNAME  | Heimverzeichnis eines angegebenen Benutzers  |
| ~–             | Verzeichnis, das zuvor besucht wurde         |
| ~+             | Aktuelles Arbeitsverzeichnis (wie pwd)       |