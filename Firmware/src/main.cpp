#include <Arduino.h>
#include <Adafruit_LSM303.h>
#include <Wire.h>
#include <SPI.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BME280.h>
#include "Windsensor.h"
#include "Regensensor.h"

#define WIND 3

#define PIN_WIND 3

#define SEALEVELPRESSURE_HPA (1009.2)

long count = 0;

Adafruit_LSM303_Mag_Unified mag = Adafruit_LSM303_Mag_Unified(12345);
Adafruit_BME280 bme;

#define NUM_SENSORS 2

Windsensor windsensor;
Regensensor regensensor;

ISensor* sensors[] = { &windsensor, &regensensor };

void displaySensorDetails(void)
{
  sensor_t sensor;
  mag.getSensor(&sensor);
  Serial.println("------------------------------------");
  Serial.print  ("Sensor:       "); Serial.println(sensor.name);
  Serial.print  ("Driver Ver:   "); Serial.println(sensor.version);
  Serial.print  ("Unique ID:    "); Serial.println(sensor.sensor_id);
  Serial.print  ("Max Value:    "); Serial.print(sensor.max_value); Serial.println(" uT");
  Serial.print  ("Min Value:    "); Serial.print(sensor.min_value); Serial.println(" uT");
  Serial.print  ("Resolution:   "); Serial.print(sensor.resolution); Serial.println(" uT");
  Serial.println("------------------------------------");
  Serial.println("");

      
  delay(500);
}

unsigned long debounce = 0;

void interrupt() {
  if(millis() - debounce > 100) {
    count++;
    debounce = millis();
  }
}


void setup() {
  Serial.begin(9600);

// Sensoren starten
  for(int i=0;i<NUM_SENSORS;i++) {
    if(!sensors[i]->begin()) {
      while(1) delay(10);
    }
  }

  // pinMode(WIND, INPUT_PULLUP);
  // attachInterrupt(digitalPinToInterrupt(WIND), interrupt, RISING);
//     /* Enable auto-gain */
//   mag.enableAutoRange(true);

//   windsensor.begin(PIN_WIND);


// unsigned status;
    
//     // default settings
//     status = bme.begin(BME280_ADDRESS_ALTERNATE);  
//     // You can also pass in a Wire library object like &Wire2
//     // status = bme.begin(0x76, &Wire2)
//     if (!status) {
//         Serial.println("Could not find a valid BME280 sensor, check wiring, address, sensor ID!");
//         Serial.print("SensorID was: 0x"); Serial.println(bme.sensorID(),16);
//         Serial.print("        ID of 0xFF probably means a bad address, a BMP 180 or BMP 085\n");
//         Serial.print("   ID of 0x56-0x58 represents a BMP 280,\n");
//         Serial.print("        ID of 0x60 represents a BME 280.\n");
//         Serial.print("        ID of 0x61 represents a BME 680.\n");
//         while (1) delay(10);
//     }

//   /* Initialise the sensor */
//   if(!mag.begin())
//   {
//     /* There was a problem detecting the LSM303 ... check your connections */
//     Serial.println("Ooops, no LSM303 detected ... Check your wiring!");
//     while(1);
//   }

//   /* Display some basic information on this sensor */
//   displaySensorDetails();
}



unsigned long lastMillis = millis();

void loop() {
  for(int i=0;i<NUM_SENSORS;i++) {
    sensors[i]->loop();
  }
  // int value = analogRead(A2);
  // float voltage = 5.0/1024.0*value;

  // float watt = 0.13 * voltage;

  // float wattm2 = watt / 0.000954;

  // Serial.print(voltage);
  // Serial.print("V, ");
  // Serial.print(watt);
  // Serial.print("W, ");
  // Serial.print(wattm2);
  // Serial.println("W/m2");
  // delay(1000);

  if(millis() - lastMillis > 1000) {
    noInterrupts();
    Serial.print("Count: ");
    Serial.println(count);
    float rps = count / 16.0;
    count = 0;
    interrupts();
    Serial.print(rps * 2.4);
    Serial.println(" km/h");
    lastMillis = millis();
  }
/*
 if(millis() - lastMillis > 1000) {
   noInterrupts();
   float mm = count / 4.0 * 0.2794;
   interrupts();
   Serial.print(mm);
   Serial.println("l");
   lastMillis = millis();
 }
 */
/*
  if(millis() - lastMillis > 1000) {
    Serial.println(analogRead(1));
   lastMillis = millis();
 }*/
   /* Get a new sensor event */
/*   sensors_event_t event;
  mag.getEvent(&event); */

  /* Display the results (magnetic vector values are in micro-Tesla (uT)) */
/*   Serial.print("X: "); Serial.print(event.magnetic.x); Serial.print("  ");
  Serial.print("Y: "); Serial.print(event.magnetic.y); Serial.print("  ");
  Serial.print("Z: "); Serial.print(event.magnetic.z); Serial.print("  ");Serial.println("uT"); */

  /* Note: You can also get the raw (non unified values) for */
  /* the last data sample as follows. The .getEvent call populates */
  /* the raw values used below. */
  // Serial.print("X Raw: "); Serial.print(mag.raw.x); Serial.print("  ");
  // Serial.print("Y Raw: "); Serial.print(mag.raw.y); Serial.print("  ");
  // Serial.print("Z Raw: "); Serial.print(mag.raw.z); Serial.println("");

  /* Delay before the next sample */


/*   Serial.print("Temperature = ");
    Serial.print(bme.readTemperature());
    Serial.println(" *C");

    Serial.print("Pressure = ");

    Serial.print(bme.readPressure() / 100.0F);
    Serial.println(" hPa");

    Serial.print("Approx. Altitude = ");
    Serial.print(bme.readAltitude(SEALEVELPRESSURE_HPA));
    Serial.println(" m");

    Serial.print("Humidity = ");
    Serial.print(bme.readHumidity());
    Serial.println(" %");

    Serial.println();

  delay(5000); */
}