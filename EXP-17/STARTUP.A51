#include <reg51.h>

void serial_ISR(void) interrupt 4
{
    if (RI)
    {
        P1 = SBUF;
        RI = 0;
    }
}

void main(void)
{
    TMOD = 0x20;      // Timer 1, Mode 2
    TH1  = 0xFD;      // 9600 baud for 11.0592 MHz crystal
    SCON = 0x50;      // Serial Mode 1, 8-bit UART, receiver enabled
    TR1  = 1;         // Start Timer 1

    P1 = 0x00;

    ES = 1;           // Enable serial interrupt
    EA = 1;           // Enable global interrupt

    while (1)
    {
        // Wait for serial data
    }
}