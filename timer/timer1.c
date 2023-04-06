#include<pic.h>
void pulse()
{
RB2=1;
void main()
{
int count;
TRISC=0X00;
PORTC=0X00;
T1CON=0X39;
TMR1L=0X0C;
TMR1H=0XBC;
while(1)
{
if(TMR1IF==1)
{
count++;
TMR1L=0X0C;
TMR1H=0XBC;
TMR1IF=0;
}
if(count<=2)
{
RC0=1;
}
if(count>2&&count<=10)
{
RC0=0;
}
if(count>10)
{
count=0;
}
}
}