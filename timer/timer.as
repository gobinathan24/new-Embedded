opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_address
	FNCALL	_main,_type
	FNCALL	_main,_on
	FNCALL	_main,_display
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_display,_pulse
	FNCALL	_address,_pulse
	FNCALL	_on,_pulse
	FNCALL	_type,_pulse
	FNROOT	_main
	global	_PORTA
psect	text214,local,class=CODE,delta=2
global __ptext214
__ptext214:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_TMR0
_TMR0	set	1
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RC0
_RC0	set	56
	global	_T0IF
_T0IF	set	90
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"timer.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_pulse
?_pulse:	; 0 bytes @ 0x0
	global	??_pulse
??_pulse:	; 0 bytes @ 0x0
	global	?_type
?_type:	; 0 bytes @ 0x0
	global	?_on
?_on:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_type
??_type:	; 0 bytes @ 0x1
	global	??_on
??_on:	; 0 bytes @ 0x1
	global	?_address
?_address:	; 0 bytes @ 0x1
	global	?_display
?_display:	; 0 bytes @ 0x1
	global	display@a
display@a:	; 2 bytes @ 0x1
	ds	1
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_address
??_address:	; 0 bytes @ 0x3
	global	display@b
display@b:	; 2 bytes @ 0x3
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	??_display
??_display:	; 0 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@sum
main@sum:	; 2 bytes @ 0x0
	ds	2
	global	main@sum2
main@sum2:	; 2 bytes @ 0x2
	ds	2
	global	main@sum1
main@sum1:	; 2 bytes @ 0x4
	ds	2
	global	main@count
main@count:	; 2 bytes @ 0x6
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9       9
;; BANK0           80      8       8
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
;;   _display->_pulse
;;   _address->_pulse
;;   _on->_pulse
;;   _type->_pulse
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 8     8      0     867
;;                                              0 BANK0      8     8      0
;;                            _address
;;                               _type
;;                                 _on
;;                            _display
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _display                                              4     0      4      44
;;                                              1 COMMON     4     0      4
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _address                                              2     0      2       0
;;                                              1 COMMON     2     0      2
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _on                                                   0     0      0       0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _type                                                 0     0      0       0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) _pulse                                                1     1      0       0
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _address
;;     _pulse
;;   _type
;;     _pulse
;;   _on
;;     _pulse
;;   _display
;;     _pulse
;;   ___awdiv
;;   ___awmod
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      9       9       1       64.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      8       8       5       10.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 35 in file "D:\New folder\timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    6[BANK0 ] int 
;;  sum1            2    4[BANK0 ] int 
;;  sum2            2    2[BANK0 ] int 
;;  sum             2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_address
;;		_type
;;		_on
;;		_display
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\New folder\timer.c"
	line	35
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	36
	
l2432:	
;timer.c: 36: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	37
;timer.c: 37: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	38
;timer.c: 38: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	39
;timer.c: 39: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	40
;timer.c: 40: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	41
;timer.c: 41: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	42
;timer.c: 42: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	43
;timer.c: 43: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	44
	
l2434:	
;timer.c: 44: address(0x80);
	movlw	low(080h)
	movwf	(?_address)
	movlw	high(080h)
	movwf	((?_address))+1
	fcall	_address
	line	45
	
l2436:	
;timer.c: 45: type();
	fcall	_type
	line	46
	
l2438:	
;timer.c: 46: on();
	fcall	_on
	line	47
	
l2440:	
;timer.c: 47: display(0x80,0);
	movlw	low(080h)
	movwf	(?_display)
	movlw	high(080h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	48
	
l2442:	
;timer.c: 48: OPTION_REG=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	49
	
l2444:	
;timer.c: 49: int count=0,sum,sum1,sum2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	50
	
l2446:	
;timer.c: 50: T0IF=0;
	bcf	(90/8),(90)&7
	line	51
;timer.c: 51: TMR0=38;
	movlw	(026h)
	movwf	(1)	;volatile
	goto	l2448
	line	52
;timer.c: 52: while(1)
	
l1042:	
	line	54
	
l2448:	
;timer.c: 53: {
;timer.c: 54: if(T0IF==1)
	btfss	(90/8),(90)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l2474
u2410:
	line	56
	
l2450:	
;timer.c: 55: {
;timer.c: 56: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	57
	
l2452:	
;timer.c: 57: sum=count/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(main@count+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@count),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@sum+1)
	addwf	(main@sum+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@sum)
	addwf	(main@sum)

	line	58
	
l2454:	
;timer.c: 58: sum1=(count%100)/10;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(main@count+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@count),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@sum1+1)
	addwf	(main@sum1+1)
	movf	(0+(?___awmod)),w
	clrf	(main@sum1)
	addwf	(main@sum1)

	
l2456:	
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@sum1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@sum1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@sum1+1)
	addwf	(main@sum1+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@sum1)
	addwf	(main@sum1)

	line	59
	
