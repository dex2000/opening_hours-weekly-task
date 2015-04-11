# Wochenaufgabe: Öffnungszeiten

Mögliche Bilder:
* https://secure.flickr.com/photos/b3d_/4754465604
* https://secure.flickr.com/photos/gruenenrw/6765554553

Wer kennt es nicht: Man nimmt den langen Weg zum Lieblingsrestaurant auf sich, nur um auf verschlossene Türen zu stoßen, weil heute Ruhetag ist oder in selteneren Fällen, der Feiertag auf einen Samstag fällt oder Ähnliches. Um dieses Problem anzugehen, wurde in OpenStreetMap seit circa 2008 der Tag [`opening_hours`][DE:Key:opening_hours] etabliert. Damit lassen sich in maschinenlesbarer Form Öffnungszeiten in OSM eintragen, sodass ein schneller Blick beispielsweise auf [osm24.eu] ausreicht, um festzustellen, wann und wie lange eine Einrichtung geöffnet hat (dazu bitte die Legende auf [osm24.eu] unten rechts beachten). Diese Information hat sich sicher schon für viele als nützlich erwiesen und deshalb hat das Tagging-Schema und die Anzahl der Öffnungszeiten in den letzten Jahren [große Schritte][stats] gemacht.

Die Bestrebung, die Realität so genau wie möglich in OSM abbilden zu wollen, trifft definitiv auch auf das Eintragen der Öffnungszeiten zu. So ist das Schema mittlerweile sehr ausgefeilt und es lässt sich quasi alles taggen. Dies geht von einfachen Wochenplänen über die Angabe von anderen Zeiten für den ersten Montag im Monat bis hin zum Taggen von Feiertagen und/oder Schulferien oder gar die Angabe der Öffnungszeiten in Abhängigkeit zum lokalen Sonnenaufgang. So kompliziert die Öffnungszeiten auch sein mögen, es gibt ziemlich sicher ein Tagging-Schema dafür :)

## Wie können Öffnungszeiten eingetragen werden?

