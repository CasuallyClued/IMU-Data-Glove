/**
 * @file main.cpp
 * @author Kamal Gamir-Shahin
 * @brief Program for breadboard protoype 1
 * @brief Implemenation of glove, suitable for up to 2 LIS3DH accelerometers
 * @brief with a single SD card logging data
 * @version 0.2
 * @date 2020-03-07
 * 
 * 
 */

#include <Arduino.h>
#include <SPI.h>
#include <SD.h>
#include "Adafruit_LIS3DH.h" // LIS3DH Arduino Library
#include "WiFi.h"
#include "time.h"

// Pre-processor definitions
#define BAUD_RATE 115200
#define LIS3DH_CS1 4  // CS Chip Select Pin for accelerometer 1
#define LIS3DH_CS2 25 // CS Chip Select Pin for accelerometer 2
#define SD_CS 5       // CS Chip Select Pin for SD Card reader
#define TOUCH_THRESHOLD 20

const char *ssid = "Kingston";
const char *password = "Gp4rhqff5bct";

#if 1 // Accelerometer SPI Constructors
Adafruit_LIS3DH acc1 = Adafruit_LIS3DH(LIS3DH_CS1);
Adafruit_LIS3DH acc2 = Adafruit_LIS3DH(LIS3DH_CS2);
#endif

#if 0 // Used for I2C implementation (Suitable for 1 accelerometer usage only)
Adafruit_LIS3DH acc = Adafruit_LIS3DH(); // Use for I2C Implementation
#endif

#if 0 // Used for software SPI (When using non-default PINs for SPI)
#define LIS3DH_CLK 18
#define LIS3DH_MISO 19
#define LIS3DH_MOSI 23
Adafruit_LIS3DH acc1 = Adafruit_LIS3DH(LIS3DH_CS, LIS3DH_MOSI, LIS3DH_MISO, LIS3DH_CLK);
#endif

// SD Card Files
File datalog; // Instantiate file object for SD card

/**
 * @brief Struct to hold the boolean of the devices connected to the MCU
 */
struct Connected_Devices
{
  bool acc1;
  bool acc2;
  bool sd;
};

/**
 * @brief Struct to hold accelerometer values in g
 * 
 */
struct G_Values
{
  float xg1;
  float yg1;
  float zg1;
  float xg2;
  float yg2;
  float zg2;
};

/**
 * @brief Struct to hold raw accelerometer values
 * 
 */
struct Raw_Values
{
  float x1;
  float y1;
  float z1;
  float x2;
  float y2;
  float z2;
};

// Global struct declarations
Connected_Devices connected_devices;
G_Values g_values;
Raw_Values raw_values;

//Get acceleration readings
sensors_event_t event1;
sensors_event_t event2;

// FUNCTIONS //
// Peripheral initialisation
/**
 * @brief Initialises the serial port
 * 
 * @param monitor_speed Input value of serial monitor speed
 */
void serial_init(int monitor_speed);

/**
 * @brief Initialise LIS3DH accelerometers
 * 
 * @param connected_devices Pointer to struct holding boolean for connected devices
 */
void LIS3DH_init(Connected_Devices *connected_devices);
/**
 * @brief Initialise SD card
 * 
 * @param connected_devices Pointer to struct holding boolean for connected devices
 */
void SD_init(Connected_Devices *connected_devices);
/**
 * @brief Read raw data from accelerometers
 * 
 * @param raw_values Pointer to struct holding values for setting
 */
void read_raw_data(Raw_Values *raw_values);
/**
 * @brief Read normalised acceleration values from accelerometers
 * 
 * @param g_values Pointer to struct holding values for setting
 * @param connected_devices Pointer to struct holding boolean for connected devices
 * to check which devices are connected and which to read from
 */
void read_g_data(G_Values *g_values, Connected_Devices connected_devices);
/**
 * @brief Prints values over serial port
 * 
 * @param g_values Struct holding accelerometer values to be printed
 * @param connected_devices Pointer to struct holding boolean for connected devices
 * to check which devices are connected and which values to print
 */
void serial_print_g_data(G_Values g_values, Connected_Devices connected_devices);
/**
 * @brief Print normalised acceleration values over the serial terminal
 * The Arduino IDE is able to plot printed values graphically
 * This function ensures that the parameters are printed in a format to 
 * ensure that the graph is correctly plotted.
 * @param connected_devices Pointer to struct holding boolean for connected devices
 * Checks which values to print
 * @param g_values Values of of normalised acceleration data to write to csv file
 */
void SD_write_csv(Connected_Devices connected_devices, G_Values g_values);
/**
 * @brief Test functionality of the SD card by writing two dummy files to it
 * 
 */