l2458:	
;timer.c: 59: sum2=count%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@count+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@count),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@sum2+1)
	addwf	(main@sum2+1)
	movf	(0+(?___awmod)),w
	clrf	(main@sum2)
	addwf	(main@sum2)

	line	60
	
l2460:	
;timer.c: 60: display(0x80,0);
	movlw	low(080h)
	movwf	(?_display)
	movlw	high(080h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	61
	
l2462:	
;timer.c: 61: display(sum+0x30,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@sum),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(main@sum+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	62
	
l2464:	
;timer.c: 62: display(0x81,0);
	movlw	low(081h)
	movwf	(?_display)
	movlw	high(081h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	63
	
l2466:	
;timer.c: 63: display(sum1+0x30,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@sum1),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(main@sum1+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	64
	
l2468:	
;timer.c: 64: display(0x82,0);
	movlw	low(082h)
	movwf	(?_display)
	movlw	high(082h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	65
	
l2470:	
;timer.c: 65: display(sum2+0x30,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@sum2),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(main@sum2+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	66
	
l2472:	
;timer.c: 66: T0IF==0;
	goto	l2474
	line	67
	
l1043:	
	line	68
	
l2474:	
;timer.c: 67: }
;timer.c: 68: if(count<=90)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2425
	movlw	low(05Bh)
	subwf	(main@count),w
u2425:

	skipnc
	goto	u2421
	goto	u2420
u2421:
	goto	l2478
u2420:
	line	70
	
l2476:	
;timer.c: 69: {
;timer.c: 70: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	l2478
	line	71
	
l1044:	
	line	72
	
l2478:	
;timer.c: 71: }
;timer.c: 72: if(count>90)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2435
	movlw	low(05Bh)
	subwf	(main@count),w
u2435:

	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l2482
u2430:
	line	74
	
l2480:	
;timer.c: 73: {
;timer.c: 74: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	goto	l2482
	line	75
	
l1045:	
	line	76
	
l2482:	
;timer.c: 75: }
;timer.c: 76: if (count==180)
	movlw	0B4h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@count),w
	iorwf	(main@count+1),w
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l2448
u2440:
	line	78
	
l2484:	
;timer.c: 77: {
;timer.c: 78: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l2448
	line	79
	
l1046:	
	goto	l2448
	line	81
	
l1047:	
	line	52
	goto	l2448
	
l1048:	
	line	82
	
l1049:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_display
psect	text215,local,class=CODE,delta=2
global __ptext215
__ptext215:

;; *************** function _display *****************
;; Defined at:
;;		line 29 in file "D:\New folder\timer.c"
;; Parameters:    Size  Location     Type
;;  a               2    1[COMMON] int 
;;  b               2    3[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text215
	file	"D:\New folder\timer.c"
	line	29
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 6
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2426:	
;timer.c: 30: RB0=b;RB1=0;
	btfsc	(display@b),0
	goto	u2391
	goto	u2390
	
u2391:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	goto	u2404
u2390:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
u2404:
	bcf	(49/8),(49)&7
	line	31
	
l2428:	
;timer.c: 31: PORTA=a;
	movf	(display@a),w
	movwf	(5)	;volatile
	line	32
	
l2430:	
;timer.c: 32: pulse();
	fcall	_pulse
	line	33
	
l1039:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,8312
	global	_address
psect	text216,local,class=CODE,delta=2
global __ptext216
__ptext216:

;; *************** function _address *****************
;; Defined at:
;;		line 23 in file "D:\New folder\timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text216
	file	"D:\New folder\timer.c"
	line	23
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 6
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l2420:	
;timer.c: 24: RB0=0;RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	line	25
	
l2422:	
;timer.c: 25: PORTA=0X80;
	movlw	(080h)
	movwf	(5)	;volatile
	line	26
	
l2424:	
;timer.c: 26: pulse();
	fcall	_pulse
	line	27
	
l1036:	
	return
	opt stack 0
GLOBAL	__end_of_address
	__end_of_address:
;; =============== function _address ends ============

	signat	_address,88
	global	_on
psect	text217,local,class=CODE,delta=2
global __ptext217
__ptext217:

;; *************** function _on *****************
;; Defined at:
;;		line 17 in file "D:\New folder\timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text217
	file	"D:\New folder\timer.c"
	line	17
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 6
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l2414:	
;timer.c: 18: RB0=0;RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	line	19
	
l2416:	
;timer.c: 19: PORTA=0X0E;
	movlw	(0Eh)
	movwf	(5)	;volatile
	line	20
	
l2418:	
;timer.c: 20: pulse();
	fcall	_pulse
	line	21
	
l1033:	
	return
	opt stack 0
GLOBAL	__end_of_on
	__end_of_on:
;; =============== function _on ends ============

	signat	_on,88
	global	_type
psect	text218,local,class=CODE,delta=2
global __ptext218
__ptext218:

;; *************** function _type *****************
;; Defined at:
;;		line 11 in file "D:\New folder\timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text218
	file	"D:\New folder\timer.c"
	line	11
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 6
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l2408:	
;timer.c: 12: RB0=0;RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	line	13
	
l2410:	
;timer.c: 13: PORTA=0X38;
	movlw	(038h)
	movwf	(5)	;volatile
	line	14
	
l2412:	
;timer.c: 14: pulse();
	fcall	_pulse
	line	15
	
l1030:	
	return
	opt stack 0
GLOBAL	__end_of_type
	__end_of_type:
;; =============== function _type ends ============

	signat	_type,88
	global	_pulse
psect	text219,local,class=CODE,delta=2
global __ptext219
__ptext219:

;; *************** function _pulse *****************
;; Defined at:
;;		line 4 in file "D:\New folder\timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_type
;;		_on
;;		_address
;;		_display
;; This function uses a non-reentrant model
;;
psect	text219
	file	"D:\New folder\timer.c"
	line	4
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 6
; Regs used in _pulse: [wreg]
	line	5
	
l2402:	
;timer.c: 5: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	6
	
l2404:	
;timer.c: 6: _delay((unsigned long)((10)*(400000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_pulse+0)+0,f
u2457:
	clrwdt
decfsz	(??_pulse+0)+0,f
	goto	u2457
	nop2	;nop
	clrwdt
opt asmopt_on

	line	7
	
l2406:	
;timer.c: 7: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	8
;timer.c: 8: _delay((unsigned long)((10)*(400000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_pulse+0)+0,f
u2467:
	clrwdt
decfsz	(??_pulse+0)+0,f
	goto	u2467
	nop2	;nop
	clrwdt
opt asmopt_on

	line	9
	
l1027:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	___awmod
psect	text220,local,class=CODE,delta=2
global __ptext220
__ptext220:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text220
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2368:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l2372
u2300:
	line	10
	
l2370:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2372
	line	12
	
l1266:	
	line	13
	
l2372:	
	btfss	(___awmod@divisor+1),7
	goto	u2311
	goto	u2310
u2311:
	goto	l2376
u2310:
	line	14
	
l2374:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2376
	
l1267:	
	line	15
	
l2376:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2321
	goto	u2320
u2321:
	goto	l2394
u2320:
	line	16
	
l2378:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2384
	
l1270:	
	line	18
	
l2380:	
	movlw	01h
	
u2335:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2335
	line	19
	
l2382:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2384
	line	20
	
l1269:	
	line	17
	
l2384:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l2380
u2340:
	goto	l2386
	
l1271:	
	goto	l2386
	line	21
	
l1272:	
	line	22
	
l2386:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2355
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2355:
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l2390
u2350:
	line	23
	
l2388:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2390
	
l1273:	
	line	24
	
l2390:	
	movlw	01h
	
u2365:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2365
	line	25
	
l2392:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l2386
u2370:
	goto	l2394
	
l1274:	
	goto	l2394
	line	26
	
l1268:	
	line	27
	
l2394:	
	movf	(___awmod@sign),w
	skipz
	goto	u2380
	goto	l2398
u2380:
	line	28
	
l2396:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2398
	
l1275:	
	line	29
	
l2398:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1276
	
l2400:	
	line	30
	
l1276:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text221,local,class=CODE,delta=2
global __ptext221
__ptext221:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text221
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2328:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2201
	goto	u2200
u2201:
	goto	l2332
u2200:
	line	11
	
l2330:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2332
	line	13
	
l1198:	
	line	14
	
l2332:	
	btfss	(___awdiv@dividend+1),7
	goto	u2211
	goto	u2210
u2211:
	goto	l2338
u2210:
	line	15
	
l2334:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2336:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2338
	line	17
	
l1199:	
	line	18
	
l2338:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2340:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2221
	goto	u2220
u2221:
	goto	l2360
u2220:
	line	20
	
l2342:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2348
	
l1202:	
	line	22
	
l2344:	
	movlw	01h
	
u2235:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2235
	line	23
	
l2346:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2348
	line	24
	
l1201:	
	line	21
	
l2348:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l2344
u2240:
	goto	l2350
	
l1203:	
	goto	l2350
	line	25
	
l1204:	
	line	26
	
l2350:	
	movlw	01h
	
u2255:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2255
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2265
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2265:
	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l2356
u2260:
	line	28
	
l2352:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2354:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2356
	line	30
	
l1205:	
	line	31
	
l2356:	
	movlw	01h
	
u2275:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2275
	line	32
	
l2358:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l2350
u2280:
	goto	l2360
	
l1206:	
	goto	l2360
	line	33
	
l1200:	
	line	34
	
l2360:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2290
	goto	l2364
u2290:
	line	35
	
l2362:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2364
	
l1207:	
	line	36
	
l2364:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1208
	
l2366:	
	line	37
	
l1208:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
psect	text222,local,class=CODE,delta=2
global __ptext222
__ptext222:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
