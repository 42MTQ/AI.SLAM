# Electrically Erasable Programmable read-only Memory

## Description

Ein EEPROM (engl. Abk. für electrically erasable programmable read-only memory, wörtlich: elektrisch löschbarer programmierbarer Nur-Lese-Speicher, auch E2PROM) ist ein nichtflüchtiger, elektronischer Speicherbaustein, dessen gespeicherte Information elektrisch gelöscht werden kann. Er ist verwandt mit anderen löschbaren Speichern, wie dem durch UV-Licht löschbaren EPROMs und dem ebenfalls elektrisch löschbaren Flash-Speicher.[1] Er wird verwendet zur Speicherung kleinerer Datenmengen in elektrischen Geräten, bei denen die Information auch ohne anliegende Versorgungsspannung erhalten bleiben muss oder bei denen einzelne Speicherelemente bzw. Datenworte einfach zu ändern sein müssen. Zur Speicherung größerer Datenmengen wie z. B. dem BIOS in PC-Systemen sind meist Flash-Speicher ökonomischer.

## Funktionsweise

Der Ausdruck „EEPROM“ beschreibt lediglich die Eigenschaften des Speichers, dass dieser nicht-flüchtig ist und allein mit elektrischer Energie gelöscht werden kann (im Gegensatz zu dem nur durch UV-Licht löschbaren EPROM). Der Ausdruck „EEPROM“ umfasst deshalb genau genommen die heute üblicherweise als EEPROM bezeichneten wort- oder byteweise löschbaren Speicher, als auch die neueren blockweise löschbaren Flashspeicher. Da bei letzteren die sonst pro Speicherzelle notwendigen Schreib-, Lese- und Löschtransistoren entfallen können, ist mit ihnen eine deutliche höhere Speicherdichte erreichbar.

Ein EEPROM besteht aus einer Matrix aus Feldeffekttransistoren (FETs) mit isoliertem Steueranschluss (Floating Gate), in der jeder dieser FETs ein Bit repräsentiert. Beim Programmiervorgang wird auf das Floating Gate eine Ladung eingebracht, die nur durch den Löschvorgang wieder entfernt werden kann. Im Normalbetrieb bleibt die Ladung auf dem vollständig isolierten Gate erhalten.

Bei (UV-löschbaren) EPROMs wird beim Schreiben die Ladung durch Injektion heißer Ladungsträger (engl. hot-carrier injection, HCI) auf das Gate gebracht und kann nur durch Bestrahlung mit UV-Licht wieder entfernt werden.

Bei EEPROMs wird sowohl beim Schreiben als auch Löschen die Ladung durch Fowler-Nordheim-Tunneln auf das isolierte Gate aufgebracht bzw. von diesem entfernt.

Beim Flash-Speicher hingegen wird die Ladung beim Schreiben durch HCI auf das Gate aufgebracht und beim Löschen durch Fowler-Nordheim-Tunneln wieder entfernt.

Zum Programmieren des EEPROMs wird ein hoher Spannungspuls an das Control Gate gelegt, wobei ein Tunnelstrom von diesem durch das isolierende Dielektrikum auf das Floating Gate fließt. Diese hohe Spannung musste bei EPROMs von außen an den Speicherbaustein angelegt werden, während sie beim EEPROM, und auch bei den Flash-Speichern, baustein-intern erzeugt wird.

Nach dem Schreiben des Speichers, d. h. dem selektiven Aufbringen von Ladung auf die Floating Gates, werden die geschriebenen Daten durch ein Bitmuster geladener/ungeladener Gates repräsentiert. Diese Daten lassen sich nun über die Drain-Source-Anschlüsse der Transistoren beliebig oft auslesen, wobei die normale Betriebsspannung beim Lesen weit unterhalb der Programmierspannung liegt. Die Anzahl der möglichen Schreibvorgänge der einzelnen Speicherzellen ist allerdings begrenzt, die Hersteller garantieren üblicherweise einige 10.000 bis über 1.000.000 Schreibzyklen. Dieses wird zum Teil durch redundante Speicherzellen erreicht.

### Jetson EEPROM Layout

https://docs.nvidia.com/jetson/archives/r35.4.1/DeveloperGuide/text/HR/JetsonEepromLayout.html
