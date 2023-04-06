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
	FNCALL	_main,_display
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_display,_pulse
	FNROOT	_main
	global	_PORTA
psect	text118,local,class=CODE,delta=2
global __ptext118
__ptext118:
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
	file	"timer1 sec min.as"
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
	global	?_display
?_display:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	display@a
display@a:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	display@b
display@b:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??_display
??_display:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	ds	1
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
	global	main@gob
main@gob:	; 2 bytes @ 0x0
	ds	2
	global	main@sum
main@sum:	; 2 bytes @ 0x2
	ds	2
	global	main@sum2
main@sum2:	; 2 bytes @ 0x4
	ds	2
	global	main@gob2
main@gob2:	; 2 bytes @ 0x6
	ds	2
	global	main@gobi
main@gobi:	; 2 bytes @ 0x8
	ds	2
	global	main@sum1
main@sum1:	; 2 bytes @ 0xA
	ds	2
	global	main@gob1
main@gob1:	; 2 bytes @ 0xC
	ds	2
	global	main@sec
main@sec:	; 2 bytes @ 0xE
	ds	2
	global	main@count
main@count:	; 2 bytes @ 0x10
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9       9
;; BANK0           80     18      18
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
;; (0) _main                                                22    22      0    1006
;;                                              0 BANK0     18    18      0
;;                            _display
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _display                                              4     0      4      44
;;                                              0 COMMON     4     0      4
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) _pulse                                                0     0      0       0
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
;;BANK0               50     12      12       5       22.5%
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
;;		line 17 in file "D:\New folder\timer1 sec min.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2   16[BANK0 ] int 
;;  sec             2   14[BANK0 ] int 
;;  gob1            2   12[BANK0 ] int 
;;  sum1            2   10[BANK0 ] int 
;;  gobi            2    8[BANK0 ] int 
;;  gob2            2    6[BANK0 ] int 
;;  sum2            2    4[BANK0 ] int 
;;  sum             2    2[BANK0 ] int 
;;  gob             2    0[BANK0 ] int 
;;  sec2            2    0        int 
;;  sec1            2    0        int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      18       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      18       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_display
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\New folder\timer1 sec min.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l2448:	
;timer1 sec min.c: 18: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	19
;timer1 sec min.c: 19: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	20
;timer1 sec min.c: 20: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	21
;timer1 sec min.c: 21: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	22
;timer1 sec min.c: 22: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	23
;timer1 sec min.c: 23: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	24
;timer1 sec min.c: 24: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	25
;timer1 sec min.c: 25: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	26
	
