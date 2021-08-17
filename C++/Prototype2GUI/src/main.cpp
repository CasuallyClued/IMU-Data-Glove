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

char buffer[150] = {'\0'};
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
  Serial.println("Initialisation complete!");
}

void loop()
{
  if (Serial.read() != -1)
  {
    IMU.get_IMUvalues(&acceleration, &angularv, &mag);
    set_csv_buffer(buffer, acceleration, angularv, mag, false);
    Serial.println(buffer);
  }
  if (wireless.bluetooth_read() != -1)
  {
    IMU.get_IMUvalues(&acceleration, &angularv, &mag);
    set_csv_buffer(buffer, acceleration, angularv, mag, false);
    wireless.bluetooth_print_buffer(buffer);
  }
}

void set_csv_buffer(char input[150], IMU_Values accvals, IMU_Values angvals, IMU_Values magvals, bool indexed)
{
  if (indexed)
  {
    sprintf(input, "acc.x: %f, acc.y: %f, acc.z: %f, ang.x: %f, ang.y: %f, ang.z: %f, mag.x: %f, mag.y: %f, mag.z: %f",
            accvals.x, accvals.y, accvals.z, angvals.x, angvals.y,
            angvals.z, mag.x, mag.y, mag.z); // Set buffer character array
  }
  else
  {
    sprintf(input, "%f, %f, %f, %f, %f, %f, %f, %f, %f",
            accvals.x, accvals.y, accvals.z, angvals.x, angvals.y,
            angvals.z, mag.x, mag.y, mag.z); // Set buffer character array
  }
}