#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Adafruit_BNO08x.h>

// OLED display settings
#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
#define OLED_RESET -1
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

// SPI Pins
#define SCK 14
#define MISO 35   
#define MOSI 13
#define CS 15 
#define INT 34 
#define RST 4 

// Euler angles structure
struct euler_t {
  float yaw;
  float pitch;
  float roll;
} ypr;

Adafruit_BNO08x bno08x(RST);
sh2_SensorValue_t sensorValue;

#ifdef FAST_MODE
  sh2_SensorId_t reportType = SH2_GYRO_INTEGRATED_RV;
  long reportIntervalUs = 2000;
#else
  sh2_SensorId_t reportType = SH2_ARVR_STABILIZED_RV;
  long reportIntervalUs = 5000;
#endif

void setReports(sh2_SensorId_t reportType, long report_interval) {
  Serial.println("Setting desired reports");
  if (!bno08x.enableReport(reportType, report_interval)) {
    Serial.println("Could not enable report");
  }
}

void quaternionToEuler(float qr, float qi, float qj, float qk, euler_t* ypr, bool degrees = false) {
  float sqr = sq(qr);
  float sqi = sq(qi);
  float sqj = sq(qj);
  float sqk = sq(qk);

  ypr->yaw = atan2(2.0 * (qi * qj + qk * qr), (sqi - sqj - sqk + sqr));
  ypr->pitch = asin(-2.0 * (qi * qk - qj * qr) / (sqi + sqj + sqk + sqr));
  ypr->roll = atan2(2.0 * (qj * qk + qi * qr), (-sqi - sqj + sqk + sqr));

  if (degrees) {
    ypr->yaw *= RAD_TO_DEG;
    ypr->pitch *= RAD_TO_DEG;
    ypr->roll *= RAD_TO_DEG;
  }
}

void quaternionToEulerRV(sh2_RotationVectorWAcc_t* rotational_vector, euler_t* ypr, bool degrees = false) {
  quaternionToEuler(rotational_vector->real, rotational_vector->i, rotational_vector->j, rotational_vector->k, ypr, degrees);
}

void quaternionToEulerGI(sh2_GyroIntegratedRV_t* rotational_vector, euler_t* ypr, bool degrees = false) {
  quaternionToEuler(rotational_vector->real, rotational_vector->i, rotational_vector->j, rotational_vector->k, ypr, degrees);
}

void setup() {
  Serial.begin(115200);
  while (!Serial) delay(10);

  Serial.println("Adafruit BNO08x test!");

  // OLED init
  if (!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) {
    Serial.println(F("SSD1306 allocation failed"));
    while (true);
  }
  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(SSD1306_WHITE);
  display.setCursor(0, 0);
  display.println("Initializing IMU...");
  display.display();

  // SPI begin
  SPI.begin(SCK, MISO, MOSI, CS);
  Serial.println("SPI begin loaded");


  // BNO08x init
  if (!bno08x.begin_SPI(CS, INT)) {
    Serial.println("Failed to find BNO08x chip");
    display.clearDisplay();
    display.setCursor(0, 0);
    display.println("IMU not found!");
    display.display();
    while (true);
  }

  Serial.println("BNO08x Found!");
  display.clearDisplay();
  display.setCursor(0, 0);
  display.println("BNO08x Found!");
  display.display();

  setReports(reportType, reportIntervalUs);
  delay(100);
}

void loop() {
  static long last = 0;
  long now = micros();

  if (bno08x.wasReset()) {
    Serial.println("Sensor was reset");
    setReports(reportType, reportIntervalUs);
  }

  if (bno08x.getSensorEvent(&sensorValue)) {
    switch (sensorValue.sensorId) {
      case SH2_ARVR_STABILIZED_RV:
        quaternionToEulerRV(&sensorValue.un.arvrStabilizedRV, &ypr, true);
        break;

      case SH2_GYRO_INTEGRATED_RV:
        quaternionToEulerGI(&sensorValue.un.gyroIntegratedRV, &ypr, true);
        break;
    }

    // Print to Serial
    Serial.printf("Δt: %ld µs | Accuracy: %d | Yaw: %.2f | Pitch: %.2f | Roll: %.2f\n",
                  now - last, sensorValue.status, ypr.yaw, ypr.pitch, ypr.roll);

  // Enhanced Display Output
display.clearDisplay();

// Title Box
display.setTextSize(1);
display.setTextColor(SSD1306_BLACK, SSD1306_WHITE); // Inverted text
display.setCursor(0, 0);
display.print("  BNO08x Orientation  ");
display.setTextColor(SSD1306_WHITE); // Back to normal

// Draw divider line under title
display.drawLine(0, 10, SCREEN_WIDTH, 10, SSD1306_WHITE);

// Yaw
display.setTextSize(1);
display.setCursor(0, 14);
display.print("Yaw:");

display.setTextSize(2);
display.setCursor(40, 10);
display.printf("%.1f", ypr.yaw);

// Pitch
display.setTextSize(1);
display.setCursor(0, 34);
display.print("Pitch:");

display.setTextSize(2);
display.setCursor(50, 30);
display.printf("%.1f", ypr.pitch);

// Roll
display.setTextSize(1);
display.setCursor(0, 54);
display.print("Roll:");

display.setTextSize(2);
display.setCursor(45, 50);
display.printf("%.1f", ypr.roll);

display.display();

  }
}
