#include<pic.h>
#define _XTAL_FREQ 4000000
void interrupt nnn()
{

if(INTF==1)
{
RB1=1;
char cc[10]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x83,0xf8,0x80,0x98};
for( int i=0;i<10;i++)
{
PORTC=cc[i];
__delay_ms(1000);
INTF=0;
}
}
}
void main()
{
int i;
TRISA=0X00;
PORTA=0X00;
TRISB=0X01;
PORTB=0X00;
TRISC=0X00;
PORTC=0X00;
ANSEL=0X00;
ANSELH=0X00;
GIE=1;
PEIE=1;
INTE=1;
char cc[10]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x83,0xf8,0x80,0x98};
while(1)
{
for( int i=0;i<10;i++)
{
PORTA=cc[i];
__delay_ms(1000);
}
}
}
