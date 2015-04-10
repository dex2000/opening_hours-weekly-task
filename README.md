Kurzbeschreibung ypid:
Robin `ypid` Schneider ist aktiver Mapper seit 2013 und hat sein Hauptaugenmerk auf den Bereich Öffnungszeiten gelegt, denn er seit 2013 maßgeblich vortreibt.

Mögliche Bilder (nach Präferenz geordnet):
* https://secure.flickr.com/photos/b3d_/4754465604
* https://secure.flickr.com/photos/gruenenrw/6765554553

# Wochenaufgabe: Öffnungszeiten

Wer kennt es nicht: Man nimmt denn langen Weg zum Lieblingsrestaurant auf sich, nur um auf verschlossene Türen zu stoßen, weil heute Ruhetag ist oder in selteneren Fällen, der Feiertag auf einen Samstag fällt oder ähnliches. Um dieses Problem anzugehen wurde in OpenStreetMap seit circa 2008 der Tag „[opening_hours]“ etabliert. Mit diesem Tag lassen sich in maschienlesbarer Form Öffnungszeiten in OSM eintragen, sodass ein scheller Blick beispielsweise auf die [Öffnungszeiten Karte] ausreicht, um festzustellen und wann eine Einrichtung geöffnet hat und wielange. Diese Information hat sich sicher schon für viele als Nützlich erwiesen und deshalb hat das Mapping Schema und die Anzahl der Öffnungszeiten in den letzten Jahren große Schritte gemacht.

Die Bestrebung, die Realität so genau wie in OSM abbilden zu wollen, trifft definitiv auch das Eintragen der Öffnungszeiten zu. So ist das Scheme mittlerweile sehr ausgefeilt und es lässt sich quasi alles taggen. Dies geht von einfachen Wochenplänen über die Angabe von anderen Öffnungszeiten für den ersten Montag im Montag bis hin zum taggen von Feiertagen und Schulferien oder die Angabe der Öffnungszeiten in Abhängigkeit zum lokalen Sonnenauf- oder Untergang. So kompliziert die Öffnungszeiten auch sein mögen, es gibt ziemlich sicher ein Tagging Schema dafür :)

## Wie mappt man das?

