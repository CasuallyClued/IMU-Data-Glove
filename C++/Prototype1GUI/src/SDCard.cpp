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

#include "SDCard.h"
/**
 * @brief Construct a new SDCard::SDCard object
 * 
 */
SDCard::SDCard()
{
    // Nothing to do in the constructor
}

/**
 * @brief Destroy the SDCard::SDCard object
 * 
 */
SDCard::~SDCard()
{
    // Nothing to do in the destructor
}

/**
 * @brief Initialise the SD Card interface
 * 
 * @param cs_pin The SPI chip select pin
 * @param connected_devices A struct pointing to a boolean vector of which devices are connected
 * @param current_time A struct of the current time
 */
void SDCard::init(int cs_pin, Connected_Devices *connected_devices, struct tm *current_time)
{
    if (!SD.begin(cs_pin)) // If the SD card is not found at the relevant CS pin
    {
        Serial.println("SD Card: ✗"); // Print to terminal
        Serial.println("No measurements will be saved!");
        //while (1);  // Enter infinite loop (Yield) if SD card not found, optional.
        connected_devices->sd = false; // Set connected device element in struct to false
    }
    else
    {
        connected_devices->sd = true;                               // ...otherwise set to true (case found)
        set_filenames(current_time, &filenames, connected_devices); // Set the filenames and folders in struct accordingly
        Serial.println("SD Card: ✓");                               // Print to terminal

        if (connected_devices->acc1 == true) // If accelerometer 1 is connected
        {
            datalog = SD.open(filenames.acc1, FILE_WRITE); // Open a file in the correct path
            datalog.close();                               // Close the file
        }

        if (connected_devices->acc2 == true) // If accelerometer 2 is connected
        {
            datalog = SD.open(filenames.acc2, FILE_WRITE); // Open a file in the correct path
            datalog.close();                               // Close the file
        }
    }
    create_log(&filenames, *connected_devices); // Create a log after the initialisation
}

/**
 * @brief Get the filenames object @details for main.cpp
 * 
 * @return struct Filenames 
 */
struct Filenames SDCard::get_filenames()
{
    return filenames; // Return the filename struct
}

/**
 * @brief Writes a buffer of acceleration data to the SD card
 * 
 * @param sd_buffers Struct holding the csv string buffer
 * @param filenames Struct holding the filenames/filepaths where the files are to be written
 * @param connected_devices A struct pointing to a boolean vector of which devices are connected
 */
void SDCard::save_to_csv(SD_Buffers sd_buffers, struct Filenames *filenames, Connected_Devices connected_devices)
{
    if (connected_devices.sd == true) // if SD card is connected
    {
        if (connected_devices.acc1 == true) // If Accelerometer 1 is connected (There is stuff to write)
        {
            datalog = SD.open(filenames->acc1, FILE_APPEND); // Open the file for appending (writing to)
            if (datalog)                                     // If file opens without issue
            {
                datalog.println(sd_buffers.acc1); // Write to file
                datalog.close();                  // Close the file
            }
        }

        if (connected_devices.acc2 == true) // If Accelerometer 2 is connected (There is stuff to write)
        {
            datalog = SD.open(filenames->acc2, FILE_APPEND); // Open the file for appending (writing to)
            if (datalog)                                     // If file opens without issue
            {
                datalog.println(sd_buffers.acc2); // Write to file
                datalog.close();                  // Close the file
            }
        }
    }
}

/**
 * @brief Creates the filepaths/filenames @details This function takes in the time struct and
 * creates a folder on the SD card of the format YYYY-MM-DD HH-MM-SS.
 * Filenames are then creatd and stored in the filename struct (to be written in later on)
 * 
 * @param current_time @details The current time struct
 * @param filenames @details A pointer to the filename (filepath) struct to be set
 */
void SDCard::set_filenames(struct tm *current_time, struct Filenames *filenames, Connected_Devices *connected_devices)
{
    char folder[30] = "";                                     // Empty struct to hold the folder name
    strftime(folder, 30, "/%Y-%m-%d %H-%M-%S", current_time); // Get folder name
    if (connected_devices->sd == true)
        SD.mkdir(folder); // Create directory (folder)

    sprintf(filenames->acc1, "%s/Accelerometer 1.txt", folder); // Set filepath for Accelerometer 1 readings
    sprintf(filenames->acc2, "%s/Accelerometer 2.txt", folder); // Set filepath for Accelerometer 2 readings
    sprintf(filenames->log, "%s/Log.txt", folder);              // Set filepath for log
}

/**
 * @brief Creates a short log (Can be devoloped to include more information)
 * 
 * @param filenames @details A pointer to the filename (filepath) struct to be read from @details to know where to write the file
 * @param connected_devices @details A struct pointing to a boolean vector of which devices are connected
 */
void SDCard::create_log(struct Filenames *filenames, Connected_Devices connected_devices)
{
    if (connected_devices.sd == true)
    {
        datalog = SD.open(filenames->log, FILE_APPEND); // Open a file to be written to

        if (datalog) // If the file opens without issue
        {
            if (connected_devices.acc1) // If Acclerometer 1 is connected
            {
                datalog.println("Acclerometer 1: ✓"); // Write to file
            }
            if (connected_devices.acc2) // If Acclerometer 2 is connected
            {
                datalog.println("Acclerometer 2: ✓"); // Write to file
            }
        }
        datalog.close(); // Close the file
    }
}

/**
 * @brief Log activity during the main loop @details If the read is stopped it is recorded by this function
 * 
 * @param run_flag @details Boolean flag to control sensor read or wait
 * @param filenames A pointer to the filename (filepath) struct to be read from @details to know where to write the file
 * @param current_time @details The current time struct
 * @param connected_devices @details A struct pointing to a boolean vector of which devices are connected
 */
void SDCard::amend_log(bool run_flag, struct Filenames *filenames, struct tm *current_time, Connected_Devices connected_devices)
{
    char time[30] = "";
    strftime(time, 30, "%Y-%m-%d %H:%M:%S", current_time);

    if (connected_devices.sd == true)
        datalog = SD.open(filenames->log, FILE_APPEND); // Open a file to be written to

    if (run_flag == true) // Read started
    {
        Serial.print("Read started at: ");
        Serial.println(time);

        if (connected_devices.sd == true)
        {
            datalog.print("Read started at: ");
            datalog.println(time);
        }
    }

    else
    {
        Serial.print("Read stopped at: ");
        Serial.println(time);
        Serial.println("Waiting for input (Touch Pin 13 or type anything the terminal)");

        if (connected_devices.sd == true)
        {
            datalog.print("Read stopped at: ");
            datalog.println(time);
        }
    }
}
