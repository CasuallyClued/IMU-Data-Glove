/**
 * @file SDCard.cpp
 * @author Kamal Gamir-Shahin
 * @brief Class for interfacing with SD card
 * @details Utilises functions from SD.h and SPI.h
 * @version 0.1
 * @date 2020-05-09
 * 
 * @copyright Open Source
 * 
 */

#ifndef SDCARD_H
#define SDCARD_H

#include <Arduino.h>
#include <SPI.h>
#include <SD.h>

/**
 * @brief A struct to hold what devices are connected
 * 
 */
struct Connected_Devices
{
    bool acc1 = false;
    bool acc2 = false;
    bool sd = false;
};
/**
 * @brief A struct to hold the filenames to create and be written to
 * 
 */
struct Filenames
{
    char acc1[41] = {'\0'};
    char acc2[41] = {'\0'};
    char log[41] = {'\0'};
};

// A struct to hold the string buffers to be written to the SD card
struct SD_Buffers
{
    char acc1[41] = {'\0'};
    char acc2[41] = {'\0'};
    char log[41] = {'\0'};
    char gui[41] = {'\0'};
};
/**
 * @brief A class for interfacing with the SD Card, utilises some
 * from the standard SD Library and the SPI Library
 * 
 */
class SDCard
{
public:
    SDCard();
    ~SDCard();

    /**
     * @brief Instance of the Filename struct
     * 
     */
    Filenames filenames;

    void init(int cs_pin, Connected_Devices *connected_devices, struct tm *current_time);
    struct Filenames get_filenames();
    void save_to_csv(SD_Buffers sd_buffers, struct Filenames *filenames, Connected_Devices connected_devices);
    void amend_log(bool run_flag, struct Filenames *filenames, struct tm *current_time, Connected_Devices connected_devices);

private:
    /**
     * @brief Instance of a File
     * 
     */
    File datalog;
    void set_filenames(struct tm *current_time, struct Filenames *filenames, Connected_Devices *connected_devices);
    void create_log(struct Filenames *filenames, Connected_Devices connected_devices);
};

#endif