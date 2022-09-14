# Variablen

| Operator                            | Bedeutung                                                                                      |
|-------------------------------------|------------------------------------------------------------------------------------------------|
| +, –, *, /                          | Addition, Subtraktion, Multiplikation, Divison                                                 |
| %                                   | Rest einer ganzzahligen Divison (Modulo-Operator)                                              |
| var+=n var–=n var*=n var/=n var%=n  | Kurzformen für +, –, *, /, % Kurzform für bspw. Addition var+=n ist gleichwertig zu var=var+n  |
| var>>n                              | Bitweise Linksverschiebung um n Stellen                                                        |
| var<<n                              | Bitweise Rechtsverschiebung um n Stellen                                                       |
| >>= <<=                             | Kurzformen für die Links- bzw. Rechtsverschiebung << und >>                                    |
| var1&var2                           | Bitweises UND                                                                                  |
| var1^var2                           | Bitweises exklusives ODER (XOR)                                                                |
| var1\|var2                          | Bitweises ODER                                                                                 |
| ~                                   | Bitweise Negation                                                                              |
| &= ^= \|=                           | Kurzformen für bitweise UND, exklusives ODER sowie ODER (&, \| und ^)                          |


Variable=`echo "[scale=n ;] Rechenoperation" | bc [-l]`
| Funktion  | Bedeutung                     |
|-----------|-------------------------------|
| s(x)      | Sinus von x                   |
| c(x)      | Cosinus von x                 |
| a(x)      | Arcustangens von x            |
| l(x)      | Natürlicher Logaritmus von x  |
| e(x)      | Exponentialfunktion e hoch x  |

| Vorgabewert-Konstrukt  | Bedeutung                                                                                                                                                                                                  |
|------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ${var:–wort}           | Ist var mit einem Inhalt besetzt (nicht Null), wird var zurückgegeben. Ansonsten wird die Variable wort verwendet.                                                                                         |
| ${var:+wort}           | Hier wird wort zurückgegeben,  wenn die var nicht (!) leer ist. Ansonsten wird ein Null-Wert  zurückgegeben. Praktisch das Gegenteil von ${var:–wort}.                                                     |
| ${var:=wort}           | Ist var nicht gesetzt oder entspricht var einem Null-Wert, dann setze var=wort. Ansonsten wird var zurückgegeben.                                                                                          |
| ${var:?wort}           | Gibt var zurück, wenn var  nicht Null ist. Ansonsten: Ist ein wort gesetzt, dann eben wort  ausgeben. Wenn kein wort angegeben wurde, einen vordefinierten Text  verwenden und das Shellscript verlassen.  |
|                        |                                                                                                                                                                                                            |
|                        |                                                                                                                                                       