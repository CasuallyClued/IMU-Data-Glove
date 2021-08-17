/**
 * @file Wireless.h
 * @author Kamal Gamir-Shahin
 * @brief Simple class for holding the wireless functionality functions
 * @version 0.1
 * @date 2020-05-09
 */

#ifndef WIRELESS_H
#define WIRELESS_H

#include <WiFi.h>
#include <time.h>
#include <BluetoothSerial.h>

#if !defined(CONFIG_BT_ENABLED) || !defined(CONFIG_BLUEDROID_ENABLED)
#error Bluetooth is not enabled! Please run `make menuconfig` to and enable it
#endif

struct Buffer
{
    char accelerometer[80] = {'\0'};
};

class Wireless
{
public:
    Wireless();
    ~Wireless();

    void wifi_connect(const char *ssid, const char *password);
    struct tm get_ntp_time();
    void print_ntp_time();
    struct tm getprint_ntp_time();

    void bluetooth_connect();
    void bluetooth_print_buffer(char buffer[50]);
    int bluetooth_read();

private:
};

#endif