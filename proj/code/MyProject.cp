#line 1 "C:/Users/NanoChip/Desktop/proj/code/MyProject.c"
char i=3,c1=0,c2=0,c3=0,c4=0,bol,flag;



void main() {
ADCON1=0110;
 TRISB =0b00000011;TRISC=0; TRISA=0; TRISE=0; TRISD=0;
 portA=0;portc=0;portE=0;portb=0;PORTD =0;



 GIE_bit=1;INTE_bit=1;INTEDG_bit=0;
 while(1){
 c1=1;c2=5;c3=1;c4=2;
 bol=1;
 while(1){
 portb.B2=1;
 if(bol){
 portb.B7=1;
 }else{ portb.B6=1;}
 portA=c3; portD=c4;
 portE=c1; portc=c2;
  Delay_ms (1000);

 c2--;
 c4--;
 if(c1==0&&c2==0){
 portE=c1; portc=c2;
 portA=c3; portD=c4;
  Delay_ms (1000);
 break;
 }
 if(c2==0&&c1!=0){

 portE=c1; portc=c2;
 portA=c3; portD=c4;
 c4--;
  Delay_ms (1000);
 c1--;
 c2=9;
 }
 if(c4==0&&c3!=0){

 portA=c3; portD=c4;
 portE=c1; portc=c2;
 c2--;
  Delay_ms (1000);
 c3--;
 c4=9;

 }
 if(c3==0 &&c4==0){
 portE=c1; portc=c2;
 portA=c3; portD=c4;
  Delay_ms (1000);
 c3=c1;c4=c2;
 portb.B7=0;
 portb.B6=1;
 bol=0;
 }

 }
 portb.B6=0;
 portb.B2=0;
 c1=2;c2=0;c3=2;c4=3;
 flag=1;
 while(1){
 portb.B5=1;
 if(flag){portb.B4=1;}
 else{ portb.B3=1;}
 portA=c3; portD=c4;
 portE=c1; portc=c2;

  Delay_ms (1000);
 if(c2==0&&c1!=0){
 c1--;
 c2=9; c4--;
 portE=c1; portc=c2;
 portA=c3; portD=c4;

  Delay_ms (1000);

 }
 c2--;
 c4--;
 if(c1==0&&c2==0){
 portE=c1; portc=c2;
 portA=c3; portD=c4;
  Delay_ms (1000);
 c1=c3;c2=c4;
 portb.B4=0;
 portb.B3=1;
 flag=0;
 }

 if(c4==0&&c3!=0){

 portA=c3; portD=c4;
 portE=c1; portc=c2;
 c2--;
  Delay_ms (1000);
 c3--;
 c4=9;

 }
 if(c3==0 &&c4==0){
 portE=c1; portc=c2;
 portA=c3; portD=c4;
  Delay_ms (1000);
 break;
 }

 }
 portb.B4=0;
 portb.B5=0;
 portb.B3=0;
}
}
 void interrupt(){
 portA=0;portc=0;portE=0;portb=0;PORTD =0;
 for(;i>=0;i--){
 portB.B6=1;
 portB.B3=1;
 portc=i;
 portd=i;
  Delay_ms (1000);
 if(i==0){i=3; break;}
 }
 if(INTF_bit==1) {


 while(1){
 while(portB.B1==1){
 portB.B4=1;
 portB.B5=1;
 portB.B2=0;
 portB.B7=0;
 portB.B6=0;
 portB.B3=0;
 if(portB.B0==1){break;}
 }
 while(portB.B1==0){
 portB.B2=1;
 portB.B7=1;
 portB.B4=0;
 portB.B5=0;
 portB.B6=0;
 portB.B3=0;
 if(portB.B0==1){break;}
 }
 if(portB.B0==1){break;}

 }
 portB.B4=0;
 portB.B5=0;
 portB.B2=0;
 portB.B7=0;
 portB.B6=0;
 portB.B3=0;
 INTF_bit=0;
 }

 }
