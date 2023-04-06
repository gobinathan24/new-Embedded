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
	FNCALL	_main,_on
	FNCALL	_main,_type
	FNCALL	_main,_address
	FNCALL	_main,_display
	FNCALL	_display,_pulse
	FNCALL	_address,_pulse
	FNCALL	_on,_pulse
	FNCALL	_type,_pulse
	FNROOT	_main
	global	_PORTA
psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
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
	file	"keypad calculator.as"
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
	global	?_address
?_address:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	2
	global	??_type
??_type:	; 0 bytes @ 0x2
	global	??_on
??_on:	; 0 bytes @ 0x2
	global	??_address
??_address:	; 0 bytes @ 0x2
	global	?_display
?_display:	; 0 bytes @ 0x2
	global	display@a
display@a:	; 2 bytes @ 0x2
	ds	2
	global	??_display
??_display:	; 0 bytes @ 0x4
	global	??_main
??_main:	; 0 bytes @ 0x4
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_display
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
;; (0) _main                                                 0     0      0      15
;;                                 _on
;;                               _type
;;                            _address
;;                            _display
;; ---------------------------------------------------------------------------------
;; (1) _display                                              2     0      2      15
;;                                              2 COMMON     2     0      2
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _address                                              0     0      0       0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _on                                                   0     0      0       0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _type                                                 0     0      0       0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) _pulse                                                2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _on
;;     _pulse
;;   _type
;;     _pulse
;;   _address
;;     _pulse
;;   _display
;;     _pulse
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
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
;;		line 35 in file "D:\New folder\keypad calculator.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_on
;;		_type
;;		_address
;;		_display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\New folder\keypad calculator.c"
	line	35
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l2222:	
;keypad calculator.c: 36: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	37
;keypad calculator.c: 37: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	38
	
