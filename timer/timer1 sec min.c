#include<pic.h>
#define _XTAL_FREQ 400000
void pulse()
{
RB2=1;
__delay_us(50);
RB2=0;
__delay_us(50);
}
void display(int a,int b)
{
RB0=b;RB1=0;
PORTA=a;
pulse();
}
void main()
{
TRISA=0X00;
PORTA=0X00;
TRISC=0X00;
PORTC=0X00;
TRISB=0X00;
PORTB=0X00;
ANSEL=0X00;
ANSELH=0X00;
display(0x38,0);
display(0x0E,0);
OPTION_REG=0X07;
int count=0,sum,sum1,sum2,sec,sec1,sec2,gob,gob1,gob2,gobi;
T0IF=0;
TMR0=131;
while(1)
{
if(T0IF==1)
{
count++;
sum=count/100;
sum1=(count%100)/10;
sum2=count%10;
display(0x80,0);
display(sum+0x30,1);
display(0x81,0);                                   //count
display(sum1+0x30,1);
display(0x82,0);
display(sum2+0x30,1);
if(count==125)
{

count=0;
sec++;
gob=sec/100;
gob1=(sec%100)/10;
gob2=sec%10;
display(0x88,0);
display(gob1+0x30,1);                      //seconds
display(0x89,0);                      
display(gob2+0x30,1);
}
if(sec==60)
{
gobi++;
display(0x8d,0);                       //for mint
display(gobi+0x30,1);
sec=0;
}
}
T0IF==0;
}
}