l2450:	
;timer1 sec min.c: 26: display(0x38,0);
	movlw	low(038h)
	movwf	(?_display)
	movlw	high(038h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	27
	
l2452:	
;timer1 sec min.c: 27: display(0x0E,0);
	movlw	low(0Eh)
	movwf	(?_display)
	movlw	high(0Eh)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	28
	
l2454:	
;timer1 sec min.c: 28: OPTION_REG=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	29
	
l2456:	
;timer1 sec min.c: 29: int count=0,sum,sum1,sum2,sec,sec1,sec2,gob,gob1,gob2,gobi;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	30
	
l2458:	
;timer1 sec min.c: 30: T0IF=0;
	bcf	(90/8),(90)&7
	line	31
;timer1 sec min.c: 31: TMR0=131;
	movlw	(083h)
	movwf	(1)	;volatile
	goto	l2460
	line	32
;timer1 sec min.c: 32: while(1)
	
l1033:	
	line	34
	
l2460:	
;timer1 sec min.c: 33: {
;timer1 sec min.c: 34: if(T0IF==1)
	btfss	(90/8),(90)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l2514
u2400:
	line	36
	
l2462:	
;timer1 sec min.c: 35: {
;timer1 sec min.c: 36: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	37
	
l2464:	
;timer1 sec min.c: 37: sum=count/100;
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

	line	38
	
l2466:	
;timer1 sec min.c: 38: sum1=(count%100)/10;
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

	
l2468:	
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

	line	39
	
l2470:	
;timer1 sec min.c: 39: sum2=count%10;
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

	line	40
	
l2472:	
;timer1 sec min.c: 40: display(0x80,0);
	movlw	low(080h)
	movwf	(?_display)
	movlw	high(080h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	41
	
l2474:	
;timer1 sec min.c: 41: display(sum+0x30,1);
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
	line	42
	
l2476:	
;timer1 sec min.c: 42: display(0x81,0);
	movlw	low(081h)
	movwf	(?_display)
	movlw	high(081h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	43
	
l2478:	
;timer1 sec min.c: 43: display(sum1+0x30,1);
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
	line	44
	
l2480:	
;timer1 sec min.c: 44: display(0x82,0);
	movlw	low(082h)
	movwf	(?_display)
	movlw	high(082h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	45
	
l2482:	
;timer1 sec min.c: 45: display(sum2+0x30,1);
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
	line	46
;timer1 sec min.c: 46: if(count==125)
	movlw	07Dh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@count),w
	iorwf	(main@count+1),w
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l2504
u2410:
	line	49
	
l2484:	
;timer1 sec min.c: 47: {
;timer1 sec min.c: 49: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	50
	
l2486:	
;timer1 sec min.c: 50: sec++;
	movlw	low(01h)
	addwf	(main@sec),f
	skipnc
	incf	(main@sec+1),f
	movlw	high(01h)
	addwf	(main@sec+1),f
	line	51
	
l2488:	
;timer1 sec min.c: 51: gob=sec/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(main@sec+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@sec),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@gob+1)
	addwf	(main@gob+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@gob)
	addwf	(main@gob)

	line	52
	
l2490:	
;timer1 sec min.c: 52: gob1=(sec%100)/10;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(main@sec+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@sec),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@gob1+1)
	addwf	(main@gob1+1)
	movf	(0+(?___awmod)),w
	clrf	(main@gob1)
	addwf	(main@gob1)

	
l2492:	
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@gob1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@gob1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@gob1+1)
	addwf	(main@gob1+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@gob1)
	addwf	(main@gob1)

	line	53
	
l2494:	
;timer1 sec min.c: 53: gob2=sec%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@sec+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@sec),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@gob2+1)
	addwf	(main@gob2+1)
	movf	(0+(?___awmod)),w
	clrf	(main@gob2)
	addwf	(main@gob2)

	line	54
	
l2496:	
;timer1 sec min.c: 54: display(0x88,0);
	movlw	low(088h)
	movwf	(?_display)
	movlw	high(088h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	55
	
l2498:	
;timer1 sec min.c: 55: display(gob1+0x30,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@gob1),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(main@gob1+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	56
	
l2500:	
;timer1 sec min.c: 56: display(0x89,0);
	movlw	low(089h)
	movwf	(?_display)
	movlw	high(089h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	57
	
l2502:	
;timer1 sec min.c: 57: display(gob2+0x30,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@gob2),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(main@gob2+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	goto	l2504
	line	58
	
l1035:	
	line	59
	
l2504:	
;timer1 sec min.c: 58: }
;timer1 sec min.c: 59: if(sec==60)
	movlw	03Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@sec),w
	iorwf	(main@sec+1),w
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l2514
u2420:
	line	61
	
l2506:	
;timer1 sec min.c: 60: {
;timer1 sec min.c: 61: gobi++;
	movlw	low(01h)
	addwf	(main@gobi),f
	skipnc
	incf	(main@gobi+1),f
	movlw	high(01h)
	addwf	(main@gobi+1),f
	line	62
	
l2508:	
;timer1 sec min.c: 62: display(0x8d,0);
	movlw	low(08Dh)
	movwf	(?_display)
	movlw	high(08Dh)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	63
	
l2510:	
;timer1 sec min.c: 63: display(gobi+0x30,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@gobi),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(main@gobi+1),w
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
	
l2512:	
;timer1 sec min.c: 64: sec=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@sec)
	clrf	(main@sec+1)
	goto	l2514
	line	65
	
l1036:	
	goto	l2514
	line	66
	
l1034:	
	line	67
	
l2514:	
;timer1 sec min.c: 65: }
;timer1 sec min.c: 66: }
;timer1 sec min.c: 67: T0IF==0;
	goto	l2460
	line	68
	
l1037:	
	line	32
	goto	l2460
	
l1038:	
	line	69
	
l1039:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_display
psect	text119,local,class=CODE,delta=2
global __ptext119
__ptext119:

;; *************** function _display *****************
;; Defined at:
;;		line 11 in file "D:\New folder\timer1 sec min.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[COMMON] int 
;;  b               2    2[COMMON] int 
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
psect	text119
	file	"D:\New folder\timer1 sec min.c"
	line	11
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 6
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l2442:	
;timer1 sec min.c: 12: RB0=b;RB1=0;
	btfsc	(display@b),0
	goto	u2381
	goto	u2380
	
u2381:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	goto	u2394
u2380:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
u2394:
	bcf	(49/8),(49)&7
	line	13
	
l2444:	
;timer1 sec min.c: 13: PORTA=a;
	movf	(display@a),w
	movwf	(5)	;volatile
	line	14
	
l2446:	
;timer1 sec min.c: 14: pulse();
	fcall	_pulse
	line	15
	
l1030:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,8312
	global	_pulse
psect	text120,local,class=CODE,delta=2
global __ptext120
__ptext120:

;; *************** function _pulse *****************
;; Defined at:
;;		line 4 in file "D:\New folder\timer1 sec min.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display
;; This function uses a non-reentrant model
;;
psect	text120
	file	"D:\New folder\timer1 sec min.c"
	line	4
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 6
; Regs used in _pulse: []
	line	5
	
l2440:	
;timer1 sec min.c: 5: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	6
;timer1 sec min.c: 6: _delay((unsigned long)((50)*(400000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	7
;timer1 sec min.c: 7: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	8
;timer1 sec min.c: 8: _delay((unsigned long)((50)*(400000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
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
psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:

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
psect	text121
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2406:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2291
	goto	u2290
u2291:
	goto	l2410
u2290:
	line	10
	
l2408:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2410
	line	12
	
l1256:	
	line	13
	
l2410:	
	btfss	(___awmod@divisor+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l2414
u2300:
	line	14
	
l2412:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2414
	
l1257:	
	line	15
	
l2414:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2311
	goto	u2310
u2311:
	goto	l2432
u2310:
	line	16
	
l2416:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2422
	
l1260:	
	line	18
	
l2418:	
	movlw	01h
	
u2325:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2325
	line	19
	
l2420:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2422
	line	20
	
l1259:	
	line	17
	
l2422:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l2418
u2330:
	goto	l2424
	
l1261:	
	goto	l2424
	line	21
	
l1262:	
	line	22
	
l2424:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2345
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2345:
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l2428
u2340:
	line	23
	
l2426:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2428
	
l1263:	
	line	24
	
l2428:	
	movlw	01h
	
u2355:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2355
	line	25
	
l2430:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l2424
u2360:
	goto	l2432
	
l1264:	
	goto	l2432
	line	26
	
l1258:	
	line	27
	
l2432:	
	movf	(___awmod@sign),w
	skipz
	goto	u2370
	goto	l2436
u2370:
	line	28
	
l2434:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2436
	
l1265:	
	line	29
	
l2436:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1266
	
l2438:	
	line	30
	
l1266:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text122,local,class=CODE,delta=2
global __ptext122
__ptext122:

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
psect	text122
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2366:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2191
	goto	u2190
u2191:
	goto	l2370
u2190:
	line	11
	
l2368:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2370
	line	13
	
l1188:	
	line	14
	
l2370:	
	btfss	(___awdiv@dividend+1),7
	goto	u2201
	goto	u2200
u2201:
	goto	l2376
u2200:
	line	15
	
l2372:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2374:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2376
	line	17
	
l1189:	
	line	18
	
l2376:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2378:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2211
	goto	u2210
u2211:
	goto	l2398
u2210:
	line	20
	
l2380:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2386
	
l1192:	
	line	22
	
l2382:	
	movlw	01h
	
u2225:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2225
	line	23
	
l2384:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2386
	line	24
	
l1191:	
	line	21
	
l2386:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l2382
u2230:
	goto	l2388
	
l1193:	
	goto	l2388
	line	25
	
l1194:	
	line	26
	
l2388:	
	movlw	01h
	
u2245:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2245
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2255
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2255:
	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l2394
u2250:
	line	28
	
l2390:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2392:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2394
	line	30
	
l1195:	
	line	31
	
l2394:	
	movlw	01h
	
u2265:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2265
	line	32
	
l2396:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2271
	goto	u2270
u2271:
	goto	l2388
u2270:
	goto	l2398
	
l1196:	
	goto	l2398
	line	33
	
l1190:	
	line	34
	
l2398:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2280
	goto	l2402
u2280:
	line	35
	
l2400:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2402
	
l1197:	
	line	36
	
l2402:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1198
	
l2404:	
	line	37
	
l1198:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
psect	text123,local,class=CODE,delta=2
global __ptext123
__ptext123:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
