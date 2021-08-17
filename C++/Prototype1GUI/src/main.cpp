/*!
 * @file main.cpp
 * @author Kamal Gamir-Shahin (ll15kygs@leeds.ac.uk)
 * @brief This code has been developed for the first breadboard prototype of the data glove
 * @version 1.1
 * @date 2020-05-14
 * @mainpage Prototype 1 GUI
 *
 * @section intro_sec Introduction
 *
 * This program runs on the ESP32 MCU and enables reading of two LIS3DH acceleromters and compatibility with the bespoke GUI
 *
 * @section author Kamal Gamir-Shahin
 *
 * Kamal Gamir-Shahin
 *
 */

#include <Arduino.h>
#include "Adafruit_LIS3DH.h" // LIS3DH Arduino Library (With additional user added functions)
#include "Wireless.h"        // Library for Wi-Fi and Bluetooth related functions
#include "SDCard.h"          // Custom SD Card Library

// Pre-processor definitions
#define BAUD_RATE 2000000
#define LIS3DH_CS1 4       // CS Chip Select Pin for accelerometer 1
#define LIS3DH_CS2 25      // CS Chip Select Pin for accelerometer 2

// Instantiate Classes
Wireless wireless;
SDCard sd;
#if 1 // Accelerometer SPI Constructors
Adafruit_LIS3DH acc1 = Adafruit_LIS3DH(LIS3DH_CS1);
Adafruit_LIS3DH acc2 = Adafruit_LIS3DH(LIS3DH_CS2);
#endif

#if 0 // Used for I2C implementation (Suitable for 1 accelerometer usage only)
Adafruit_LIS3DH acc = Adafruit_LIS3DH(); // Use for I2C Implementation
#endif

Connected_Devices connected_devices; // SD Class

char buffer[50] = {'\0'};

G_Values g_values1; // Adafruit_LIS3DH Class
G_Values g_values2; // Adafruit_LIS3DH Class

// Function declarations
void serial_init(int baud_rate);
void LIS3DH_init(Connected_Devices *connected_devices);
void set_csv_buffer(G_Values g_values1, G_Values g_values2, Connected_Devices connected_devices);

void setup()
{
  serial_init(BAUD_RATE); // Initialise serial port
  wireless.bluetooth_connect(); // Initialise bluetooth port
  LIS3DH_init(&connected_devices); // Initialise Accelerometers
}

void loop()
{
  if (Serial.read() != -1)
  {
    acc1.get_g_values(&g_values1); // Get Accelerometer 1 value
    acc2.get_g_values(&g_values2); // Get Accelerometer 2 value
    set_csv_buffer(g_values1, g_values2, connected_devices);
    Serial.println(buffer);
  }
  if (wireless.bluetooth_read() != -1)
  {
    acc1.get_g_values(&g_values1); // Get Accelerometer 1 value
    acc2.get_g_values(&g_values2); // Get Accelerometer 2 value
    set_csv_buffer(g_values1, g_values2, connected_devices);
    wireless.bluetooth_print_buffer(buffer);
  }
}

/**
 * 
 * @brief Initialise the serial port
 * 
 * @param baud_rate // Serial monitor baud rate (set monitor_speed in platform.io if changed from 9600)
 */
void serial_init(int baud_rate)
{
  Serial.begin(baud_rate); // Initialise serial port
  while (!Serial)
    delay(10); // Give some time for the serial port to start
}

/**
 * @brief Initialise the LIS3DH Accelerometers
 * 
 * @param connected_devices A struct pointing to a boolean vector of which devices are connected
 */
void LIS3DH_init(Connected_Devices *connected_devices)
{
  // Check if accelerometers connected //

  if (!acc1.begin()) // If accelerometer 1 is not found
  {
    Serial.println("Accelerometer 1: ✗"); // Print to terminal
    connected_devices->acc1 = false;      // Set accelerometer 1 boolean to false
  }
  else // Acceleromter 1 is found
  {
    connected_devices->acc1 = true;           // Set accelerometer 1 boolean to true
    Serial.println("Accelerometer 1: ✓");     // Print to terminal
    acc1.setRange(LIS3DH_RANGE_2_G);          // Set accelerometer range (2, 4, 8 or 16 possible)
    Serial.print("Accelerometer 1 Range = "); // Print to terminal
    Serial.print(2 << acc1.getRange());       // Print range
    Serial.println("G");                      // Print to terminal
  }

  if (!acc2.begin()) // If accelerometer 2 is not found
  {
    Serial.println("Accelerometer 2: ✗"); // Print to terminal
    connected_devices->acc2 = false;      // Set accelerometer 2 boolean to false
  }
  else // Accelerometer 2 is found
  {
    connected_devices->acc2 = true;           // Set accelerometer range (2, 4, 8 or 16 possible)
    Serial.println("Accelerometer 2: ✓");     // Print to terminal
    acc2.setRange(LIS3DH_RANGE_2_G);          // 2, 4, 8 or 16 G!
    Serial.print("Accelerometer 2 Range = "); // Print to terminal
    Serial.print(2 << acc2.getRange());       // Print range
    Serial.println("G");                      // Print to terminal
  }
}

/**
 * @brief Set the csv buffer object
 * 
 * @param csv_buffers csv string buffer to be set
 * @param g_values1
 * @param g_values2 
 * @param connected_devices 
 */
void set_csv_buffer(G_Values g_values1, G_Values g_values2, Connected_Devices connected_devices)
{
  if (connected_devices.acc1 == true && connected_devices.acc2 == false)
  {
    sprintf(buffer, "%f, %f, %f", g_values1.x, g_values1.y, g_values1.z); // Set buffer object string
  }

  if (connected_devices.acc2 == true && connected_devices.acc1 == false)
  {
    sprintf(buffer, "%f, %f, %f", g_values2.x, g_values2.y, g_values2.z); // Set buffer object string
  }
  if (connected_devices.acc2 == true && connected_devices.acc1 == true)
  {
    sprintf(buffer, "%f, %f, %f, %f, %f, %f", g_values1.x, g_values1.y, g_values1.z, g_values2.x, g_values2.y, g_values2.z); // Set csv_buffer object string
  }
}
