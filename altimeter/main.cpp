#include "mbed.h"

DigitalOut myled(LED1);
Serial pc(USBTX, USBRX);

I2C i2c(I2C_SDA, I2C_SCL);

#define ADC_READ    0x00
#define ADC_CONV    0x40
#define ADC_D1      0x00
#define ADC_D2      0x10
#define OSR_4096    0x08
#define PROM_READ   0xA0

const int addr = 0b11101100;

int read_prom(int c);
int read_adc(int command);
float read_temp();

int main() {

    float temp = 0;

    while(true){

        temp = read_temp();

        pc.printf("temp: %f \n", temp);

        ThisThread::sleep_for(1000);

    }

}

int read_prom(int c){
    char buf[2] = {static_cast<char>(PROM_READ | (addr << 1)), 0};
 
    if (i2c.write(addr, buf, 1) == 0 && i2c.read(addr, buf, 2) == 0){
        return buf[0] << 8 | buf[1];
    }

    return -1;
}

int read_adc(int command) {
    char cmd[] = {static_cast<char>(ADC_CONV | command)};

    if (i2c.write(addr, cmd, sizeof(cmd)) == 0) {
        static int duration[] = {500, 1100, 2100, 4100, 8220};
        wait_us(duration[(command & 0x0F) >> 1]);
        cmd[0] = ADC_READ;
        char buf[3];
        if (i2c.write(addr, cmd, sizeof(cmd)) == 0 &&
            i2c.read(addr, buf, sizeof(buf)) == 0)
            return buf[0] << 16 | buf[1] << 8 | buf[2];
    }

    return -1;
}

float read_temp(){
    int raw = read_adc(ADC_D1 | OSR_4096);
    int c5 = read_prom(5);
    int c6 = read_prom(6);

    int dT = raw - (c5 << 8);
        int temp = 2000 + ((dT * c6) >> 23);
        
        // 2nd order temperature compensation
        if (temp < 2000) {
            int t2 = (int64_t) dT * dT >> 31;
            temp -= t2;
        }
 
        return float(temp) / 100;
}
