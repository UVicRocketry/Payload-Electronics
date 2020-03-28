#include "mbed.h"
#include "LIS331.h"

Serial pc(USBTX, USBRX);
I2C i2c(I2C_SDA, I2C_SCL);

LIS331 accelerometer(I2C_SDA, I2C_SCL);

// main() runs in its own thread in the OS
int main()
{

    float x = 0;
    float y = 0;
    float z = 0;

    while (true) {
        x = accelerometer.getAccelX();
        y = accelerometer.getAccelY();
        z = accelerometer.getAccelZ();
        
        pc.printf("x: %f | y: %f | z: %f \n", x, y , z);
    }
}

