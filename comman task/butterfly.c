#include<pic.h>
#define _XTAL_FREQ 400000
void main()
{
TRISA=0x00;
PORTA=0x00;
TRISB=0x00;
PORTB=0x00;
TRISC=0x00;
PORTC=0x00;
TRISD=0x00;
PORTD=0x00;
ANSEL=0x00;
ANSELH=0x00;
for(int i=0;i<=7;i=i++)
{
PORTA|=1<<i,PORTC|=1<<i;
__delay_ms(3000);
}
for(int J=0;J<=7;J=J++)
{
PORTB|=1<<J,PORTD|=1<<J;
__delay_ms(3000);
}
for(int l=7;l>=0;l=l-1)
{
PORTB&=~(1<<l),PORTD&=~(1<<l);
__delay_ms(3000);
}
for(int k=7;k>=0;k=k-1)
{
PORTA&=~(1<<k),PORTC&=~(1<<k);
__delay_ms(3000);
}
}

