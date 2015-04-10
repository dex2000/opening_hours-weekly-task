Kurzbeschreibung ypid:
Robin `ypid` Schneider ist aktiver Mapper seit 2013 und hat sein Hauptaugenmerk auf den Bereich Öffnungszeiten gelegt, denn er seit 2013 maßgeblich voranbringt.

Mögliche Bilder (nach Präferenz geordnet):
* https://secure.flickr.com/photos/b3d_/4754465604
* https://secure.flickr.com/photos/gruenenrw/6765554553

Wochenaufgabe: 400 000 Öffnungszeiten und darüber hinaus

Wer kennt es nicht: Man nimmt denn langen Weg zum Lieblingsrestaurant auf sich, nur um auf verschlossene Türen zu stoßen, weil heute Ruhetag ist oder in selteneren Fällen, der Feiertag auf einen Samstag fällt. Um dieses Problem anzugehen wurde in OpenStreetMap seit circa 2008 der Tag „opening_hours“ etabliert. Mit diesem Tag lässt sich in maschienlesbarer Form die taggen, sodass ein scheller Blick beispielsweise auf die [Öffnungszeiten Karte](http://openingh.openstreetmap.de/) ausreicht, um festzustellen und wann eine Einrichtung geöffnet hat. Diese Information hat sich sicher schon für viele als Nützlich erwiesen und deshalb hat das Mapping Schema und die Anzahl der Öffnungszeiten in den letzten Jahren große Schritte gemacht.

Die Bestrebung, die Realität so genau wie in OSM abbilden zu wollen, trifft definitiv auch das Eintragen der Öffnungszeiten zu. So ist das Scheme mittlerweile sehr ausgefeilt und es lässt sich quasi alles taggen. Dies geht von einfachen Wochenplänen über die Angabe von anderen Öffnungszeiten für den ersten Montag im Montag bis hin zum taggen von Feiertagen und Schulferien oder die Angabe der Öffnungszeiten in Abhängigkeit zum lokalen Sonnenauf- oder Untergang. So kompliziert die Öffnungszeiten auch sein mögen, es gibt ziemlich sicher ein Tagging Schema dafür :)

Wie mappt man das?

Zu beginn ein kleines Beispiel, wie es auch auf der [Wiki Seite](https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours#Beispiele) zu finden ist:

[Mo-Sa 10:00-20:00; Tu off](http://openingh.openstreetmap.de/evaluation_tool/?EXP=Mo-Sa%2010%3A00-20%3A00%3B%20Tu%20off&DATE=1429825320000&lat=48.7769&lon=9.1844&mode=0)

Bedeutung: Geöffnet Montag bis Samstag von 10 bis 20 Uhr, außer dienstags.

Wie schon geschrieben wurde in den letzten Jahren ein weitreichendes Schema entwickelt, um Öffnungszeiten einzutragen und, was noch wichtiger ist, diese auch Sinnvoll auswerten zu können. Denn was nützt es, wenn die eingetragenen Öffnungszeiten nicht auswertbar sind? Das lässt sich mit anderen Tags Vergleich. Hier sollte ebenfalls auf ein einheitliches Schema geachtet werden um mit den Daten später etwas anfangen zu können (beispielsweise eine Karte zu generieren). Es würde versucht, das Schema möglichst einfach und lesbar zu halten, zugleich muss ich aber zugeben, dass es eine gewisse Komplexität erreicht hat und auch von erfahrenen Mappern teils falsch verstanden wird. Um also denn oben genanten Ruhetag oder Feiertag richtig einzutragen ist etwas Übung notwendig. Für den konkreten Aufbau des Schemas verweise ich auf die [Wiki Seite](https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours#Beispiele) auf der ich und andere Mapper das Schema beschrieben haben. Für die sehr fortgeschrittenen Mapper gibt es auch noch eine [formale Spezifikation](https://wiki.openstreetmap.org/w/index.php?title=Key:opening_hours/specification) in der [Netzwolf](http://www.netzwolf.info/) und [ich] die „Sprache“ für die Öffnungszeiten spezifiziert haben.

Kurzum, worauf ist zu achten?

* Bitte nur Öffnungszeiten hochladen, die [maschienen lesbar][Auswertewerkzeug] sind.
* Ferien werden nicht automatisch an die Öffnungszeiten gehängt. Diese müssen also explizit rein geschrieben werden. Siehe im [Wiki](https://wiki.openstreetmap.org/wiki/DE:Key:opening_hours#Elemente).

Werkzeuge:

Um denn Umgang mit den Öffnungszeiten zu vereinfachen, wurden eine reihe von Werkzeugen geschaffen:

* Das erste und wichtigste Werkzeug dürfte das [Auswertewerkzeug] darstellen, mit dem sich Öffnungszeiten schreiben und testen lassen. Es wird jedem ans Herz gelegt, mit diesem Werkzeug vertraut zu werden bevor es ans eintragen oder korrigieren von Öffnungszeiten geht. Schaut euch dazu die [Beispiele][Auswertewerkzeug] auf der Seite an. An dieser Stelle sei noch erwähnt, dass dieses Werkzeug auch eine sehr umfangreiche Eingabe Toleranz besitzt. Sollte ein Öffnungszeiten Wert nicht genau dem Schema entsprechen erscheint ein Hinweis und es wird teils auch angeboten, die Öffnungszeiten zu reparieren.


Ziel

Wie 
Da wir jetzt Öffnungszeiten 



[ich]: https://wiki.openstreetmap.org/wiki/User:Ypid
[Auswertewerkzeug]: http://openingh.openstreetmap.de/evaluation_tool/

Die Entstehung der Werkzeuge habe ich [im Forum](http://forum.openstreetmap.org/viewtopic.php?pid=369060#p369060) mal genauer beleuchtet.

* [url=http://overpass-turbo.eu/s/8B7]Nur Öffnungszeiten, ohne PH oder SH[/url]
* [url=http://overpass-turbo.eu/s/8B8]Nur Öffnungszeiten, mit PH oder SH[/url]


Auflösung

Die im Bild dargestellten Öffnungszeiten sind relativ einfach gehalten. Sie lassen sich wie folgt eintragen.

Dabei handelt es sich um einen gut etablierten Tag mit genau definierter Syntax (einmal für [Nerds](https://wiki.openstreetmap.org/w/index.php?title=Key:opening_hours/specification) und für solche, [die es werden wollen](https://wiki.openstreetmap.org/wiki/Key:opening_hours) ;) ). Desweiteren gibt es eine gute Auswahl an Werkzeugen um mit diesem komplexen Tag umgehen zu können und eine [statistische Auswertung gibt es auch schon](http://openingh.openstreetmap.de/stats/) gibt es auch schon (der ich in den letzten Tagen noch den [letzen Schliff verliehen habe :)](https://github.com/ypid/opening_hours-statistics/commits/master)). Wenn du möchtest, kannst du natürlich mal nach der aktuellen Stimmung umhören aber ein Problem sehe ich jetzt nicht. Ich freue mich schon richtig auf die Wochenaufgabe :)

FIXME:
* "man" durch neutrale Form ersetzen?
