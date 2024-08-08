
_main:

;MyProject.c,5 :: 		void main() {
;MyProject.c,6 :: 		ADCON1=0110;
	MOVLW      72
	MOVWF      ADCON1+0
;MyProject.c,7 :: 		TRISB =0b00000011;TRISC=0;   TRISA=0;   TRISE=0;   TRISD=0;
	MOVLW      3
	MOVWF      TRISB+0
	CLRF       TRISC+0
	CLRF       TRISA+0
	CLRF       TRISE+0
	CLRF       TRISD+0
;MyProject.c,8 :: 		portA=0;portc=0;portE=0;portb=0;PORTD =0;//if there is a problem  in rb0 rb1
	CLRF       PORTA+0
	CLRF       PORTC+0
	CLRF       PORTE+0
	CLRF       PORTB+0
	CLRF       PORTD+0
;MyProject.c,12 :: 		GIE_bit=1;INTE_bit=1;INTEDG_bit=0;
	BSF        GIE_bit+0, BitPos(GIE_bit+0)
	BSF        INTE_bit+0, BitPos(INTE_bit+0)
	BCF        INTEDG_bit+0, BitPos(INTEDG_bit+0)
;MyProject.c,13 :: 		while(1){
L_main0:
;MyProject.c,14 :: 		c1=1;c2=5;c3=1;c4=2;
	MOVLW      1
	MOVWF      _c1+0
	MOVLW      5
	MOVWF      _c2+0
	MOVLW      1
	MOVWF      _c3+0
	MOVLW      2
	MOVWF      _c4+0
;MyProject.c,15 :: 		bol=1;
	MOVLW      1
	MOVWF      _bol+0
;MyProject.c,16 :: 		while(1){
L_main2:
;MyProject.c,17 :: 		portb.B2=1;
	BSF        PORTB+0, 2
;MyProject.c,18 :: 		if(bol){
	MOVF       _bol+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main4
;MyProject.c,19 :: 		portb.B7=1;
	BSF        PORTB+0, 7
;MyProject.c,20 :: 		}else{ portb.B6=1;}
	GOTO       L_main5
L_main4:
	BSF        PORTB+0, 6
L_main5:
;MyProject.c,21 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,22 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,23 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;MyProject.c,25 :: 		c2--;
	DECF       _c2+0, 1
;MyProject.c,26 :: 		c4--;
	DECF       _c4+0, 1
;MyProject.c,27 :: 		if(c1==0&&c2==0){
	MOVF       _c1+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main9
	MOVF       _c2+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main9
L__main66:
;MyProject.c,28 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,29 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,30 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;MyProject.c,31 :: 		break;
	GOTO       L_main3
;MyProject.c,32 :: 		}
L_main9:
;MyProject.c,33 :: 		if(c2==0&&c1!=0){
	MOVF       _c2+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main13
	MOVF       _c1+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main13
L__main65:
;MyProject.c,35 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,36 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,37 :: 		c4--;
	DECF       _c4+0, 1
;MyProject.c,38 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
	NOP
;MyProject.c,39 :: 		c1--;
	DECF       _c1+0, 1
;MyProject.c,40 :: 		c2=9;
	MOVLW      9
	MOVWF      _c2+0
;MyProject.c,41 :: 		}
L_main13:
;MyProject.c,42 :: 		if(c4==0&&c3!=0){
	MOVF       _c4+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main17
	MOVF       _c3+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main17
L__main64:
;MyProject.c,44 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,45 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,46 :: 		c2--;
	DECF       _c2+0, 1
;MyProject.c,47 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
	NOP
;MyProject.c,48 :: 		c3--;
	DECF       _c3+0, 1
;MyProject.c,49 :: 		c4=9;
	MOVLW      9
	MOVWF      _c4+0
;MyProject.c,51 :: 		}
L_main17:
;MyProject.c,52 :: 		if(c3==0 &&c4==0){
	MOVF       _c3+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main21
	MOVF       _c4+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main21
L__main63:
;MyProject.c,53 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,54 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,55 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	DECFSZ     R11+0, 1
	GOTO       L_main22
	NOP
	NOP
;MyProject.c,56 :: 		c3=c1;c4=c2;
	MOVF       _c1+0, 0
	MOVWF      _c3+0
	MOVF       _c2+0, 0
	MOVWF      _c4+0
;MyProject.c,57 :: 		portb.B7=0;
	BCF        PORTB+0, 7
;MyProject.c,58 :: 		portb.B6=1;
	BSF        PORTB+0, 6
;MyProject.c,59 :: 		bol=0;
	CLRF       _bol+0
;MyProject.c,60 :: 		}
L_main21:
;MyProject.c,62 :: 		}
	GOTO       L_main2
L_main3:
;MyProject.c,63 :: 		portb.B6=0;
	BCF        PORTB+0, 6
;MyProject.c,64 :: 		portb.B2=0;
	BCF        PORTB+0, 2
;MyProject.c,65 :: 		c1=2;c2=0;c3=2;c4=3;
	MOVLW      2
	MOVWF      _c1+0
	CLRF       _c2+0
	MOVLW      2
	MOVWF      _c3+0
	MOVLW      3
	MOVWF      _c4+0
;MyProject.c,66 :: 		flag=1;
	MOVLW      1
	MOVWF      _flag+0
;MyProject.c,67 :: 		while(1){
L_main23:
;MyProject.c,68 :: 		portb.B5=1;
	BSF        PORTB+0, 5
;MyProject.c,69 :: 		if(flag){portb.B4=1;}
	MOVF       _flag+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main25
	BSF        PORTB+0, 4
	GOTO       L_main26
L_main25:
;MyProject.c,70 :: 		else{ portb.B3=1;}
	BSF        PORTB+0, 3
L_main26:
;MyProject.c,71 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,72 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,74 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
	NOP
	NOP
;MyProject.c,75 :: 		if(c2==0&&c1!=0){
	MOVF       _c2+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main30
	MOVF       _c1+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main30
L__main62:
;MyProject.c,76 :: 		c1--;
	DECF       _c1+0, 1
;MyProject.c,77 :: 		c2=9;  c4--;
	MOVLW      9
	MOVWF      _c2+0
	DECF       _c4+0, 1
;MyProject.c,78 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVLW      9
	MOVWF      PORTC+0
;MyProject.c,79 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,81 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main31:
	DECFSZ     R13+0, 1
	GOTO       L_main31
	DECFSZ     R12+0, 1
	GOTO       L_main31
	DECFSZ     R11+0, 1
	GOTO       L_main31
	NOP
	NOP
;MyProject.c,83 :: 		}
L_main30:
;MyProject.c,84 :: 		c2--;
	DECF       _c2+0, 1
;MyProject.c,85 :: 		c4--;
	DECF       _c4+0, 1
;MyProject.c,86 :: 		if(c1==0&&c2==0){
	MOVF       _c1+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main34
	MOVF       _c2+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main34
L__main61:
;MyProject.c,87 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,88 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,89 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main35:
	DECFSZ     R13+0, 1
	GOTO       L_main35
	DECFSZ     R12+0, 1
	GOTO       L_main35
	DECFSZ     R11+0, 1
	GOTO       L_main35
	NOP
	NOP
;MyProject.c,90 :: 		c1=c3;c2=c4;
	MOVF       _c3+0, 0
	MOVWF      _c1+0
	MOVF       _c4+0, 0
	MOVWF      _c2+0
;MyProject.c,91 :: 		portb.B4=0;
	BCF        PORTB+0, 4
;MyProject.c,92 :: 		portb.B3=1;
	BSF        PORTB+0, 3
;MyProject.c,93 :: 		flag=0;
	CLRF       _flag+0
;MyProject.c,94 :: 		}
L_main34:
;MyProject.c,96 :: 		if(c4==0&&c3!=0){
	MOVF       _c4+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main38
	MOVF       _c3+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main38
L__main60:
;MyProject.c,98 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,99 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,100 :: 		c2--;
	DECF       _c2+0, 1
;MyProject.c,101 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main39:
	DECFSZ     R13+0, 1
	GOTO       L_main39
	DECFSZ     R12+0, 1
	GOTO       L_main39
	DECFSZ     R11+0, 1
	GOTO       L_main39
	NOP
	NOP
;MyProject.c,102 :: 		c3--;
	DECF       _c3+0, 1
;MyProject.c,103 :: 		c4=9;
	MOVLW      9
	MOVWF      _c4+0
;MyProject.c,105 :: 		}
L_main38:
;MyProject.c,106 :: 		if(c3==0 &&c4==0){
	MOVF       _c3+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main42
	MOVF       _c4+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main42
L__main59:
;MyProject.c,107 :: 		portE=c1; portc=c2;
	MOVF       _c1+0, 0
	MOVWF      PORTE+0
	MOVF       _c2+0, 0
	MOVWF      PORTC+0
;MyProject.c,108 :: 		portA=c3; portD=c4;
	MOVF       _c3+0, 0
	MOVWF      PORTA+0
	MOVF       _c4+0, 0
	MOVWF      PORTD+0
;MyProject.c,109 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main43:
	DECFSZ     R13+0, 1
	GOTO       L_main43
	DECFSZ     R12+0, 1
	GOTO       L_main43
	DECFSZ     R11+0, 1
	GOTO       L_main43
	NOP
	NOP
;MyProject.c,110 :: 		break;
	GOTO       L_main24
;MyProject.c,111 :: 		}
L_main42:
;MyProject.c,113 :: 		}
	GOTO       L_main23
L_main24:
;MyProject.c,114 :: 		portb.B4=0;
	BCF        PORTB+0, 4
;MyProject.c,115 :: 		portb.B5=0;
	BCF        PORTB+0, 5
;MyProject.c,116 :: 		portb.B3=0;
	BCF        PORTB+0, 3
;MyProject.c,117 :: 		}
	GOTO       L_main0
;MyProject.c,118 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;MyProject.c,119 :: 		void interrupt(){
;MyProject.c,120 :: 		portA=0;portc=0;portE=0;portb=0;PORTD =0;
	CLRF       PORTA+0
	CLRF       PORTC+0
	CLRF       PORTE+0
	CLRF       PORTB+0
	CLRF       PORTD+0
;MyProject.c,121 :: 		for(;i>=0;i--){
L_interrupt44:
	MOVLW      0
	SUBWF      _i+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_interrupt45
;MyProject.c,122 :: 		portB.B6=1;
	BSF        PORTB+0, 6
;MyProject.c,123 :: 		portB.B3=1;
	BSF        PORTB+0, 3
;MyProject.c,124 :: 		portc=i;
	MOVF       _i+0, 0
	MOVWF      PORTC+0
;MyProject.c,125 :: 		portd=i;
	MOVF       _i+0, 0
	MOVWF      PORTD+0
;MyProject.c,126 :: 		dm(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_interrupt47:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt47
	DECFSZ     R12+0, 1
	GOTO       L_interrupt47
	DECFSZ     R11+0, 1
	GOTO       L_interrupt47
	NOP
	NOP
;MyProject.c,127 :: 		if(i==0){i=3; break;}
	MOVF       _i+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt48
	MOVLW      3
	MOVWF      _i+0
	GOTO       L_interrupt45
L_interrupt48:
;MyProject.c,121 :: 		for(;i>=0;i--){
	DECF       _i+0, 1
;MyProject.c,128 :: 		}
	GOTO       L_interrupt44
L_interrupt45:
;MyProject.c,129 :: 		if(INTF_bit==1) {
	BTFSS      INTF_bit+0, BitPos(INTF_bit+0)
	GOTO       L_interrupt49
;MyProject.c,132 :: 		while(1){
L_interrupt50:
;MyProject.c,133 :: 		while(portB.B1==1){   //west
L_interrupt52:
	BTFSS      PORTB+0, 1
	GOTO       L_interrupt53
;MyProject.c,134 :: 		portB.B4=1;
	BSF        PORTB+0, 4
;MyProject.c,135 :: 		portB.B5=1;
	BSF        PORTB+0, 5
;MyProject.c,136 :: 		portB.B2=0;
	BCF        PORTB+0, 2
;MyProject.c,137 :: 		portB.B7=0;
	BCF        PORTB+0, 7
;MyProject.c,138 :: 		portB.B6=0;
	BCF        PORTB+0, 6
;MyProject.c,139 :: 		portB.B3=0;
	BCF        PORTB+0, 3
;MyProject.c,140 :: 		if(portB.B0==1){break;}
	BTFSS      PORTB+0, 0
	GOTO       L_interrupt54
	GOTO       L_interrupt53
L_interrupt54:
;MyProject.c,141 :: 		}
	GOTO       L_interrupt52
L_interrupt53:
;MyProject.c,142 :: 		while(portB.B1==0){ //south
L_interrupt55:
	BTFSC      PORTB+0, 1
	GOTO       L_interrupt56
;MyProject.c,143 :: 		portB.B2=1;
	BSF        PORTB+0, 2
;MyProject.c,144 :: 		portB.B7=1;
	BSF        PORTB+0, 7
;MyProject.c,145 :: 		portB.B4=0;
	BCF        PORTB+0, 4
;MyProject.c,146 :: 		portB.B5=0;
	BCF        PORTB+0, 5
;MyProject.c,147 :: 		portB.B6=0;
	BCF        PORTB+0, 6
;MyProject.c,148 :: 		portB.B3=0;
	BCF        PORTB+0, 3
;MyProject.c,149 :: 		if(portB.B0==1){break;}
	BTFSS      PORTB+0, 0
	GOTO       L_interrupt57
	GOTO       L_interrupt56
L_interrupt57:
;MyProject.c,150 :: 		}
	GOTO       L_interrupt55
L_interrupt56:
;MyProject.c,151 :: 		if(portB.B0==1){break;}
	BTFSS      PORTB+0, 0
	GOTO       L_interrupt58
	GOTO       L_interrupt51
L_interrupt58:
;MyProject.c,153 :: 		}
	GOTO       L_interrupt50
L_interrupt51:
;MyProject.c,154 :: 		portB.B4=0;
	BCF        PORTB+0, 4
;MyProject.c,155 :: 		portB.B5=0;
	BCF        PORTB+0, 5
;MyProject.c,156 :: 		portB.B2=0;
	BCF        PORTB+0, 2
;MyProject.c,157 :: 		portB.B7=0;
	BCF        PORTB+0, 7
;MyProject.c,158 :: 		portB.B6=0;
	BCF        PORTB+0, 6
;MyProject.c,159 :: 		portB.B3=0;
	BCF        PORTB+0, 3
;MyProject.c,160 :: 		INTF_bit=0;
	BCF        INTF_bit+0, BitPos(INTF_bit+0)
;MyProject.c,161 :: 		}
L_interrupt49:
;MyProject.c,163 :: 		}
L_end_interrupt:
L__interrupt69:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt
