#include<pic.h>
#define _XTAL_FREQ 400000
void main()
{
TRISA=0x00;
PORTA=0x00;
TRISB=0x00;
PORTB=0x00;
while(1)
{
PORTA=0xc8;
PORTB=0x77;
}
}