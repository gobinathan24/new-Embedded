#include<pic.h>
#define _XTAL_FREQ 400000
void pulse()
{
RB2=1;
__delay_ms(1000);
RB2=0;
__delay_ms(1000);
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
void call(char *name)
{
RB0=1;RB1=0;
//for(int i=0;name[i]!='\0';i++)
while(*name)
{
PORTA=*name++;
pulse();
}
}
void address(int c)
{
RB0=0;RB1=0;
PORTA=c;
pulse();
}
void display(int a)
{
RB0=1;RB1=0;
PORTA=a;
pulse();
}
void main()
{
int count=0;
TRISA=0X00;
PORTA=0X00;
TRISC=0X78;
PORTC=0X00;
TRISB=0Xf8;
PORTB=0X00;
ANSEL=0X00;
ANSELH=0X00;
type();
on();
address(0x80);
while(1)
{
RC1=0;RC2=0;RC0=1;
if(RC3==1)
{
display(0x31);
count++;
while(RC3==1);
}
if(RC4==1)
{
display(0x34);
count++;
while(RC4==1);
}
if(RC5==1)
{
display(0x37);
count++;
while(RC5==1);
}
RC0=0;RC2=0;RC1=1;
if(RC3==1)
{
display(0x32);
count++;
while(RC3==1);
}
if(RC4==1)
{ 
display(0x35);
count++;
while(RC4==1);
}
if(RC5==1)
{
display(0x38);
count++;
while(RC5==1);
}
RC1=0;RC0=0;RC2=1;
if(RC3==1)
{
display(0x33);
count++;
while(RC3==1);
}
if(RC4==1)
{
display(0x36);
count++;
while(RC4==1);
}
if(RC5==1) 
{
display(0x39);
count++;
while(RC5==1) ;
}
RC1=0;RC2=0;RC0=1;
if(RC6==1)
{
if(count==10)
{
address(0xc0);
call("calling");
}
if(count!=10)
{
address(0xC0);
call("not valid");
}
}
}
}