Zu beginn ein kleines Beispiel, wie es auch auf der [Wiki-Seite](https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours#Beispiele) zu finden ist:

[`Mo-Sa 10:00-20:00; Tu off`](http://openingh.openstreetmap.de/evaluation_tool/?EXP=Mo-Sa%2010%3A00-20%3A00%3B%20Tu%20off&DATE=1429825320000&lat=48.7769&lon=9.1844&mode=0)

Bedeutung: Geöffnet Montag bis Samstag von 10 bis 20 Uhr, außer dienstags.

Wie schon geschrieben, wurde in den letzten Jahren ein weitreichendes Schema entwickelt, um Öffnungszeiten einzutragen; und, was noch wichtiger ist, diese auch sinnvoll auswerten zu können. Denn was nützt es, wenn die eingetragenen Öffnungszeiten vorhanden aber nicht auswertbar sind? Das lässt sich mit anderen Tags vergleichen. Hier sollte ebenfalls auf ein einheitliches Schema geachtet werden, um mit den Daten später etwas anfangen zu können (beispielsweise eine Karte zu generieren). Es wurde versucht, das Schema möglichst einfach und lesbar zu halten, zugleich muss ich aber zugeben, dass es eine gewisse Komplexität erreicht hat und auch von erfahrenen Mappern teils falsch verstanden wird. Um also den oben genannten Ruhe- oder Feiertag richtig einzutragen, ist etwas Übung notwendig. Für den konkreten Aufbau des Schemas verweise ich auf die [Wiki-Seite](https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours#Beispiele), auf der viele Mapper und ich das Schema beschrieben haben. Für die sehr fortgeschrittenen Mapper gibt es auch noch eine [formale Spezifikation](https://wiki.openstreetmap.org/w/index.php?title=Key:opening_hours/specification) in der [Netzwolf](http://www.netzwolf.info/) und [ich] die „Sprache“ für die Öffnungszeiten spezifiziert haben beziehungsweise dies immer noch tun.

## Kurzum, worauf ist zu achten?

* Bitte nur Öffnungszeiten hochladen, die [maschinenlesbar][Auswertewerkzeug] sind.
* Die meisten Geschäfte haben an gesetzlichen Feiertagen geschlossen, dies muss über die Angabe von `PH off` explizit angegeben werden. Siehe im [Wiki](https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours#Elemente).

## Werkzeuge:

Um den Umgang mit den Öffnungszeiten zu vereinfachen, wurden eine Reihe von Werkzeugen geschaffen:

* Das erste und wichtigste Werkzeug dürfte das [Auswertewerkzeug] darstellen, mit dem sich Öffnungszeiten schreiben und testen lassen. Es wird jedem ans Herz gelegt, mit diesem Werkzeug vertraut zu werden bevor es ans Eintragen oder Korrigieren von Öffnungszeiten geht. Schaut euch dazu auch die [Beispiele][Auswertewerkzeug] an. An dieser Stelle sei noch erwähnt, dass dieses Werkzeug auch eine sehr umfangreiche Eingabe-Toleranz besitzt. Sollte ein Öffnungszeiten-Wert nicht genau dem Schema entsprechen, erscheint ein Hinweis und es wird teils auch angeboten, die Öffnungszeiten zu reparieren. Mit dieser Funktion können Öffnungszeiten von Webseiten oft relativ schnell übernommen werden, indem die Beschreibung von der Webseite kopiert wird und ins [Auswertewerkzeug] eingefügt wird. Üblicherweise müssen dann nur noch die Regeln [beispielsweise](https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours#Beispiele) mit [Semikolons](https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours/specification#normal_rule_separator) getrennt werden.

* [Overpass-Abfrage zum Finden von fehlenden Öffnungszeiten](https://overpass-turbo.eu/s/8ym).

* Zur Auswertung gibt es ebenfalls noch die [Öffnungszeiten-Karte], auf der mit grünen und roten Kreisen dargestellt wird, ob eine Einrichtung gerade geöffnet oder geschlossen ist. Es gibt noch weitere Symbole, die beispielsweise anzeigen, dass eine Öffnungszeit nicht ausgewertet werden konnte. Für die Legende einfach im Browser nach unten scrollen (nicht die Karte). Die Karte richtet sich primär an Mapper, die gezielt mit Öffnungszeiten arbeiten möchten.

* Alternativ zur [Öffnungszeiten-Karte] gibt es noch [viele weitere Karten](https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours#Anwendungen), die Öffnungszeiten ebenfalls darstellen. Empfohlen sei hier [osm24.eu].

* Zur täglichen Benutzung hat sich bei mir auf Android die Anwendung [OsmAnd](https://wiki.openstreetmap.org/wiki/DE:OsmAnd) bewehrt, die in der POI-Suche über die [Farbe der Richtungspfeile](https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours#Osmand) darstellt, ob die Einrichtung gerade geöffnet hat. Zu beachten ist aber, dass die [Auswertung der Öffnungszeiten in OsmAnd](https://wiki.openstreetmap.org/wiki/Key:opening_hours#OsmAnd) noch relativ eingeschränkt ist. Elemente wie Feiertage können noch nicht ausgewertet werden. Ich arbeite langfristig an einer [Lösung](https://github.com/ypid/ComplexAlarm#why-was-this-application-written) für dieses Problem. OsmAnd kommt bei mir auch zum Einsatz, um in Geschäften Öffnungszeiten aufzuschreiben. Dazu drücke ich für circa drei Sekunden auf die Einrichtung auf der Karte, bis der Punkt ausgewählt ist (OSM-Bearbeitungs-Plugin muss hierfür aktiviert sein). Anschließend tippe ich auf die Sprechblase und im Kontextmenu auf „POI einsenden“. Dann schreibe ich die Öffnungszeiten in das entsprechende Feld und drücke auf „Ändern“. Zuhause angekommen exportiere ich mir die POIs aus OsmAnd über die Einstellungen unter „OSM-Bearbeitung“, öffne die Datei auf dem Computer in JOSM und führe die Öffnungszeiten mit den - in der Regel schon vorhandenen - Objekten in OSM zusammen.

* Für JOSM gibt es das [OpeningHoursEditor Plugin](https://wiki.openstreetmap.org/wiki/JOSM/Plugins/OpeningHoursEditor). Dieses unterstützt aber aktuell nur einfache Öffnungszeiten ohne Feiertage und andere Sonderfälle. Siehe [Forenbeitrag](http://forum.openstreetmap.org/viewtopic.php?pid=453663). Unabhängig davon wird jede Öffnungszeit vor dem Hochladen von JOSM auf Basis des [Auswertewerkzeug] geprüft.

* Für QA-Arbeiten mit JOSM gibt es zusätzlich noch das [QAT Plugin](https://wiki.openstreetmap.org/wiki/Quality_Assurance_Tools_script). Alternativ kann auch über eine der angegebenen Overpass-Abfragen in JOSM gearbeitet werden.

* [Overpass-Abfragen für Öffnungszeiten mit PH/SH (Feiertage/Schulferien) oder ohne](http://forum.openstreetmap.org/viewtopic.php?pid=495797#p495797)

* Für iD gibt es momentan leider [noch keine Hilfe](https://github.com/openstreetmap/iD/issues/974) bei der Eingabe von Öffnungszeiten. Deshalb die besondere Bitte an die iD Nutzer, die Öffnungszeiten vor dem Hochladen mit dem [Auswertewerkzeug] zu prüfen.

## Auswertung

In der Vorbereitung zu dieser Wochenaufgabe wurde eine [statistische Auswertung][stats] geschaffen, die nicht nur die Anzahl der Öffnungszeiten auswertet, sondern auch, wie viele Werte maschinenlesbar sind und diese Werte als Graph darstellt. Die Daten für die weltweite Statistik stammen von [Taginfo](https://taginfo.openstreetmap.org). Um eine regionale Auswertung zu haben, wurde die Statistik noch um eine [Overpass API](https://wiki.openstreetmap.org/wiki/DE:Overpass_API)-Anbindung erweitert. Die regionale Auswertung wird im Zeitraum der Wochenaufgabe stündlich aktualisiert.

## Ziel

Am ersten Tag dieser Wochenaufgabe existierten weltweit [383 000][stats] Öffnungszeiten, bisher kommen/kamen täglich circa 400 hinzu. Mit Eurer Hilfe dürften wir die 400 000er Marke bis zum 03. Mai sicher knacken können, was meint ihr? Zugleich gilt es, die Anzahl der maschinell auswertbaren Öffnungszeiten wieder zu steigern. Diese hat weltweit seit Beginn der statistischen Erhebungen kontinuierlich von ursprünglich 97,2 % Auswertequote auf 96,8 % abgenommen. Das ist zwar nicht viel, aber der Trend geht nun mal in die falsche Richtung ;) Als Grund für die fallende Qualität würde ich OSM-Editoren nennen, die keine Unterstützung beim Eingeben von korrekten Öffnungszeiten geben.

## Fragen und Probleme

Für den Fall, dass ich den einen oder anderen, der noch nicht so viel mit Öffnungszeiten zu tun hatte, mit diesem Beitrag etwas erschlagen habe, möchte ich mich entschuldigen :) Bei Fragen würde ich folgendes Vorgehen empfehlen:

* [Wiki-Seite zum Tag `opening_hours`][DE:Key:opening_hours].
* Testen mit dem [Auswertewerkzeug].
* [Talk Seite im Wiki (auf Englisch)](https://wiki.openstreetmap.org/wiki/Talk:Key:opening_hours).
* Suche im [Forum] und in der [tagging mailing Liste](https://wiki.openstreetmap.org/wiki/Mailing_lists).
* Frage stellen über eine der folgenden Kanäle.

## Kommunikation

Zu dieser Wochenaufgabe gibt es einen Thread im Forum und auf Talk-de, in dem ihr Fragen stellen könnt.

Falls ihr auf Twitter über diese Wochenaufgabe berichtet, würde ich mich freuen, wenn ihr den Hashtag [#OSMWA1517](https://twitter.com/search?f=realtime&q=%23OSMWA1517) verwendet.

## Weitergehende Links

* [Erklärung des Schemas von Netzwolf](http://www.netzwolf.info/kartografie/osm/time_domain/erklaerung) (die „offenen Punkte“ wurden bereits gelöst).
* Die Entstehungsgeschichte des [Auswertewerkzeug] habe ich [im Forum](http://forum.openstreetmap.org/viewtopic.php?pid=369060#p369060) mal genauer beleuchtet.
* [Mein Benutzer-Blog auf OSM](https://www.openstreetmap.org/user/ypid/diary)
* [Die Auswertesoftware auf GitHub](https://github.com/ypid/opening_hours.js)

[DE:Key:opening_hours]: https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours
[ich]: https://wiki.openstreetmap.org/wiki/User:Ypid
[stats]: http://openingh.openstreetmap.de/stats/
[Auswertewerkzeug]: http://openingh.openstreetmap.de/evaluation_tool/
[Öffnungszeiten-Karte]: http://openingh.openstreetmap.de/
[osm24.eu]: http://www.osm24.eu
[Forum]: http://forum.openstreetmap.org/
