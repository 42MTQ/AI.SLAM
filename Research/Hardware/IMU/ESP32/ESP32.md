# Configuration on ESP32

## Configurations

BaudRate: monitor_speed = 115200

Serial.begin(115200);
  delay(1000);
  Serial.println("MOSI: "); Serial.println(MOSI);
  Serial.println("MISO: "); Serial.println(MISO);
  Serial.println("SCK: "); Serial.println(SCK);
  Serial.println("SS : "); Serial.println(SS);

## Results

MOSI
23
MISO
19
SCK
18
SS
5

## Mapping

🔌 ESP32 SPI Pin Mapping (Default):
Signal	Meaning	GPIO
MOSI	Master Out Slave In	23
MISO	Master In Slave Out	19
SCK	Serial Clock	18
SS	Slave Select / Chip Select (CS)	5

Define custom SPI GPIO Mapping

SPI Signal	GPIO	Notes

SCK	14	Free GPIO
MOSI	13	Free GPIO
MISO	12	Free GPIO
SS/CS	15	Can be anything
