/**
 * @file Wireless.cpp
 * @author Kamal Gamir-Shahin
 * @brief Simple class for holding the wireless functionality functions
 * @version 0.1
 * @date 2020-05-09
 */
#include "Wireless.h"

const char *ntpServer = "pool.ntp.org";
const long gmtOffset_sec = 0; // 3600 = 1 hour
const int daylightOffset_sec = 3600;

BluetoothSerial SerialBT;

Wireless::Wireless()
{
    // nothing to do in constructor
}

Wireless::~Wireless()
{
    // disconnect maybe
}

/**
 * @brief Simple function to connect to WiFi
 * 
 * @param ssid @details The WiFi SSID that you want to connect to
 * @param password @details Its password
 * @details Assumes Serial port has already been initialised for printing
 */

void Wireless::wifi_connect(const char *ssid, const char *password)
{
    Serial.printf("Connecting to %s ", ssid); // Print to serial terminal
    WiFi.begin(ssid, password);               // Connect
    while (WiFi.status() != WL_CONNECTED)     // Wait until connected
    {
        delay(500);
        Serial.print(".");
    }
    Serial.println();
    Serial.printf("WiFi (%s): ✓ \n", ssid); // Print connected
}

/**
 * @brief Returns a time struct of the time from the NTP
 * @details Time format in DAY_OF_THE_WEEK, MONTH DAY YEAR HOUR:MINUTE:SECOND
 * @return struct tm The time struct
 */
struct tm Wireless::get_ntp_time()
{
    struct tm timeinfo;                                       // Initialise time struct
    configTime(gmtOffset_sec, daylightOffset_sec, ntpServer); // Configure the time
    getLocalTime(&timeinfo);                                  // Populate the time struct (get the time)
    return timeinfo;                                          // Return populated struct
}

/**
 * @brief Prints the current time to the terminal
 * @details Time format in DAY_OF_THE_WEEK, MONTH DAY YEAR HOUR:MINUTE:SECOND
 */
void Wireless::print_ntp_time()
{
    struct tm timeinfo = get_ntp_time(); // Get the time
    if (!getLocalTime(&timeinfo))        // If the time hasn't successfully been populated
    {
        Serial.println("Failed to obtain time"); // Print to terminal
        return;
    }
    Serial.println(&timeinfo, "%A, %B %d %Y %H:%M:%S"); // Print time to terminal
}

/**
 * @brief @details Gets the time from the NTP server via the get_ntp_time() function
 * 
 * @return struct tm @details Completed time struct
 */
struct tm Wireless::getprint_ntp_time()
{
    Serial.print("Getting Time ");
    struct tm current_time = get_ntp_time();
    while (!getLocalTime(&current_time))
    {
        Serial.print("."); // Print to terminal
        current_time = get_ntp_time();
        delay(500);
    }
    Serial.println();
    Serial.println(&current_time, "%A, %B %d %Y %H:%M:%S");
    return current_time;
}

void Wireless::bluetooth_connect()
{
    SerialBT.begin("ESP32test"); //Bluetooth device name
    SerialBT.println("The device started, now you can pair it with bluetooth!");
}

/**
 * @brief Print some text (in a buffer) to the serial port via bluetooth
 * 
 * @param bt_buffer A pointer to the struct containing the buffer
 * @details Housed in struct as it leaves room for expansion with different buffers
 */
void Wireless::bluetooth_print_buffer(char buffer[50]){
   SerialBT.println(buffer); // Print the accelerometer buffer to the terminal
}

int Wireless::bluetooth_read(){
   return SerialBT.read();
}