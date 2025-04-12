# IMU Infopoint

Here's a comparison of I2C, UART, and SPI — the three most commonly used serial communication protocols in embedded systems:
🔌 Wiring Comparison
Protocol	Wires Used	Description
I2C	2 wires	SDA (Data), SCL (Clock) – shared bus for all devices
UART	2 wires	TX (Transmit), RX (Receive) – point-to-point only
SPI	4+ wiresMISO, MOSI, SCLK, SS/CS – one slave needs 4, each additional slave adds 1 SS line
✅ Advantages
Protocol	Advantages
I2C	Simple wiring for many devices (shared bus), supports multiple masters/slaves, supports addressing
UART	Widely supported, simple, asynchronous (no clock line), long-distance possible
SPI	Very fast data rates, full-duplex, low protocol overhead, flexible data size
❌ Disadvantages
Protocol	Disadvantages
I2C	Slower compared to SPI, only half-duplex, more complex protocol, limited cable length
UART	Point-to-point only (no multi-device), not synchronous (higher chance of data error), limited speed
SPI	Requires more pins (scales poorly), no standard for device addressing, no acknowledgment mechanism
📦 Use Cases
Protocol	Use Cases
I2C	Sensors (temperature, accelerometers), RTCs, EEPROMs, configuration chips, low-speed peripherals
UART	GPS modules, Bluetooth/WiFi modules (e.g., ESP32), PC-to-microcontroller communication
SPI	High-speed ADCs/DACs, SD cards, displays (TFT, OLED), flash memory, shift registers
⚖️ Quick Summary Table
Feature	I2C	UART	SPI

of wires	2	2	4 + (1 per slave)
Speed (typical)	~100kHz–3.4MHz	~9600bps–1Mbps+	~1–50+ MHz
Master/Slave support	Yes (multi-master)	No (point-to-point)	Yes (single master)
Full/Half Duplex	Half	Full	Full
Complexity	Medium	Low	Medium
Addressing	Yes	No	No

## TL;DR Recommendations

    Use I2C when you have many low-speed peripherals and want to minimize wiring.

    Use UART for long-distance or simple device-to-device communication (e.g., GPS).

    Use SPI when speed is critical and you’re connecting a few high-speed peripherals.