void SD_test();

void setup()
{
  serial_init(BAUD_RATE);          // Initialise serial port
  LIS3DH_init(&connected_devices); // Initialise accelerometers
  SD_init(&connected_devices);     // Initialise SD card
  delay(1000);
  // WIFI_connect(SSID, PASSWORD);
  //SD_test(); // Run SD card test to check functionality (optional)

#if 1                                           // If 1, program waits until the specified touch input is triggered to start \
                                                // If 0, program runs without input
  // Serial.println("Waiting for touch input \n"); // Print to terminal
  // while (touchRead(T4) > TOUCH_THRESHOLD)
  // {
  //   yield(); // Wait until input touched to start
  // }
#endif

  delay(100);
}
unsigned long time_elapsed;

void loop()
{
  // unsigned long time_since = time_elapsed;
  // time_elapsed = micros();
  // Serial.print("Rate = ");
  // float rate = 1000000 / (time_elapsed - time_since);
  // Serial.println(rate);

  read_g_data(&g_values, connected_devices);        // Read normalised accelerometer data
  serial_print_g_data(g_values, connected_devices); // Print normalised accelerometer data to terminal
  //SD_write_csv(connected_devices, g_values);        // Write values to csv file on SD card
}

void SD_test()
{
  if (connected_devices.sd == true) // If the SD card is connected
  {
    // open the file. note that only one file can be open at a time,
    // so you have to close this one before opening another.
    datalog = SD.open("/test1.txt", FILE_WRITE);

    // if the file opened okay, write to it:
    if (datalog)
    {
      Serial.print("Writing to test1.txt...");
      datalog.println("testing 1, 2, 3.");
      // close the file:
      datalog.close();
      Serial.println("done.");
    }
    else
    {
      // if the file didn't open, print an error:
      Serial.println("error opening test1.txt");
    }

    // re-open the file for reading:
    datalog = SD.open("/test1.txt");
    if (datalog)
    {
      Serial.println("/test1.txt:");

      // read from the file until there's nothing else in it:
      while (datalog.available())
      {
        Serial.write(datalog.read());
      }
      // close the file:
      datalog.close();
    }
    else
    {
      // if the file didn't open, print an error:
      Serial.println("error opening test1.txt");
    }

    datalog = SD.open("/test2.txt", FILE_WRITE);
    // if the file opened okay, write to it:
    if (datalog)
    {
      Serial.print("Writing to test2.txt...");
      datalog.println("testing 4, 5, 6.");
      datalog.println("Something on the new line");
      // close the file:
      datalog.close();
      Serial.println("done.");
    }
    else
    {
      // if the file didn't open, print an error:
      Serial.println("error opening test2.txt");
    }

    // re-open the file for reading:
    datalog = SD.open("/test2.txt");
    if (datalog)
    {
      Serial.println("/test2.txt:");

      // read from the file until there's nothing else in it:
      while (datalog.available())
      {
        Serial.write(datalog.read());
      }
      // close the file:
      datalog.close();
    }
    else
    {
      // if the file didn't open, print an error:
      Serial.println("error opening test2.txt");
    }
  }
}
void serial_init(int monitor_speed)
{
  Serial.begin(monitor_speed); // Initialise serial port
  while (!Serial)
    delay(10); // Give some time for the serial port to start

  int clk = getCpuFrequencyMhz(); // Get CPU clock
  Serial.print("Clock f is: ");
  Serial.println(clk);
}
void LIS3DH_init(Connected_Devices *connected_devices)
{
  // Check if accelerometers connected

  // Accelerometer 1 //
  if (!acc1.begin()) // If accelerometer isn't connected
  {
    Serial.println("Accelerometer 1: ✗");
    connected_devices->acc1 = false;
    //while (1) // If uncommented, the program will not advance if accelerometer is not connected
    //yield();
  }
  else
  {
    connected_devices->acc1 = true;
    Serial.println("Accelerometer 1: ✓");
    acc1.setRange(LIS3DH_RANGE_2_G); // 2, 4, 8 or 16 G!
    Serial.print("Accelerometer 1 Range = ");
    Serial.print(2 << acc1.getRange());
    Serial.println("G");
  }

  // Accelerometer 2 //
  if (!acc2.begin())
  {
    Serial.println("Accelerometer 2: ✗");
    connected_devices->acc2 = false;
    //while (1) // If uncommented, the program won't advance if accelerometer is not connected
    //yield();
  }
  else
  {
    connected_devices->acc2 = true;
    Serial.println("Accelerometer 2: ✓");
    acc2.setRange(LIS3DH_RANGE_2_G); // 2, 4, 8 or 16 G!
    Serial.print("Accelerometer 2 Range = ");
    Serial.print(2 << acc2.getRange());
    Serial.println("G");
  }
}

