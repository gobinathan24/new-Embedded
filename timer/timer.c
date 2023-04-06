#include<pic.>
#define _XTAL_FREQ 400000
void pulse()
{
RB2=1;
__delay_ms(10);
RB2=0;
__delay_ms(10);
}
void type()
{
RB0=0;RB1=0;
PORTA=0X38;
pulse();
}
void on()
{
RB0=0;RB1=0;
PORTA=0X0E;
pulse();
}
void address()
{
RB0=0;RB1=0;
PORTA=0X80;
pulse();
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
address(0x80);
type();
on();
display(0x80,0);
OPTION_REG=0X07;
int count=0,sum,sum1,sum2;
T0IF=0;
TMR0=38;
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
display(0x81,0);
display(sum1+0x30,1);
display(0x82,0);
display(sum2+0x30,1);
T0IF==0;
}
if(count<=90)
{
RC0=1;
}
if(count>90)
{
RC0=0;
}
if (count==180)
{
count=0;
}
}
}