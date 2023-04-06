#include<pic.h>
#define _XTAL_FREQ 400000
int main()
{
int i,j,k,l;
char cc[20]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
TRISA=0x00;
PORTA=0x00;
TRISB=0x00;
PORTB=0x00;
ANSEL=0x00;
ANSELH=0x00;
while(1)
{
for(i=9;i>=0;i--)
{
for(j=9;j>=0;j--)
{
for(k=9;k>=0;k--)
{
for(l=9;l>=0;l--)
{
RB1=0;RB2=0;RB3=0;RB0=1;
PORTA=cc[i];
__delay_ms(100);
RB0=0;RB2=0;RB3=0;RB1=1;
PORTA=cc[j];
__delay_ms(100);
RB1=0;RB0=0;RB3=0;RB2=1;
PORTA=cc[k];
__delay_ms(100);
RB2=0;RB0=0;RB1=0;RB3=1;
PORTA=cc[l];
__delay_ms(100);
}
}
}
}
}
}