l2224:	
;keypad calculator.c: 38: TRISC=0X78;
	movlw	(078h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	39
	
l2226:	
;keypad calculator.c: 39: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	40
	
l2228:	
;keypad calculator.c: 40: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	41
	
l2230:	
;keypad calculator.c: 41: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	42
	
l2232:	
;keypad calculator.c: 42: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	43
	
l2234:	
;keypad calculator.c: 43: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	44
	
l2236:	
;keypad calculator.c: 44: on();
	fcall	_on
	line	45
	
l2238:	
;keypad calculator.c: 45: type();
	fcall	_type
	goto	l2240
	line	46
;keypad calculator.c: 46: while(1)
	
l1042:	
	line	48
	
l2240:	
;keypad calculator.c: 47: {
;keypad calculator.c: 48: RC1=0;RC2=0;RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	
l2242:	
	bcf	(58/8),(58)&7
	
l2244:	
	bsf	(56/8),(56)&7
	line	49
	
l2246:	
;keypad calculator.c: 49: if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l2250
u2140:
	line	51
	
l2248:	
;keypad calculator.c: 50: {
;keypad calculator.c: 51: address();
	fcall	_address
	line	52
;keypad calculator.c: 52: display(0x31);
	movlw	low(031h)
	movwf	(?_display)
	movlw	high(031h)
	movwf	((?_display))+1
	fcall	_display
	goto	l2250
	line	53
	
l1043:	
	line	54
	
l2250:	
;keypad calculator.c: 53: }
;keypad calculator.c: 54: if(RC4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l2254
u2150:
	line	56
	
l2252:	
;keypad calculator.c: 55: {
;keypad calculator.c: 56: address();
	fcall	_address
	line	57
;keypad calculator.c: 57: display(0x34);
	movlw	low(034h)
	movwf	(?_display)
	movlw	high(034h)
	movwf	((?_display))+1
	fcall	_display
	goto	l2254
	line	58
	
l1044:	
	line	59
	
l2254:	
;keypad calculator.c: 58: }
;keypad calculator.c: 59: if(RC5==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(61/8),(61)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l2258
u2160:
	line	61
	
l2256:	
;keypad calculator.c: 60: {
;keypad calculator.c: 61: address();
	fcall	_address
	line	62
;keypad calculator.c: 62: display(0x37);
	movlw	low(037h)
	movwf	(?_display)
	movlw	high(037h)
	movwf	((?_display))+1
	fcall	_display
	goto	l2258
	line	63
	
l1045:	
	line	64
	
l2258:	
;keypad calculator.c: 63: }
;keypad calculator.c: 64: if(RC6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(62/8),(62)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l2262
u2170:
	line	66
	
l2260:	
;keypad calculator.c: 65: {
;keypad calculator.c: 66: address();
	fcall	_address
	line	67
;keypad calculator.c: 67: display(0x2a);
	movlw	low(02Ah)
	movwf	(?_display)
	movlw	high(02Ah)
	movwf	((?_display))+1
	fcall	_display
	goto	l2262
	line	68
	
l1046:	
	line	69
	
l2262:	
;keypad calculator.c: 68: }
;keypad calculator.c: 69: RC0=0;RC2=0;RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	
l2264:	
	bcf	(58/8),(58)&7
	
l2266:	
	bsf	(57/8),(57)&7
	line	70
	
l2268:	
;keypad calculator.c: 70: if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l2272
u2180:
	line	72
	
l2270:	
;keypad calculator.c: 71: {
;keypad calculator.c: 72: address();
	fcall	_address
	line	73
;keypad calculator.c: 73: display(0x32);
	movlw	low(032h)
	movwf	(?_display)
	movlw	high(032h)
	movwf	((?_display))+1
	fcall	_display
	goto	l2272
	line	74
	
l1047:	
	line	75
	
l2272:	
;keypad calculator.c: 74: }
;keypad calculator.c: 75: if(RC4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l2276
u2190:
	line	77
	
l2274:	
;keypad calculator.c: 76: {
;keypad calculator.c: 77: address();
	fcall	_address
	line	78
;keypad calculator.c: 78: display(0x35);
	movlw	low(035h)
	movwf	(?_display)
	movlw	high(035h)
	movwf	((?_display))+1
	fcall	_display
	goto	l2276
	line	79
	
l1048:	
	line	80
	
l2276:	
;keypad calculator.c: 79: }
;keypad calculator.c: 80: if(RC5==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(61/8),(61)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l2280
u2200:
	line	82
	
l2278:	
;keypad calculator.c: 81: {
;keypad calculator.c: 82: address();
	fcall	_address
	line	83
;keypad calculator.c: 83: display(0x38);
	movlw	low(038h)
	movwf	(?_display)
	movlw	high(038h)
	movwf	((?_display))+1
	fcall	_display
	goto	l2280
	line	84
	
l1049:	
	line	85
	
l2280:	
;keypad calculator.c: 84: }
;keypad calculator.c: 85: if(RC6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(62/8),(62)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l2284
u2210:
	line	87
	
l2282:	
;keypad calculator.c: 86: {
;keypad calculator.c: 87: address();
	fcall	_address
	line	88
;keypad calculator.c: 88: display(0x30);
	movlw	low(030h)
	movwf	(?_display)
	movlw	high(030h)
	movwf	((?_display))+1
	fcall	_display
	goto	l2284
	line	89
	
l1050:	
	line	90
	
l2284:	
;keypad calculator.c: 89: }
;keypad calculator.c: 90: RC1=0;RC0=0;RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	
l2286:	
	bcf	(56/8),(56)&7
	
l2288:	
	bsf	(58/8),(58)&7
	line	91
	
l2290:	
;keypad calculator.c: 91: if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l2294
u2220:
	line	93
	
l2292:	
;keypad calculator.c: 92: {
;keypad calculator.c: 93: address();
	fcall	_address
	line	94
;keypad calculator.c: 94: display(0x33);
	movlw	low(033h)
	movwf	(?_display)
	movlw	high(033h)
	movwf	((?_display))+1
	fcall	_display
	goto	l2294
	line	95
	
l1051:	
	line	96
	
l2294:	
;keypad calculator.c: 95: }
;keypad calculator.c: 96: if(RC4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l2298
u2230:
	line	98
	
l2296:	
;keypad calculator.c: 97: {
;keypad calculator.c: 98: address();
	fcall	_address
	line	99
;keypad calculator.c: 99: display(0x36);
	movlw	low(036h)
	movwf	(?_display)
	movlw	high(036h)
	movwf	((?_display))+1
	fcall	_display
	goto	l2298
	line	100
	
l1052:	
	line	101
	
l2298:	
;keypad calculator.c: 100: }
;keypad calculator.c: 101: if(RC5==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(61/8),(61)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l2302
u2240:
	line	103
	
l2300:	
;keypad calculator.c: 102: {
;keypad calculator.c: 103: address();
	fcall	_address
	line	104
;keypad calculator.c: 104: display(0x39);
	movlw	low(039h)
	movwf	(?_display)
	movlw	high(039h)
	movwf	((?_display))+1
	fcall	_display
	goto	l2302
	line	105
	
l1053:	
	line	106
	
l2302:	
;keypad calculator.c: 105: }
;keypad calculator.c: 106: if(RC6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(62/8),(62)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l2240
u2250:
	line	108
	
l2304:	
;keypad calculator.c: 107: {
;keypad calculator.c: 108: address();
	fcall	_address
	line	109
;keypad calculator.c: 109: display(0x23);
	movlw	low(023h)
	movwf	(?_display)
	movlw	high(023h)
	movwf	((?_display))+1
	fcall	_display
	goto	l2240
	line	110
	
l1054:	
	goto	l2240
	line	111
	
l1055:	
	line	46
	goto	l2240
	
l1056:	
	line	112
	
l1057:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_display
psect	text109,local,class=CODE,delta=2
global __ptext109
__ptext109:

;; *************** function _display *****************
;; Defined at:
;;		line 29 in file "D:\New folder\keypad calculator.c"
;; Parameters:    Size  Location     Type
;;  a               2    2[COMMON] int 
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
psect	text109
	file	"D:\New folder\keypad calculator.c"
	line	29
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 6
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2216:	
;keypad calculator.c: 30: RB0=1;RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	line	31
	
l2218:	
;keypad calculator.c: 31: PORTA=a;
	movf	(display@a),w
	movwf	(5)	;volatile
	line	32
	
l2220:	
;keypad calculator.c: 32: pulse();
	fcall	_pulse
	line	33
	
l1039:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_address
psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:

;; *************** function _address *****************
;; Defined at:
;;		line 23 in file "D:\New folder\keypad calculator.c"
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
psect	text110
	file	"D:\New folder\keypad calculator.c"
	line	23
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 6
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l2210:	
;keypad calculator.c: 24: RB0=0;RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	line	25
	
l2212:	
;keypad calculator.c: 25: PORTA=0X80;
	movlw	(080h)
	movwf	(5)	;volatile
	line	26
	
l2214:	
;keypad calculator.c: 26: pulse();
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
psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:

;; *************** function _on *****************
;; Defined at:
;;		line 17 in file "D:\New folder\keypad calculator.c"
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
psect	text111
	file	"D:\New folder\keypad calculator.c"
	line	17
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 6
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l2204:	
;keypad calculator.c: 18: RB0=0;RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	line	19
	
l2206:	
;keypad calculator.c: 19: PORTA=0X0E;
	movlw	(0Eh)
	movwf	(5)	;volatile
	line	20
	
l2208:	
;keypad calculator.c: 20: pulse();
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
psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:

;; *************** function _type *****************
;; Defined at:
;;		line 11 in file "D:\New folder\keypad calculator.c"
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
psect	text112
	file	"D:\New folder\keypad calculator.c"
	line	11
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 6
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l2198:	
;keypad calculator.c: 12: RB0=0;RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	line	13
	
l2200:	
;keypad calculator.c: 13: PORTA=0X30;
	movlw	(030h)
	movwf	(5)	;volatile
	line	14
	
l2202:	
;keypad calculator.c: 14: pulse();
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
psect	text113,local,class=CODE,delta=2
global __ptext113
__ptext113:

;; *************** function _pulse *****************
;; Defined at:
;;		line 4 in file "D:\New folder\keypad calculator.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
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
psect	text113
	file	"D:\New folder\keypad calculator.c"
	line	4
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 6
; Regs used in _pulse: [wreg]
	line	5
	
l2192:	
;keypad calculator.c: 5: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	6
	
l2194:	
;keypad calculator.c: 6: _delay((unsigned long)((1000)*(400000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_pulse+0)+0+1),f
	movlw	221
movwf	((??_pulse+0)+0),f
u2267:
	decfsz	((??_pulse+0)+0),f
	goto	u2267
	decfsz	((??_pulse+0)+0+1),f
	goto	u2267
	nop2
opt asmopt_on

	line	7
	
l2196:	
;keypad calculator.c: 7: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	8
;keypad calculator.c: 8: _delay((unsigned long)((1000)*(400000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_pulse+0)+0+1),f
	movlw	221
movwf	((??_pulse+0)+0),f
u2277:
	decfsz	((??_pulse+0)+0),f
	goto	u2277
	decfsz	((??_pulse+0)+0+1),f
	goto	u2277
	nop2
opt asmopt_on

	line	9
	
l1027:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
