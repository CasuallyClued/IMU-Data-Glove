#include <Arduino.h>
#include "MPU9250.h"
#include "Wireless.h"
// int AD0 = 0x68;
// int AD1 = 0x69;

MPU9250 IMU;
Wireless wireless;

IMU_Values acceleration;
IMU_Values angularv;
IMU_Values mag;
bool run_flag = false;
char csv_buffer[150] = {'\0'};

void set_csv_buffer(char buffer[60], IMU_Values accvals, IMU_Values angvals, IMU_Values magvals, bool indexed);

void setup()
{
  Serial.begin(2000000);
  while (!Serial)
  {
    delay(10);
  }
  wireless.bluetooth_connect();
  IMU.init_all();
  Serial.println("Initialisation complete!\nWaiting for input (Type anything in the terminal)");
}

void loop()
{
  while (!run_flag)
  {
    while (Serial.read() != -1) //touchRead(T4) < TOUCH_THRESHOLD)
    {                           // (Pin 13)

      run_flag = true;
    }
  }
  Serial.println("Read Started");
  while (run_flag)
  {
    IMU.get_IMUvalues(&acceleration, &angularv, &mag);
    set_csv_buffer(csv_buffer, acceleration, angularv, mag, true);

    Serial.println(csv_buffer);
    wireless.bluetooth_print_buffer(csv_buffer);
    delay(20);
    while (Serial.read() != -1) // || touchRead(T4) < TOUCH_THRESHOLD)
    {                           // || Serial.available())
      //delay(50);
      run_flag = false;
    }
  }
  Serial.println("Read Stopped");
}

void set_csv_buffer(char input[100], IMU_Values accvals, IMU_Values angvals, IMU_Values magvals, bool indexed)
{
  if (indexed)
  {
    sprintf(input, "acc.x: %f, acc.y: %f, acc.z: %f, ang.x: %f, ang.y: %f, ang.z: %f, mag.x: %f, mag.y: %f, mag.z: %f",
            accvals.x, accvals.y, accvals.z, angvals.x, angvals.y,
            angvals.z, mag.x, mag.y, mag.z); // Set csv_buffer character array
  }
  else
  {
    sprintf(input, "%f, %f, %f, %f, %f, %f, %f, %f, %f",
            accvals.x, accvals.y, accvals.z, angvals.x, angvals.y,
            angvals.z, mag.x, mag.y, mag.z); // Set csv_buffer character array
  }
}