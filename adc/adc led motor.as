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
	FNCALL	_main,_count
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftmul
	FNCALL	_main,___ftdiv
	FNCALL	_main,___fttol
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_count,___awdiv
	FNCALL	_count,___awmod
	FNCALL	_count,_display
	FNCALL	_display,_pulse
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNROOT	_main
	global	_DV
	global	_a
	global	_b
	global	_c
	global	_d
	global	_high
	global	_low
	global	_ADCON0
psect	text242,local,class=CODE,delta=2
global __ptext242
__ptext242:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_GO
_GO	set	249
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"adc led motor.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_DV:
       ds      2

_a:
       ds      2

_b:
       ds      2

_c:
       ds      2

_d:
       ds      2

_high:
       ds      2

_low:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
	clrf	((__pbssBANK0)+12)&07Fh
	clrf	((__pbssBANK0)+13)&07Fh
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
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
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	display@b
display@b:	; 2 bytes @ 0x3
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
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
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	1
	global	?_count
?_count:	; 0 bytes @ 0x9
	global	count@i
count@i:	; 2 bytes @ 0x9
	ds	2
	global	??_count
??_count:	; 0 bytes @ 0xB
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___fttol
??___fttol:	; 0 bytes @ 0x0
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x4
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x5
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x9
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xA
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xA
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xD
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x10
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x14
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x15
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x18
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x19
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x1A
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x1A
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x1D
	ds	3
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x20
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x24
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x25
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x28
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x29
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x2A
	ds	2
	global	main@z
main@z:	; 3 bytes @ 0x2C
	ds	3
	global	main@a
main@a:	; 2 bytes @ 0x2F
	ds	2
	global	main@c
main@c:	; 2 bytes @ 0x31
	ds	2
	global	main@b
main@b:	; 2 bytes @ 0x33
	ds	2
	global	main@d
