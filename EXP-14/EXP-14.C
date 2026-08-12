#include <reg51.h>
#include <stdio.h>

void main(void)
{
    SCON = 0x50;   // UART Mode 1, 8-bit, receiver enabled
    TMOD = 0x20;   // Timer 1, Mode 2, 8-bit auto reload
    TH1  = 0xFD;   // 9600 baud rate
    TR1  = 1;      // Start Timer 1
    TI   = 1;      // Set TI to send first character

    while(1)
    {
        printf("Hello World ! \n");
    }
}