void read_raw_data(Raw_Values *raw_values)
{
  // Get X Y and Z data at once
  if (connected_devices.acc1 == true)
  {
    acc1.read();
    raw_values->x1 = acc1.x;
    raw_values->y1 = acc1.y;
    raw_values->z1 = acc1.z;
  }

  if (connected_devices.acc2 == true)
  {
    acc2.read();
    raw_values->x2 = acc2.x;
    raw_values->y2 = acc2.y;
    raw_values->z2 = acc2.z;
  }
}

void read_g_data(G_Values *g_values, Connected_Devices connected_devices)
{
  // ACCELERATION VALUES (Normalised in g)
  if (connected_devices.acc1 == true)
  {
    acc1.getEvent(&event1);
    g_values->xg1 = event1.acceleration.x;
    g_values->yg1 = event1.acceleration.y;
    g_values->zg1 = event1.acceleration.z;
  }
  if (connected_devices.acc2 == true)
  {
    acc2.getEvent(&event2);

    g_values->xg2 = event2.acceleration.x;
    g_values->yg2 = event2.acceleration.y;
    g_values->zg2 = event2.acceleration.z;
  }
}

void serial_print_g_data(G_Values g_values, Connected_Devices connected_devices)
{
  // This function prints data to the terminal in a format so that
  // the Serial Plotter of the Arduino IDE displays the acceleration
  // data correctly
  if (connected_devices.acc1 == true)
  {
    Serial.print("Xg1: ");
    Serial.print(g_values.xg1);
    Serial.print(" \tYg1: ");
    Serial.print(g_values.yg1);
    Serial.print(" \tZg1: ");
    Serial.print(g_values.zg1);
    if (connected_devices.acc2 == false)
    {
      Serial.println(); // Start new line
    }
  }

  if (connected_devices.acc2 == true)
  {
    if (connected_devices.acc1 == true) // if both accelerometers, print on same line
    {
      Serial.print(" \tXg2: ");
    }
    else
    {
      Serial.print("Xg2: ");
    }

    Serial.print(g_values.xg2);
    Serial.print(" \tYg2: ");
    Serial.print(g_values.yg2);
    Serial.print(" \tZg2: ");
    Serial.print(g_values.zg2);
    Serial.println();
  }

  if (connected_devices.acc1 == false && connected_devices.acc2 == false)
  {
    Serial.println("NO DATA TO PRINT");
    while (1)
      yield();
  }
}

void SD_init(Connected_Devices *connected_devices)
{
  //Serial.print("Initialising SD card...");
  if (!SD.begin(SD_CS)) // If the SD card is not found at the relevant CS pin
  {
    Serial.println("SD Card: ✗");
    Serial.println("No measurements will be saved!");
    //while (1);  // Enter infinite loop (Yield) if SD card not found, optional.
    connected_devices->sd = false; // Set connected device element in struct to false
  }
  else
  {
    connected_devices->sd = true; // ...otherwise set to true (case found)
    Serial.println("SD Card: ✓");
    if (connected_devices->acc1 == true) // If accelerometer 1 is found
    {
      datalog = SD.open("/Accelerometer 1 Log.txt", FILE_WRITE);
      datalog.close();
    }

    if (connected_devices->acc2 == true)
    {
      datalog = SD.open("/Accelerometer 2 Log.txt", FILE_WRITE);
      datalog.close();
    }
  }
}

void SD_write_csv(Connected_Devices connected_devices, G_Values g_values)
{
  if (connected_devices.sd == true) // if SD card is connected
  {
    if (connected_devices.acc1 == true)
    {
      datalog = SD.open("/Accelerometer 1 Log.txt", FILE_APPEND); //, FILE_WRITE);
      if (datalog)                                                // If file opens without issue
      {
        datalog.print(g_values.xg1);
        datalog.print(", ");
        datalog.print(g_values.yg1);
        datalog.print(", ");
        datalog.println(g_values.zg1);
        // close the file:
        datalog.close();
      }
    }

    if (connected_devices.acc2 == true)
    {
      datalog = SD.open("/Accelerometer 2 Log.txt", FILE_APPEND); //, FILE_WRITE);
      if (datalog)                                                // If file opens without issue
      {
        datalog.print(g_values.xg2);
        datalog.print(", ");
        datalog.print(g_values.yg2);
        datalog.print(", ");
        datalog.println(g_values.zg2);
        // close the file:
        datalog.close();
      }
    }
  }
}

void WIFI_connect(char ssid[], char password[])
{
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }
  Serial.println(" CONNECTED");
}