Zu beginn ein kleines Beispiel, wie es auch auf der [Wiki Seite](https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours#Beispiele) zu finden ist:

[Mo-Sa 10:00-20:00; Tu off](http://openingh.openstreetmap.de/evaluation_tool/?EXP=Mo-Sa%2010%3A00-20%3A00%3B%20Tu%20off&DATE=1429825320000&lat=48.7769&lon=9.1844&mode=0)

Bedeutung: Geöffnet Montag bis Samstag von 10 bis 20 Uhr, außer dienstags.

Wie schon geschrieben wurde in den letzten Jahren ein weitreichendes Schema entwickelt, um Öffnungszeiten einzutragen und, was noch wichtiger ist, diese auch Sinnvoll auswerten zu können. Denn was nützt es, wenn die eingetragenen Öffnungszeiten nicht auswertbar sind? Das lässt sich mit anderen Tags Vergleich. Hier sollte ebenfalls auf ein einheitliches Schema geachtet werden um mit den Daten später etwas anfangen zu können (beispielsweise eine Karte zu generieren). Es wurde versucht, das Schema möglichst einfach und lesbar zu halten, zugleich muss ich aber zugeben, dass es eine gewisse Komplexität erreicht hat und auch von erfahrenen Mappern teils falsch verstanden wird. Um also denn oben genanten Ruhetag oder Feiertag richtig einzutragen ist etwas Übung notwendig. Für den konkreten Aufbau des Schemas verweise ich auf die [Wiki Seite](https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours#Beispiele) auf der ich und andere Mapper das Schema beschrieben haben. Für die sehr fortgeschrittenen Mapper gibt es auch noch eine [formale Spezifikation](https://wiki.openstreetmap.org/w/index.php?title=Key:opening_hours/specification) in der [Netzwolf](http://www.netzwolf.info/) und [ich] die „Sprache“ für die Öffnungszeiten spezifiziert haben beziehungsweise dies immer noch tun.

Kurzum, worauf ist zu achten?

* Bitte nur Öffnungszeiten hochladen, die [maschienen lesbar][Auswertewerkzeug] sind.
* Ferien werden nicht automatisch an die Öffnungszeiten gehängt. Diese müssen also explizit rein geschrieben werden. Siehe im [Wiki](https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours#Elemente).
* Die Einsteiger Fehler vermeiden

## Werkzeuge:

Um denn Umgang mit den Öffnungszeiten zu vereinfachen, wurden eine reihe von Werkzeugen geschaffen:

* Das erste und wichtigste Werkzeug dürfte das [Auswertewerkzeug] darstellen, mit dem sich Öffnungszeiten schreiben und testen lassen. Es wird jedem ans Herz gelegt, mit diesem Werkzeug vertraut zu werden bevor es ans eintragen oder korrigieren von Öffnungszeiten geht. Schaut euch dazu die [Beispiele][Auswertewerkzeug] auf der Seite an. An dieser Stelle sei noch erwähnt, dass dieses Werkzeug auch eine sehr umfangreiche Eingabe Toleranz besitzt. Sollte ein Öffnungszeiten Wert nicht genau dem Schema entsprechen erscheint ein Hinweis und es wird teils auch angeboten, die Öffnungszeiten zu reparieren.

* [Abfrage zum finden von fehlenden Öffnungszeiten](https://overpass-turbo.eu/s/8ym)

* Zur Auswertung gibt es ebenfalls noch die bereits erwähnte [Öffnungszeiten Karte], auf der mit grünen und roten kreisen dargestellt wird, ob eine Einrichtung gerade geöffnet oder geschlossen ist. Es gibt noch weitere Symbole, die beispielsweise anzeigen, dass eine Öffnungszeit nicht ausgewertet werden konnte. Für die Legende einfach im Browser nach unten scrollen (nicht die Karte). Die Karte richtet sich primär an mapper, die gezielt mit Öffnungszeiten arbeiten möchten.

* Alternativ zur [Öffnungszeiten Karte] gibt es noch [viele weitere Karten](), die Öffnungszeiten ebenfalls darstellen. Empfohlen sei hier [osm24.eu](http://www.osm24.eu).

* Zur täglichen Benutzung hat sich bei mir auf für Android die Anwendung [OsmAnd](https://wiki.openstreetmap.org/wiki/DE:OsmAnd) bewehrt, die in der POI suche über die Farbe der Richtungspfeile darstellt. Zu beachten ist aber, dass die Auswertung der Öffnungszeiten in OsmAnd noch relativ eingeschränkt ist. Elemente wie Feiertage können noch nicht ausgewertet werden. Ich arbeite langfristig an einer [Lösung](https://github.com/ypid/ComplexAlarm#why-was-this-application-written) für dieses Problem. OsmAnd kommt bei mir auch zum Einsatz um in Geschäften Öffnungszeiten aufzuschreiben. Dazu gehe ich drücke ich für circa drei Sekunden auf die Einrichtung auf der Karte, bis der Punkt ausgewählt ist (OSM- Bearbeitungs Plugin muss hierfür aktiviert sein). Anschließend tippe ich auf die Sprechblase und anschließend im Kontextmenu auf „POI einsenden“. Dann schreibe ich die Öffnungszeiten in das entsprechende Feld und drücke auf „Ändern“. Zuhause angekommen exportiere ich mir die POIs aus OsmAnd über die Einstellungen unter „OSM-Bearbeitung“, öffne die Datei auf dem Computer in JOSM und führe die Öffnungszeiten, mit dem, in der Regel schon vorhandenen Objekt zusammen.

* Für JOSM gibt es das [OpeningHoursEditor Plugin](https://wiki.openstreetmap.org/wiki/JOSM/Plugins/OpeningHoursEditor). Dieses unterstützt aber aktuell nur einfache Öffnungszeiten. Siehe [Forenbeitrag](http://forum.openstreetmap.org/viewtopic.php?pid=453663). Unabhängig davon wird jede Öffnungszeit vorher von JOSM mit dem [Auswertewerkzeug] geprüft.

* Für QA Arbeiten mit JOSM gibt es zusätzlich noch das [QAT Plugin](https://wiki.openstreetmap.org/wiki/Quality_Assurance_Tools_script). Alternativ kann auch über eine der folgenden Overpass Abfragen in JOSM gearbeitet werden.

* [Abfragen für Öffnungszeiten mit PH/SH oder ohne](http://forum.openstreetmap.org/viewtopic.php?pid=495797#p495797)

# Auswertung

In der Vorbereitung zu dieser Wochenaufgabe wurde eine statistische Auswertung geschaffen, die nicht nur die Anzahl der Öffnungszeiten auswertet, sondern auch wieviele Werte maschinenlesbar sind und diese Werte als Graph darstellt. Die Daten für die weltweite Statistik stammen von [Taginfo](https://taginfo.openstreetmap.org/). Um eine regionale Auswertung zu haben, wurde die Statistik noch um eine Overpass API Anbindung erweitert.

Die Statistik ist [hier][stats] zu finden. Die regionale Auswertung wird im Zeitraum der Wochenaufgabe stündlich aktualisiert.

## Ziel

Vor dieser Wochenaufgabe existierten weltweit [383 000][stats] Öffnungszeiten und es kommen täglich um die 400 neue hinzu. Mit eurer Hilfe dürften wir die 400 000er Marke bis zum 03 Mai sicher knacken können, was meint ihr? Zugleich gilt es, die Anzahl der maschinell Auswertbaren Öffnungszeiten wieder zu steigern. Diese sind seit beginn der statisch tischen Erhebungen kontinuierlich abnehmend von ursprünglich 97,2  % Auswertequote zu 96,8 %. Das ist zwar nicht viel aber der Trent geht nun mal in die falsche Richtung ;)

## Fragen und Probleme

Für denn Fall, dass ich denn einen oder anderen der noch nicht so viel mit Öffnungszeiten zu tun hatte mit diesem Beitrag etwas erschlagen möchte ich mich Entschuldigen :) Bei Fragen würde ich folgendes vorgehen empfehlen:

* [Wiki Seite](https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours)
* Testen mit dem [Auswertewerkzeug]
* [Talk Seite im Wiki (auf Englisch)](https://wiki.openstreetmap.org/wiki/Talk:Key:opening_hours)
* [Forum](http://forum.openstreetmap.org/) oder auf der [tagging mailing liste](https://wiki.openstreetmap.org/wiki/Mailing_lists)

## Weitergehende links

* Die Entstehungsgeschichte des [Auswertewerkzeug] habe ich [im Forum](http://forum.openstreetmap.org/viewtopic.php?pid=369060#p369060) mal genauer beleuchtet.
* [Mein Blog auf OSM](https://www.openstreetmap.org/user/ypid/diary)
* [Die Auswertesoftware auf GitHub](https://github.com/ypid/opening_hours.js)

[opening_hours]: https://wiki.openstreetmap.org/wiki/Key:opening_hours
[ich]: https://wiki.openstreetmap.org/wiki/User:Ypid
[stats]: http://openingh.openstreetmap.de/stats/
[Auswertewerkzeug]: http://openingh.openstreetmap.de/evaluation_tool/
[Öffnungszeiten Karte]: http://openingh.openstreetmap.de/

## FIXME:
* Spellchecking
* "man" durch neutrale Form ersetzen?
