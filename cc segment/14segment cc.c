#include<pic.h>
#define _XTAL_FREQ 400000
int main()
{
TRISA=0x00;
PORTA=0x00;
TRISC=0x00;
PORTC=0x00;
while(1)
{
PORTA=0x63;
PORTC=0x11;
}
}