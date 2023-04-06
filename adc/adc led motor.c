#include<pic.h>
#define _XTAL_FREQ 4000000
int DV,high,low;
int a,b,c,d;
void pulse()
{
RE2=1;
__delay_us(400);
RE2=0;
__delay_us(400);
}
void display(int a,int b)
{
RE0=b;RE1=0;
PORTD=a;
pulse();
}
void count(int i)
{
a=i/1000;
b=((i%1000)/100);
c=((i%100)/10);
d=i%10;
display(0x80,0);
display(0x30+a,01);
display(0x30+b,01);
display(0x30+c,01);
display(0x30+d,01);

}


void main()
{
TRISA=0X01;
PORTA=0X00;
TRISB=0X00;
PORTB=0X00;
TRISD=0X00;
PORTD=0X00;
TRISE=0X00;
PORTE=0X00;
ANSEL=0X01;
ANSELH=0X00;
while(1)
{
ADCON0=0X81;//start coverstion
ADCON1=0X80;//initialize adc
GO=1;       //go comment to start onversion
display(0x38,0);//type
display(0x0e,0);//on
while(GO);
high=ADRESH;
low=ADRESL;
if(high==0) 
{ 
DV=low; 
} 
if(high==1) 
{ 
DV=low+256; 
count(DV);
} 
if(high==2) 
{ 
DV=low+512; 
count(DV);
} 
if( high==3) 
{ 
DV=low+768; 
count(DV);
}
int a,b,c,d;
display(0xc0,0);
float z;
z=(DV*5.0)/1023.0;
d=z*100;
a=d/100;
b=(d%100)/10;
c=d%10;
display(0x30+a,1);
display(0x2e,1);
display(0x30+b,1);
display(0x30+c,1);
display(0x20,1);
display(0x56,1);

if(DV>=307&&DV<511)
{
RB0=1;
__delay_ms(100);
RB0=0;
__delay_ms(100);
}
if(DV>717)
{
RB0=0;
}
if(DV>=512&&DV<=920)
{
RB2=1;
RB1=0;
}
if(DV>=921)
{
RB1=1;
RB2=0;
}
if(DV==1023)
{
RB1=0;
RB2=0;
RB0=0;
}
} 
}