main@d:	; 2 bytes @ 0x35
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 14, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     55      69
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awtoft
;;   _count->___awdiv
;;   _display->_pulse
;;   ___awtoft->___ftpack
;;   ___ftmul->___awtoft
;;   ___ftdiv->___awtoft
;;   ___fttol->___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___ftdiv
;;   ___ftmul->___fttol
;;   ___ftdiv->___ftmul
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                13    13      0    3126
;;                                             42 BANK0     13    13      0
;;                            _display
;;                              _count
;;                           ___awtoft
;;                            ___ftmul
;;                            ___ftdiv
;;                            ___fttol
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _count                                                2     0      2     728
;;                                              9 COMMON     2     0      2
;;                            ___awdiv
;;                            ___awmod
;;                            _display
;; ---------------------------------------------------------------------------------
;; (2) _display                                              4     0      4      44
;;                                              1 COMMON     4     0      4
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) ___awtoft                                             6     3      3     300
;;                                              8 COMMON     6     3      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___ftmul                                             16    10      6     535
;;                                             10 BANK0     16    10      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftdiv                                             16    10      6     489
;;                                             26 BANK0     16    10      6
;;                           ___ftpack
;;                            ___ftmul (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _pulse                                                1     1      0       0
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             14    10      4     252
;;                                              8 COMMON     4     0      4
;;                                              0 BANK0     10    10      0
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _display
;;     _pulse
;;   _count
;;     ___awdiv
;;     ___awmod
;;     _display
;;       _pulse
;;   ___awtoft
;;     ___ftpack
;;   ___ftmul
;;     ___ftpack
;;     ___awtoft (ARG)
;;       ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;   ___ftdiv
;;     ___ftpack
;;     ___ftmul (ARG)
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___awtoft (ARG)
;;       ___ftpack
;;   ___fttol
;;     ___ftpack (ARG)
;;   ___awdiv
;;   ___awmod
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      53       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     37      45       5       86.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      56      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 34 in file "D:\New folder\adc led motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  z               3   44[BANK0 ] float 
;;  d               2   53[BANK0 ] int 
;;  b               2   51[BANK0 ] int 
;;  c               2   49[BANK0 ] int 
;;  a               2   47[BANK0 ] int 
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
;;      Locals:         0      11       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_display
;;		_count
;;		___awtoft
;;		___ftmul
;;		___ftdiv
;;		___fttol
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\New folder\adc led motor.c"
	line	34
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	35
	
l2948:	
;adc led motor.c: 35: TRISA=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	36
	
l2950:	
;adc led motor.c: 36: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	37
	
l2952:	
;adc led motor.c: 37: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	38
	
l2954:	
;adc led motor.c: 38: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	39
	
l2956:	
;adc led motor.c: 39: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	40
	
l2958:	
;adc led motor.c: 40: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	41
	
l2960:	
;adc led motor.c: 41: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	42
	
l2962:	
;adc led motor.c: 42: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	43
	
l2964:	
;adc led motor.c: 43: ANSEL=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	44
;adc led motor.c: 44: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	goto	l2966
	line	45
;adc led motor.c: 45: while(1)
	
l1050:	
	line	47
	
l2966:	
;adc led motor.c: 46: {
;adc led motor.c: 47: ADCON0=0X81;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	48
	
l2968:	
;adc led motor.c: 48: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	49
	
l2970:	
;adc led motor.c: 49: GO=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	50
	
l2972:	
;adc led motor.c: 50: display(0x38,0);
	movlw	low(038h)
	movwf	(?_display)
	movlw	high(038h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	51
	
l2974:	
;adc led motor.c: 51: display(0x0e,0);
	movlw	low(0Eh)
	movwf	(?_display)
	movlw	high(0Eh)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	52
;adc led motor.c: 52: while(GO);
	goto	l1051
	
l1052:	
	
l1051:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(249/8),(249)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l1051
u3240:
	goto	l2976
	
l1053:	
	line	53
	
l2976:	
;adc led motor.c: 53: high=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(_high)
	movf	1+(??_main+0)+0,w
	movwf	(_high+1)
	line	54
;adc led motor.c: 54: low=ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(_low)
	movf	1+(??_main+0)+0,w
	movwf	(_low+1)
	line	55
	
l2978:	
;adc led motor.c: 55: if(high==0)
	movf	((_high+1)),w
	iorwf	((_high)),w
	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l2982
u3250:
	line	57
	
l2980:	
;adc led motor.c: 56: {
;adc led motor.c: 57: DV=low;
	movf	(_low+1),w
	clrf	(_DV+1)
	addwf	(_DV+1)
	movf	(_low),w
	clrf	(_DV)
	addwf	(_DV)

	goto	l2982
	line	58
	
l1054:	
	line	59
	
l2982:	
;adc led motor.c: 58: }
;adc led motor.c: 59: if(high==1)
	movlw	01h
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u3261
	goto	u3260
u3261:
	goto	l2988
u3260:
	line	61
	
l2984:	
;adc led motor.c: 60: {
;adc led motor.c: 61: DV=low+256;
	movf	(_low),w
	addlw	low(0100h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(_DV)
	line	62
	
l2986:	
;adc led motor.c: 62: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	goto	l2988
	line	63
	
l1055:	
	line	64
	
l2988:	
;adc led motor.c: 63: }
;adc led motor.c: 64: if(high==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u3271
	goto	u3270
u3271:
	goto	l2994
u3270:
	line	66
	
l2990:	
;adc led motor.c: 65: {
;adc led motor.c: 66: DV=low+512;
	movf	(_low),w
	addlw	low(0200h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0200h)
	movwf	1+(_DV)
	line	67
	
l2992:	
;adc led motor.c: 67: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	goto	l2994
	line	68
	
l1056:	
	line	69
	
l2994:	
;adc led motor.c: 68: }
;adc led motor.c: 69: if( high==3)
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u3281
	goto	u3280
u3281:
	goto	l3000
u3280:
	line	71
	
l2996:	
;adc led motor.c: 70: {
;adc led motor.c: 71: DV=low+768;
	movf	(_low),w
	addlw	low(0300h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0300h)
	movwf	1+(_DV)
	line	72
	
l2998:	
;adc led motor.c: 72: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	goto	l3000
	line	73
	
l1057:	
	line	75
	
l3000:	
;adc led motor.c: 73: }
;adc led motor.c: 74: int a,b,c,d;
;adc led motor.c: 75: display(0xc0,0);
	movlw	low(0C0h)
	movwf	(?_display)
	movlw	high(0C0h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	77
	
l3002:	
;adc led motor.c: 76: float z;
;adc led motor.c: 77: z=(DV*5.0)/1023.0;
	movlw	0xc0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movlw	0x7f
	movwf	(?___ftdiv+1)
	movlw	0x44
	movwf	(?___ftdiv+2)
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x40
	movwf	(?___ftmul+2)
	movf	(_DV+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(_DV),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(main@z)
	movf	(1+(?___ftdiv)),w
	movwf	(main@z+1)
	movf	(2+(?___ftdiv)),w
	movwf	(main@z+2)
	line	78
	
l3004:	
;adc led motor.c: 78: d=z*100;
	movf	(main@z),w
	movwf	0+(?___ftmul)+03h
	movf	(main@z+1),w
	movwf	1+(?___ftmul)+03h
	movf	(main@z+2),w
	movwf	2+(?___ftmul)+03h
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xc8
	movwf	(?___ftmul+1)
	movlw	0x42
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@d+1)
	addwf	(main@d+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@d)
	addwf	(main@d)

	line	79
	
l3006:	
;adc led motor.c: 79: a=d/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(main@d+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@d),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@a)
	addwf	(main@a)

	line	80
	
l3008:	
;adc led motor.c: 80: b=(d%100)/10;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(main@d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@b+1)
	addwf	(main@b+1)
	movf	(0+(?___awmod)),w
	clrf	(main@b)
	addwf	(main@b)

	
l3010:	
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@b+1)
	addwf	(main@b+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@b)
	addwf	(main@b)

	line	81
	
l3012:	
;adc led motor.c: 81: c=d%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@c+1)
	addwf	(main@c+1)
	movf	(0+(?___awmod)),w
	clrf	(main@c)
	addwf	(main@c)

	line	82
	
l3014:	
;adc led motor.c: 82: display(0x30+a,1);
	movf	(main@a),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(main@a+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	83
	
l3016:	
;adc led motor.c: 83: display(0x2e,1);
	movlw	low(02Eh)
	movwf	(?_display)
	movlw	high(02Eh)
	movwf	((?_display))+1
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	84
	
l3018:	
;adc led motor.c: 84: display(0x30+b,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@b),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(main@b+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	85
	
l3020:	
;adc led motor.c: 85: display(0x30+c,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@c),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(main@c+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	86
	
l3022:	
;adc led motor.c: 86: display(0x20,1);
	movlw	low(020h)
	movwf	(?_display)
	movlw	high(020h)
	movwf	((?_display))+1
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	87
	
l3024:	
;adc led motor.c: 87: display(0x56,1);
	movlw	low(056h)
	movwf	(?_display)
	movlw	high(056h)
	movwf	((?_display))+1
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	89
	
l3026:	
;adc led motor.c: 89: if(DV>=307&&DV<511)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0133h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3295
	movlw	low(0133h)
	subwf	(_DV),w
u3295:

	skipc
	goto	u3291
	goto	u3290
u3291:
	goto	l3036
u3290:
	
l3028:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01FFh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3305
	movlw	low(01FFh)
	subwf	(_DV),w
u3305:

	skipnc
	goto	u3301
	goto	u3300
u3301:
	goto	l3036
u3300:
	line	91
	
l3030:	
;adc led motor.c: 90: {
;adc led motor.c: 91: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	92
	
l3032:	
;adc led motor.c: 92: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u3367:
	decfsz	((??_main+0)+0),f
	goto	u3367
	decfsz	((??_main+0)+0+1),f
	goto	u3367
	nop2
opt asmopt_on

	line	93
	
l3034:	
;adc led motor.c: 93: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	94
;adc led motor.c: 94: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u3377:
	decfsz	((??_main+0)+0),f
	goto	u3377
	decfsz	((??_main+0)+0+1),f
	goto	u3377
	nop2
opt asmopt_on

	goto	l3036
	line	95
	
l1058:	
	line	96
	
l3036:	
;adc led motor.c: 95: }
;adc led motor.c: 96: if(DV>717)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02CEh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3315
	movlw	low(02CEh)
	subwf	(_DV),w
u3315:

	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l3040
u3310:
	line	98
	
l3038:	
;adc led motor.c: 97: {
;adc led motor.c: 98: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	goto	l3040
	line	99
	
l1059:	
	line	100
	
l3040:	
;adc led motor.c: 99: }
;adc led motor.c: 100: if(DV>=512&&DV<=920)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0200h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3325
	movlw	low(0200h)
	subwf	(_DV),w
u3325:

	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l3046
u3320:
	
l3042:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0399h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3335
	movlw	low(0399h)
	subwf	(_DV),w
u3335:

	skipnc
	goto	u3331
	goto	u3330
u3331:
	goto	l3046
u3330:
	line	102
	
l3044:	
;adc led motor.c: 101: {
;adc led motor.c: 102: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	103
;adc led motor.c: 103: RB1=0;
	bcf	(49/8),(49)&7
	goto	l3046
	line	104
	
l1060:	
	line	105
	
l3046:	
;adc led motor.c: 104: }
;adc led motor.c: 105: if(DV>=921)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0399h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3345
	movlw	low(0399h)
	subwf	(_DV),w
u3345:

	skipc
	goto	u3341
	goto	u3340
u3341:
	goto	l3050
u3340:
	line	107
	
l3048:	
;adc led motor.c: 106: {
;adc led motor.c: 107: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	108
;adc led motor.c: 108: RB2=0;
	bcf	(50/8),(50)&7
	goto	l3050
	line	109
	
l1061:	
	line	110
	
l3050:	
;adc led motor.c: 109: }
;adc led motor.c: 110: if(DV==1023)
	movlw	high(03FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_DV+1),w
	skipz
	goto	u3355
	movlw	low(03FFh)
	xorwf	(_DV),w
u3355:

	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l2966
u3350:
	line	112
	
l3052:	
;adc led motor.c: 111: {
;adc led motor.c: 112: RB1=0;
	bcf	(49/8),(49)&7
	line	113
;adc led motor.c: 113: RB2=0;
	bcf	(50/8),(50)&7
	line	114
;adc led motor.c: 114: RB0=0;
	bcf	(48/8),(48)&7
	goto	l2966
	line	115
	
l1062:	
	goto	l2966
	line	116
	
l1063:	
	line	45
	goto	l2966
	
l1064:	
	line	117
	
l1065:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_count
psect	text243,local,class=CODE,delta=2
global __ptext243
__ptext243:

;; *************** function _count *****************
;; Defined at:
;;		line 19 in file "D:\New folder\adc led motor.c"
;; Parameters:    Size  Location     Type
;;  i               2    9[COMMON] int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_display
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text243
	file	"D:\New folder\adc led motor.c"
	line	19
	global	__size_of_count
	__size_of_count	equ	__end_of_count-_count
	
_count:	
	opt	stack 5
; Regs used in _count: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l2946:	
;adc led motor.c: 20: a=i/1000;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(count@i+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(count@i),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	21
;adc led motor.c: 21: b=((i%1000)/100);
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(count@i+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(count@i),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___awmod)),w
	clrf	(_b)
	addwf	(_b)

	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___awdiv)),w
	clrf	(_b)
	addwf	(_b)

	line	22
;adc led motor.c: 22: c=((i%100)/10);
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(count@i+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(count@i),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c+1)
	addwf	(_c+1)
	movf	(0+(?___awmod)),w
	clrf	(_c)
	addwf	(_c)

	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_c+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_c),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c+1)
	addwf	(_c+1)
	movf	(0+(?___awdiv)),w
	clrf	(_c)
	addwf	(_c)

	line	23
;adc led motor.c: 23: d=i%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(count@i+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(count@i),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d+1)
	addwf	(_d+1)
	movf	(0+(?___awmod)),w
	clrf	(_d)
	addwf	(_d)

	line	24
;adc led motor.c: 24: display(0x80,0);
	movlw	low(080h)
	movwf	(?_display)
	movlw	high(080h)
	movwf	((?_display))+1
	movlw	low(0)
	movwf	0+(?_display)+02h
	movlw	high(0)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	25
;adc led motor.c: 25: display(0x30+a,01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(_a+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	26
;adc led motor.c: 26: display(0x30+b,01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_b),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(_b+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	27
;adc led motor.c: 27: display(0x30+c,01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(_c+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	28
;adc led motor.c: 28: display(0x30+d,01);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_d),w
	addlw	low(030h)
	movwf	(?_display)
	movf	(_d+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_display)
	movlw	low(01h)
	movwf	0+(?_display)+02h
	movlw	high(01h)
	movwf	(0+(?_display)+02h)+1
	fcall	_display
	line	30
	
l1047:	
	return
	opt stack 0
GLOBAL	__end_of_count
	__end_of_count:
;; =============== function _count ends ============

	signat	_count,4216
	global	_display
psect	text244,local,class=CODE,delta=2
global __ptext244
__ptext244:

;; *************** function _display *****************
;; Defined at:
;;		line 13 in file "D:\New folder\adc led motor.c"
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
;;		_count
;;		_main
;; This function uses a non-reentrant model
;;
psect	text244
	file	"D:\New folder\adc led motor.c"
	line	13
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l2940:	
;adc led motor.c: 14: RE0=b;RE1=0;
	btfsc	(display@b),0
	goto	u3221
	goto	u3220
	
u3221:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u3234
u3220:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u3234:
	bcf	(73/8),(73)&7
	line	15
	
l2942:	
;adc led motor.c: 15: PORTD=a;
	movf	(display@a),w
	movwf	(8)	;volatile
	line	16
	
l2944:	
;adc led motor.c: 16: pulse();
	fcall	_pulse
	line	17
	
l1044:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,8312
	global	___awtoft
psect	text245,local,class=CODE,delta=2
global __ptext245
__ptext245:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text245
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 6
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l2932:	
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u3211
	goto	u3210
u3211:
	goto	l2936
u3210:
	line	38
	
l2934:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l2936
	line	40
	
l1210:	
	line	41
	
l2936:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l1211
	
l2938:	
	line	42
	
l1211:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text246,local,class=CODE,delta=2
global __ptext246
__ptext246:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   10[BANK0 ] float 
;;  f2              3   13[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   21[BANK0 ] unsigned um
;;  sign            1   25[BANK0 ] unsigned char 
;;  cntr            1   24[BANK0 ] unsigned char 
;;  exp             1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text246
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 6
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l2882:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l2888
u3070:
	line	57
	
l2884:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1173
	
l2886:	
	goto	l1173
	
l1172:	
	line	58
	
l2888:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u3081
	goto	u3080
u3081:
	goto	l2894
u3080:
	line	59
	
l2890:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1173
	
l2892:	
	goto	l1173
	
l1174:	
	line	60
	
l2894:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3095:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3090:
	addlw	-1
	skipz
	goto	u3095
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3105:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3100:
	addlw	-1
	skipz
	goto	u3105
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l2896:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l2898:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l2900:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l2902:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l2904:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2906
	line	70
	
l1175:	
	line	71
	
l2906:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l2910
u3110:
	line	72
	
l2908:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3121
	addwf	(___ftmul@f3_as_product+1),f
u3121:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3122
	addwf	(___ftmul@f3_as_product+2),f
u3122:

	goto	l2910
	
l1176:	
	line	73
	
l2910:	
	movlw	01h
u3135:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3135

	line	74
	
l2912:	
	movlw	01h
u3145:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3145
	line	75
	
l2914:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l2906
u3150:
	goto	l2916
	
l1177:	
	line	76
	
l2916:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2918
	line	77
	
l1178:	
	line	78
	
l2918:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l2922
u3160:
	line	79
	
l2920:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3171
	addwf	(___ftmul@f3_as_product+1),f
u3171:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3172
	addwf	(___ftmul@f3_as_product+2),f
u3172:

	goto	l2922
	
l1179:	
	line	80
	
l2922:	
	movlw	01h
u3185:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3185

	line	81
	
l2924:	
	movlw	01h
u3195:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3195

	line	82
	
l2926:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l2918
u3200:
	goto	l2928
	
l1180:	
	line	83
	
l2928:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l1173
	
l2930:	
	line	84
	
l1173:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text247,local,class=CODE,delta=2
global __ptext247
__ptext247:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   26[BANK0 ] float 
;;  f1              3   29[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   37[BANK0 ] float 
;;  sign            1   41[BANK0 ] unsigned char 
;;  exp             1   40[BANK0 ] unsigned char 
;;  cntr            1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text247
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 6
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l2840:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l2846
u2990:
	line	56
	
l2842:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1163
	
l2844:	
	goto	l1163
	
l1162:	
	line	57
	
l2846:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u3001
	goto	u3000
u3001:
	goto	l2852
u3000:
	line	58
	
l2848:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1163
	
l2850:	
	goto	l1163
	
l1164:	
	line	59
	
l2852:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l2854:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l2856:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3015:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3010:
	addlw	-1
	skipz
	goto	u3015
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l2858:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3025:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3020:
	addlw	-1
	skipz
	goto	u3025
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l2860:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l2862:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l2864:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l2866
	line	69
	
l1165:	
	line	70
	
l2866:	
	movlw	01h
u3035:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3035
	line	71
	
l2868:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3045
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3045
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3045:
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l2874
u3040:
	line	72
	
l2870:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l2872:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l2874
	line	74
	
l1166:	
	line	75
	
l2874:	
	movlw	01h
u3055:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3055
	line	76
	
l2876:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l2866
u3060:
	goto	l2878
	
l1167:	
	line	77
	
l2878:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l1163
	
l2880:	
	line	78
	
l1163:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	_pulse
psect	text248,local,class=CODE,delta=2
global __ptext248
__ptext248:

;; *************** function _pulse *****************
;; Defined at:
;;		line 6 in file "D:\New folder\adc led motor.c"
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
;;		_display
;; This function uses a non-reentrant model
;;
psect	text248
	file	"D:\New folder\adc led motor.c"
	line	6
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg]
	line	7
	
l2834:	
;adc led motor.c: 7: RE2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	line	8
	
l2836:	
;adc led motor.c: 8: _delay((unsigned long)((400)*(4000000/4000000.0)));
	opt asmopt_off
movlw	133
movwf	(??_pulse+0)+0,f
u3387:
decfsz	(??_pulse+0)+0,f
	goto	u3387
opt asmopt_on

	line	9
	
l2838:	
;adc led motor.c: 9: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	10
;adc led motor.c: 10: _delay((unsigned long)((400)*(4000000/4000000.0)));
	opt asmopt_off
movlw	133
movwf	(??_pulse+0)+0,f
u3397:
decfsz	(??_pulse+0)+0,f
	goto	u3397
opt asmopt_on

	line	11
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	___awmod
psect	text249,local,class=CODE,delta=2
global __ptext249
__ptext249:

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
;;		_count
;;		_main
;; This function uses a non-reentrant model
;;
psect	text249
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2754:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2841
	goto	u2840
u2841:
	goto	l2758
u2840:
	line	10
	
l2756:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2758
	line	12
	
l1282:	
	line	13
	
l2758:	
	btfss	(___awmod@divisor+1),7
	goto	u2851
	goto	u2850
u2851:
	goto	l2762
u2850:
	line	14
	
l2760:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2762
	
l1283:	
	line	15
	
l2762:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2861
	goto	u2860
u2861:
	goto	l2780
u2860:
	line	16
	
l2764:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2770
	
l1286:	
	line	18
	
l2766:	
	movlw	01h
	
u2875:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2875
	line	19
	
l2768:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2770
	line	20
	
l1285:	
	line	17
	
l2770:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l2766
u2880:
	goto	l2772
	
l1287:	
	goto	l2772
	line	21
	
l1288:	
	line	22
	
l2772:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2895
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2895:
	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l2776
u2890:
	line	23
	
l2774:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2776
	
l1289:	
	line	24
	
l2776:	
	movlw	01h
	
u2905:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2905
	line	25
	
l2778:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l2772
u2910:
	goto	l2780
	
l1290:	
	goto	l2780
	line	26
	
l1284:	
	line	27
	
l2780:	
	movf	(___awmod@sign),w
	skipz
	goto	u2920
	goto	l2784
u2920:
	line	28
	
l2782:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2784
	
l1291:	
	line	29
	
l2784:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1292
	
l2786:	
	line	30
	
l1292:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text250,local,class=CODE,delta=2
global __ptext250
__ptext250:

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
;;		_count
;;		_main
;; This function uses a non-reentrant model
;;
psect	text250
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2714:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2741
	goto	u2740
u2741:
	goto	l2718
u2740:
	line	11
	
l2716:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2718
	line	13
	
l1214:	
	line	14
	
l2718:	
	btfss	(___awdiv@dividend+1),7
	goto	u2751
	goto	u2750
u2751:
	goto	l2724
u2750:
	line	15
	
l2720:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2722:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2724
	line	17
	
l1215:	
	line	18
	
l2724:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2726:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2761
	goto	u2760
u2761:
	goto	l2746
u2760:
	line	20
	
l2728:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2734
	
l1218:	
	line	22
	
l2730:	
	movlw	01h
	
u2775:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2775
	line	23
	
l2732:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2734
	line	24
	
l1217:	
	line	21
	
l2734:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l2730
u2780:
	goto	l2736
	
l1219:	
	goto	l2736
	line	25
	
l1220:	
	line	26
	
l2736:	
	movlw	01h
	
u2795:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2795
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2805
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2805:
	skipc
	goto	u2801
	goto	u2800
u2801:
	goto	l2742
u2800:
	line	28
	
l2738:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2740:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2742
	line	30
	
l1221:	
	line	31
	
l2742:	
	movlw	01h
	
u2815:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2815
	line	32
	
l2744:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l2736
u2820:
	goto	l2746
	
l1222:	
	goto	l2746
	line	33
	
l1216:	
	line	34
	
l2746:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2830
	goto	l2750
u2830:
	line	35
	
l2748:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2750
	
l1223:	
	line	36
	
l2750:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1224
	
l2752:	
	line	37
	
l1224:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text251,local,class=CODE,delta=2
global __ptext251
__ptext251:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    5[BANK0 ] unsigned long 
;;  exp1            1    9[BANK0 ] unsigned char 
;;  sign1           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text251
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 7
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2658:	
	movf	(___fttol@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2631
	goto	u2630
u2631:
	goto	l2664
u2630:
	line	50
	
l2660:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1184
	
l2662:	
	goto	l1184
	
l1183:	
	line	51
	
l2664:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2645:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2640:
	addlw	-1
	skipz
	goto	u2645
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2666:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2668:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2670:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2672:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2674:	
	btfss	(___fttol@exp1),7
	goto	u2651
	goto	u2650
u2651:
	goto	l2684
u2650:
	line	57
	
l2676:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2661
	goto	u2660
u2661:
	goto	l2682
u2660:
	line	58
	
l2678:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1184
	
l2680:	
	goto	l1184
	
l1186:	
	goto	l2682
	line	59
	
l1187:	
	line	60
	
l2682:	
	movlw	01h
u2675:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2675

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l2682
u2680:
	goto	l2694
	
l1188:	
	line	62
	goto	l2694
	
l1185:	
	line	63
	
l2684:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l2692
u2690:
	line	64
	
l2686:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1184
	
l2688:	
	goto	l1184
	
l1190:	
	line	65
	goto	l2692
	
l1192:	
	line	66
	
l2690:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2705:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2705
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l2692
	line	68
	
l1191:	
	line	65
	
l2692:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2711
	goto	u2710
u2711:
	goto	l2690
u2710:
	goto	l2694
	
l1193:	
	goto	l2694
	line	69
	
l1189:	
	line	70
	
l2694:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2720
	goto	l2698
u2720:
	line	71
	
l2696:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l2698
	
l1194:	
	line	72
	
l2698:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l1184
	
l2700:	
	line	73
	
l1184:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text252,local,class=CODE,delta=2
global __ptext252
__ptext252:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;;		___ftadd
;;		___lbtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text252
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l2622:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2520
	goto	l2626
u2520:
	
l2624:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2531
	goto	u2530
u2531:
	goto	l2632
u2530:
	goto	l2626
	
l1408:	
	line	65
	
l2626:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l1409
	
l2628:	
	goto	l1409
	
l1406:	
	line	66
	goto	l2632
	
l1411:	
	line	67
	
l2630:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2545:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2545

	goto	l2632
	line	69
	
l1410:	
	line	66
	
l2632:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l2630
u2550:
	goto	l1413
	
l1412:	
	line	70
	goto	l1413
	
l1414:	
	line	71
	
l2634:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l2636:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l2638:	
	movlw	01h
u2565:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2565

	line	74
	
l1413:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l2634
u2570:
	goto	l2642
	
l1415:	
	line	75
	goto	l2642
	
l1417:	
	line	76
	
l2640:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2585:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2585
	goto	l2642
	line	78
	
l1416:	
	line	75
	
l2642:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l2640
u2590:
	
l1418:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l1419
u2600:
	line	80
	
l2644:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l1419:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l2646:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2615:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2610:
	addlw	-1
	skipz
	goto	u2615
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l2648:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2620
	goto	l1420
u2620:
	line	84
	
l2650:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1420:	
	line	85
	line	86
	
l1409:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
psect	text253,local,class=CODE,delta=2
global __ptext253
__ptext253:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
